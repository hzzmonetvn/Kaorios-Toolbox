#!/usr/bin/env bash
# Fail-closed deployment-complete framework.jar patch pipeline for Android 17.
set -euo pipefail

TASK_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
TASK_INPUT=
TASK_OUTPUT=
TASK_KAORIOS_DEX=
TASK_BAKSMALI=
TASK_SMALI=
TASK_API=37
TASK_SMALI_API=
TASK_UPDATE=()

usage() {
    cat <<'EOF'
Usage: patch-framework-a17-artifact.sh --input framework.jar --output framework-patched.jar \
    --kaorios-dex classes.dex --baksmali baksmali.jar --smali smali.jar \
    [--api 37] [--smali-api 37] [--update]

The input JAR must contain classes*.dex. Only caller/payload owner DEXes are rebuilt.
Exact incoming payload descriptors replace their old definitions; other classes are retained.
Untouched DEXes remain byte-identical. The candidate JAR is re-extracted and verified.
--smali-api explicitly selects a different opcode API; no implicit downgrade is applied.
EOF
}

while (($#)); do
    case "$1" in
        --input) TASK_INPUT=$2; shift 2 ;;
        --output) TASK_OUTPUT=$2; shift 2 ;;
        --kaorios-dex) TASK_KAORIOS_DEX=$2; shift 2 ;;
        --baksmali) TASK_BAKSMALI=$2; shift 2 ;;
        --smali) TASK_SMALI=$2; shift 2 ;;
        --api) TASK_API=$2; shift 2 ;;
        --smali-api) TASK_SMALI_API=$2; shift 2 ;;
        --update) TASK_UPDATE=(--update); shift ;;
        -h|--help) usage; exit 0 ;;
        *) echo "Unknown argument: $1" >&2; usage >&2; exit 2 ;;
    esac
done

for TASK_REQUIRED in "$TASK_INPUT" "$TASK_OUTPUT" "$TASK_KAORIOS_DEX" "$TASK_BAKSMALI" "$TASK_SMALI"; do
    if [[ -z "$TASK_REQUIRED" ]]; then
        usage >&2
        exit 2
    fi
done
test -f "$TASK_INPUT"
test -f "$TASK_KAORIOS_DEX"
test -f "$TASK_BAKSMALI"
test -f "$TASK_SMALI"
if [[ $(realpath -m -- "$TASK_INPUT") == $(realpath -m -- "$TASK_OUTPUT") ]] || [[ -e "$TASK_OUTPUT" && "$TASK_INPUT" -ef "$TASK_OUTPUT" ]]; then
    echo "Input and output must be different files." >&2
    exit 2
fi

TASK_SMALI_API=${TASK_SMALI_API:-$TASK_API}
if [[ ! "$TASK_API" =~ ^[1-9][0-9]*$ || ! "$TASK_SMALI_API" =~ ^[1-9][0-9]*$ ]]; then
    echo "API levels must be positive integers." >&2
    exit 2
fi
printf 'Target API: %s; smali opcode API: %s\n' "$TASK_API" "$TASK_SMALI_API"

run_baksmali() {
    local dex=$1 out_dir=$2
    if java -jar "$TASK_BAKSMALI" --version >/dev/null 2>&1; then
        java -jar "$TASK_BAKSMALI" disassemble "$dex" --api "$TASK_SMALI_API" --output "$out_dir"
    else
        local lib_dir
        lib_dir=$(dirname "$TASK_BAKSMALI")
        local cp="$TASK_BAKSMALI:$lib_dir/smali-dexlib2.jar:$lib_dir/smali-util.jar:$lib_dir/antlr-runtime.jar:$lib_dir/jcommander.jar:$lib_dir/guava.jar"
        java -cp "$cp" com.android.tools.smali.baksmali.Main disassemble "$dex" --api "$TASK_SMALI_API" --output "$out_dir"
    fi
}

run_smali() {
    local smali_dir=$1 out_dex=$2
    if java -jar "$TASK_SMALI" --version >/dev/null 2>&1; then
        java -jar "$TASK_SMALI" assemble "$smali_dir" --api "$TASK_SMALI_API" --output "$out_dex"
    else
        local lib_dir
        lib_dir=$(dirname "$TASK_SMALI")
        local cp="$TASK_SMALI:$lib_dir/smali-dexlib2.jar:$lib_dir/smali-util.jar:$lib_dir/antlr-runtime.jar:$lib_dir/jcommander.jar:$lib_dir/guava.jar"
        java -cp "$cp" com.android.tools.smali.smali.Main assemble "$smali_dir" --api "$TASK_SMALI_API" --output "$out_dex"
    fi
}

TASK_WORK=$(mktemp -d /tmp/kaorios-framework-a17.XXXXXX)
trap 'rm -rf -- "$TASK_WORK"' EXIT
TASK_UNPACKED="$TASK_WORK/unpacked"
TASK_KAORIOS_SMALI="$TASK_WORK/kaorios_smali"
TASK_VERIFY_ROOT="$TASK_WORK/verify"
mkdir -p "$TASK_UNPACKED" "$TASK_KAORIOS_SMALI" "$TASK_VERIFY_ROOT"

# 1. Validate Kaorios DEX before merge
run_baksmali "$TASK_KAORIOS_DEX" "$TASK_KAORIOS_SMALI"
python3 -I "$TASK_DIR/patch-framework-a17-plan.py" validate-kaorios-smali "$TASK_KAORIOS_SMALI"

# 2. Unpack framework.jar
unzip -q "$TASK_INPUT" -d "$TASK_UNPACKED"

# 3. Plan patch: discover ActivityThread owner, KaoriosHook slot, and snapshot before hashes
TASK_PLAN_OUTPUT="$TASK_WORK/plan.txt"
TASK_HASHES_JSON="$TASK_WORK/before_hashes.json"
python3 -I "$TASK_DIR/patch-framework-a17-plan.py" plan "$TASK_UNPACKED" \
    --kaorios-dex "$TASK_KAORIOS_DEX" --require-all-callers --save-hashes "$TASK_HASHES_JSON" \
    --save-plan "$TASK_WORK/plan.json" > "$TASK_PLAN_OUTPUT"

TASK_OWNER_DEX=$(grep '^OWNER_DEX=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_KAORIOS_SLOT=$(grep '^KAORIOS_SLOT=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_KAORIOS_ACTION=$(grep '^KAORIOS_ACTION=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)

if [[ -z "$TASK_OWNER_DEX" || -z "$TASK_KAORIOS_SLOT" ]]; then
    echo "Failed to plan framework patch" >&2
    exit 1
fi

# 4. Decode each affected owner once, including payload classes spread over DEXes.
TASK_MODIFIED_DEXES=$(grep '^MODIFIED_DEXES=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
IFS=',' read -r -a TASK_DEXES <<< "$TASK_MODIFIED_DEXES"
TASK_TREES="$TASK_WORK/trees"
mkdir -p "$TASK_TREES"
for TASK_DEX in "${TASK_DEXES[@]}"; do
    mkdir -p "$TASK_TREES/$TASK_DEX"
    if [[ -f "$TASK_UNPACKED/$TASK_DEX" ]]; then
        run_baksmali "$TASK_UNPACKED/$TASK_DEX" "$TASK_TREES/$TASK_DEX"
    fi
done

# 5. Replace exact incoming descriptors only, then patch the caller.
python3 -I "$TASK_DIR/patch-framework-a17-plan.py" import-payload "$TASK_WORK/plan.json" "$TASK_TREES" "$TASK_KAORIOS_SMALI"
python3 -I "$TASK_DIR/patch-framework-a17-smali.py" "$TASK_TREES" "${TASK_UPDATE[@]}"

# 6. Assemble every affected owner and verify exact retained/payload inventories.
for TASK_DEX in "${TASK_DEXES[@]}"; do
    TASK_REBUILT_DEX="$TASK_WORK/$TASK_DEX"
    run_smali "$TASK_TREES/$TASK_DEX" "$TASK_REBUILT_DEX"
    test -s "$TASK_REBUILT_DEX"
    mv "$TASK_REBUILT_DEX" "$TASK_UNPACKED/$TASK_DEX"
done
python3 -I "$TASK_DIR/patch-framework-a17-plan.py" verify-plan "$TASK_WORK/plan.json" "$TASK_UNPACKED"

# 9. Pack candidate patched framework JAR in temporary workspace
TASK_CANDIDATE="$TASK_WORK/framework-candidate.jar"
(cd "$TASK_UNPACKED" && zip -q -0 -r "$TASK_CANDIDATE" .)
unzip -tq "$TASK_CANDIDATE"

# 10. Final artifact verification on candidate JAR: disassemble relevant DEXes and check caller + callee
mkdir -p "$TASK_VERIFY_ROOT/jar" "$TASK_VERIFY_ROOT/smali"
unzip -q "$TASK_CANDIDATE" -d "$TASK_VERIFY_ROOT/jar"

python3 -I "$TASK_DIR/patch-framework-a17-plan.py" verify-plan "$TASK_WORK/plan.json" "$TASK_VERIFY_ROOT/jar"
for TASK_DEX in "${TASK_DEXES[@]}"; do
    run_baksmali "$TASK_VERIFY_ROOT/jar/$TASK_DEX" "$TASK_VERIFY_ROOT/smali/$TASK_DEX"
done

python3 -I "$TASK_DIR/verify-framework-a17-hooks.py" "$TASK_VERIFY_ROOT/smali"
python3 -I "$TASK_DIR/verify-payload-abi.py" "$TASK_VERIFY_ROOT/smali" \
    --payload-smali "$TASK_KAORIOS_SMALI"

# 11. Publish verified artifact ONLY after all verifications pass
TASK_OUTPUT_ABS=$(realpath -m "$TASK_OUTPUT")
python3 -I "$TASK_DIR/publish-verified-artifact.py" "$TASK_CANDIDATE" "$TASK_OUTPUT_ABS"
echo "patched and artifact-verified $TASK_OUTPUT_ABS (ActivityThread: $TASK_OWNER_DEX, KaoriosHook: $TASK_KAORIOS_SLOT, action: $TASK_KAORIOS_ACTION)"
