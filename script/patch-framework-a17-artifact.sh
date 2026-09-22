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

usage() {
    cat <<'EOF'
Usage: patch-framework-a17-artifact.sh --input framework.jar --output framework-patched.jar \
    --kaorios-dex classes.dex --baksmali baksmali.jar --smali smali.jar [--api 37]

The input JAR must contain classes*.dex. The script validates the supplied Kaorios DEX,
disassembles ONLY the DEX defining android/app/ActivityThread, patches the process hook,
reassembles ONLY that DEX, inserts/replaces the Kaorios DEX, verifies all untouched
DEXes are byte-identical, and runs full caller/callee verification on the reassembled output.
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
test "$TASK_INPUT" != "$TASK_OUTPUT"

TASK_WORK=$(mktemp -d /tmp/kaorios-framework-a17.XXXXXX)
trap 'rm -rf -- "$TASK_WORK"' EXIT
TASK_UNPACKED="$TASK_WORK/unpacked"
TASK_KAORIOS_SMALI="$TASK_WORK/kaorios_smali"
TASK_OWNER_SMALI="$TASK_WORK/owner_smali"
TASK_VERIFY_ROOT="$TASK_WORK/verify"
mkdir -p "$TASK_UNPACKED" "$TASK_KAORIOS_SMALI" "$TASK_OWNER_SMALI" "$TASK_VERIFY_ROOT"

# 1. Validate Kaorios DEX before merge
java -jar "$TASK_BAKSMALI" disassemble "$TASK_KAORIOS_DEX" --api "$TASK_API" --output "$TASK_KAORIOS_SMALI"
python "$TASK_DIR/patch-framework-a17-plan.py" validate-kaorios-smali "$TASK_KAORIOS_SMALI"

# 2. Unpack framework.jar
unzip -q "$TASK_INPUT" -d "$TASK_UNPACKED"

# 3. Plan patch: discover ActivityThread owner, KaoriosHook slot, and snapshot before hashes
TASK_PLAN_OUTPUT="$TASK_WORK/plan.txt"
TASK_HASHES_JSON="$TASK_WORK/before_hashes.json"
python "$TASK_DIR/patch-framework-a17-plan.py" plan "$TASK_UNPACKED" --save-hashes "$TASK_HASHES_JSON" > "$TASK_PLAN_OUTPUT"

TASK_OWNER_DEX=$(grep '^OWNER_DEX=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_KAORIOS_SLOT=$(grep '^KAORIOS_SLOT=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
TASK_KAORIOS_ACTION=$(grep '^KAORIOS_ACTION=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)

if [[ -z "$TASK_OWNER_DEX" || -z "$TASK_KAORIOS_SLOT" ]]; then
    echo "Failed to plan framework patch" >&2
    exit 1
fi

# 4. Disassemble ONLY ActivityThread owner DEX
java -jar "$TASK_BAKSMALI" disassemble "$TASK_UNPACKED/$TASK_OWNER_DEX" --api "$TASK_API" --output "$TASK_OWNER_SMALI"

# 5. Patch ActivityThread smali
python "$TASK_DIR/patch-framework-a17-smali.py" "$TASK_OWNER_SMALI"

# 6. Reassemble ONLY ActivityThread owner DEX
TASK_NEW_OWNER_DEX="$TASK_WORK/$TASK_OWNER_DEX"
java -jar "$TASK_SMALI" assemble "$TASK_OWNER_SMALI" --api "$TASK_API" --output "$TASK_NEW_OWNER_DEX"
test -s "$TASK_NEW_OWNER_DEX"
mv "$TASK_NEW_OWNER_DEX" "$TASK_UNPACKED/$TASK_OWNER_DEX"

# 7. Apply Kaorios DEX (replace existing or append to next slot)
cp "$TASK_KAORIOS_DEX" "$TASK_UNPACKED/$TASK_KAORIOS_SLOT"

# 8. Assert all untouched DEX files are byte-for-byte identical
python "$TASK_DIR/patch-framework-a17-plan.py" verify-untouched "$TASK_HASHES_JSON" "$TASK_UNPACKED" "$TASK_OWNER_DEX" "$TASK_KAORIOS_SLOT"

# 9. Pack candidate patched framework JAR in temporary workspace
TASK_CANDIDATE="$TASK_WORK/framework-candidate.jar"
(cd "$TASK_UNPACKED" && zip -q -0 -r "$TASK_CANDIDATE" .)
unzip -tq "$TASK_CANDIDATE"

# 10. Final artifact verification on candidate JAR: disassemble relevant DEXes and check caller + callee
mkdir -p "$TASK_VERIFY_ROOT/jar" "$TASK_VERIFY_ROOT/smali"
unzip -q "$TASK_CANDIDATE" -d "$TASK_VERIFY_ROOT/jar"

java -jar "$TASK_BAKSMALI" disassemble "$TASK_VERIFY_ROOT/jar/$TASK_OWNER_DEX" \
    --api "$TASK_API" --output "$TASK_VERIFY_ROOT/smali/owner"
java -jar "$TASK_BAKSMALI" disassemble "$TASK_VERIFY_ROOT/jar/$TASK_KAORIOS_SLOT" \
    --api "$TASK_API" --output "$TASK_VERIFY_ROOT/smali/kaorios"

python "$TASK_DIR/verify-framework-a17-hooks.py" "$TASK_VERIFY_ROOT/smali"

# 11. Publish verified artifact ONLY after all verifications pass
TASK_OUTPUT_ABS=$(realpath -m "$TASK_OUTPUT")
python "$TASK_DIR/publish-verified-artifact.py" "$TASK_CANDIDATE" "$TASK_OUTPUT_ABS"
echo "patched and artifact-verified $TASK_OUTPUT_ABS (ActivityThread: $TASK_OWNER_DEX, KaoriosHook: $TASK_KAORIOS_SLOT, action: $TASK_KAORIOS_ACTION)"
