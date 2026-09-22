#!/usr/bin/env bash
# Fail-closed services.jar patch pipeline for Android 17 ComputerEngine package visibility
# and SystemServer initSystemServer hook.
set -euo pipefail

TASK_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
TASK_INPUT=
TASK_OUTPUT=
TASK_BAKSMALI=
TASK_SMALI=
TASK_API=37

usage() {
    cat <<'EOF'
Usage: patch-services-a17-artifact.sh --input services.jar --output services-patched.jar \
    --baksmali baksmali.jar --smali smali.jar [--api 37]

The input JAR must contain classes*.dex. The script disassembles the DEXes defining
com/android/server/pm/ComputerEngine and com/android/server/SystemServer,
patches both hooks, reassembles modified DEXes, verifies all untouched DEXes are byte-identical,
and runs caller verification on candidate output before atomic publish.
EOF
}

while (($#)); do
    case "$1" in
        --input) TASK_INPUT=$2; shift 2 ;;
        --output) TASK_OUTPUT=$2; shift 2 ;;
        --baksmali) TASK_BAKSMALI=$2; shift 2 ;;
        --smali) TASK_SMALI=$2; shift 2 ;;
        --api) TASK_API=$2; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        *) echo "Unknown argument: $1" >&2; usage >&2; exit 2 ;;
    esac
done

for TASK_REQUIRED in "$TASK_INPUT" "$TASK_OUTPUT" "$TASK_BAKSMALI" "$TASK_SMALI"; do
    if [[ -z "$TASK_REQUIRED" ]]; then
        usage >&2
        exit 2
    fi
done
test -f "$TASK_INPUT"
test -f "$TASK_BAKSMALI"
test -f "$TASK_SMALI"
test "$TASK_INPUT" != "$TASK_OUTPUT"

run_baksmali() {
    local dex=$1 out_dir=$2
    if java -jar "$TASK_BAKSMALI" --version >/dev/null 2>&1; then
        java -jar "$TASK_BAKSMALI" disassemble "$dex" --api "$TASK_API" --output "$out_dir"
    else
        local lib_dir
        lib_dir=$(dirname "$TASK_BAKSMALI")
        local cp="$TASK_BAKSMALI:$lib_dir/smali-dexlib2.jar:$lib_dir/smali-util.jar:$lib_dir/antlr-runtime.jar:$lib_dir/jcommander.jar:$lib_dir/guava.jar"
        java -cp "$cp" com.android.tools.smali.baksmali.Main disassemble "$dex" --api "$TASK_API" --output "$out_dir"
    fi
}

run_smali() {
    local smali_dir=$1 out_dex=$2
    if java -jar "$TASK_SMALI" --version >/dev/null 2>&1; then
        java -jar "$TASK_SMALI" assemble "$smali_dir" --api "$TASK_API" --output "$out_dex"
    else
        local lib_dir
        lib_dir=$(dirname "$TASK_SMALI")
        local cp="$TASK_SMALI:$lib_dir/smali-dexlib2.jar:$lib_dir/smali-util.jar:$lib_dir/antlr-runtime.jar:$lib_dir/jcommander.jar:$lib_dir/guava.jar"
        java -cp "$cp" com.android.tools.smali.smali.Main assemble "$smali_dir" --api "$TASK_API" --output "$out_dex"
    fi
}

TASK_WORK=$(mktemp -d /tmp/kaorios-services-a17.XXXXXX)
trap 'rm -rf -- "$TASK_WORK"' EXIT
TASK_UNPACKED="$TASK_WORK/unpacked"
mkdir -p "$TASK_UNPACKED"

# 1. Unpack services.jar
unzip -q "$TASK_INPUT" -d "$TASK_UNPACKED"

# 2. Plan patch: discover ComputerEngine and SystemServer owner DEXes, snapshot hashes
TASK_PLAN_OUTPUT="$TASK_WORK/plan.txt"
TASK_HASHES_JSON="$TASK_WORK/before_hashes.json"
python "$TASK_DIR/patch-dex-artifact-plan.py" plan "$TASK_UNPACKED" \
    "Lcom/android/server/pm/ComputerEngine;" \
    "Lcom/android/server/SystemServer;" \
    --save-hashes "$TASK_HASHES_JSON" > "$TASK_PLAN_OUTPUT"

TASK_DEX_CE=$(grep '^OWNER_DEX_ComputerEngine=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_DEX_SS=$(grep '^OWNER_DEX_SystemServer=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_MODIFIED_DEXES=$(grep '^MODIFIED_DEXES=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)

if [[ -z "$TASK_DEX_CE" || -z "$TASK_DEX_SS" ]]; then
    echo "Failed to find owner DEXes for ComputerEngine or SystemServer" >&2
    exit 1
fi

if [[ "$TASK_DEX_CE" == "$TASK_DEX_SS" ]]; then
    # Both classes in the same owner DEX
    TASK_OWNER_SMALI="$TASK_WORK/owner_smali"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_CE" "$TASK_OWNER_SMALI"

    python "$TASK_DIR/patch-services-a17.py" "$TASK_OWNER_SMALI/com/android/server/pm/ComputerEngine.smali"
    python "$TASK_DIR/patch-systemserver-a17.py" "$TASK_OWNER_SMALI/com/android/server/SystemServer.smali"

    python "$TASK_DIR/verify-services-a17-hooks.py" "$TASK_OWNER_SMALI"
    python "$TASK_DIR/verify-systemserver-a17-hooks.py" "$TASK_OWNER_SMALI"

    TASK_NEW_DEX="$TASK_WORK/$TASK_DEX_CE"
    run_smali "$TASK_OWNER_SMALI" "$TASK_NEW_DEX"
    test -s "$TASK_NEW_DEX"
    mv "$TASK_NEW_DEX" "$TASK_UNPACKED/$TASK_DEX_CE"
else
    # Classes in distinct owner DEXes
    TASK_SMALI_CE="$TASK_WORK/smali_ce"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_CE" "$TASK_SMALI_CE"
    python "$TASK_DIR/patch-services-a17.py" "$TASK_SMALI_CE/com/android/server/pm/ComputerEngine.smali"
    python "$TASK_DIR/verify-services-a17-hooks.py" "$TASK_SMALI_CE"
    TASK_NEW_DEX_CE="$TASK_WORK/$TASK_DEX_CE"
    run_smali "$TASK_SMALI_CE" "$TASK_NEW_DEX_CE"
    test -s "$TASK_NEW_DEX_CE"
    mv "$TASK_NEW_DEX_CE" "$TASK_UNPACKED/$TASK_DEX_CE"

    TASK_SMALI_SS="$TASK_WORK/smali_ss"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_SS" "$TASK_SMALI_SS"
    python "$TASK_DIR/patch-systemserver-a17.py" "$TASK_SMALI_SS/com/android/server/SystemServer.smali"
    python "$TASK_DIR/verify-systemserver-a17-hooks.py" "$TASK_SMALI_SS"
    TASK_NEW_DEX_SS="$TASK_WORK/$TASK_DEX_SS"
    run_smali "$TASK_SMALI_SS" "$TASK_NEW_DEX_SS"
    test -s "$TASK_NEW_DEX_SS"
    mv "$TASK_NEW_DEX_SS" "$TASK_UNPACKED/$TASK_DEX_SS"
fi

# 6. Assert all untouched DEX files are byte-for-byte identical
python "$TASK_DIR/patch-dex-artifact-plan.py" verify-untouched "$TASK_HASHES_JSON" "$TASK_UNPACKED" "$TASK_MODIFIED_DEXES"

# 7. Pack candidate patched services JAR in temporary workspace
TASK_CANDIDATE="$TASK_WORK/services-candidate.jar"
(cd "$TASK_UNPACKED" && zip -q -0 -r "$TASK_CANDIDATE" .)
unzip -tq "$TASK_CANDIDATE"

# 8. Re-disassemble candidate and verify both caller hooks
if [[ "$TASK_DEX_CE" == "$TASK_DEX_SS" ]]; then
    TASK_VERIFY_ROOT="$TASK_WORK/verify"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_CE" "$TASK_VERIFY_ROOT"
    python "$TASK_DIR/verify-services-a17-hooks.py" "$TASK_VERIFY_ROOT"
    python "$TASK_DIR/verify-systemserver-a17-hooks.py" "$TASK_VERIFY_ROOT"
else
    TASK_VERIFY_CE="$TASK_WORK/verify_ce"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_CE" "$TASK_VERIFY_CE"
    python "$TASK_DIR/verify-services-a17-hooks.py" "$TASK_VERIFY_CE"

    TASK_VERIFY_SS="$TASK_WORK/verify_ss"
    run_baksmali "$TASK_UNPACKED/$TASK_DEX_SS" "$TASK_VERIFY_SS"
    python "$TASK_DIR/verify-systemserver-a17-hooks.py" "$TASK_VERIFY_SS"
fi

# 9. Publish via destination-local staging
python "$TASK_DIR/publish-verified-artifact.py" "$TASK_CANDIDATE" "$TASK_OUTPUT"
echo "Successfully published verified Android 17 services.jar to $TASK_OUTPUT"
