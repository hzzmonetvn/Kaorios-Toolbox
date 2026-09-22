#!/usr/bin/env bash
# Fail-closed SettingsProvider.apk patch pipeline for Android 17 per-app settings spoof.
set -euo pipefail

TASK_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
TASK_INPUT=
TASK_OUTPUT=
TASK_BAKSMALI=
TASK_SMALI=
TASK_API=37
TASK_PLATFORM_KEY=
TASK_PLATFORM_CERT=
TASK_UNSIGNED=0
TASK_VERIFY_ORIG_CERT=0
TASK_ALLOW_MISMATCHED_CERT=0

usage() {
    cat <<'EOF'
Usage: patch-settingsprovider-a17-artifact.sh --input SettingsProvider.apk --output SettingsProvider-patched.apk \
    --baksmali baksmali.jar --smali smali.jar [--api 37] [--unsigned-output] \
    [--platform-key platform.pk8 --platform-cert platform.x509.pem] [--verify-original-cert] [--allow-mismatched-cert]

The input APK must contain classes*.dex. The script disassembles ONLY the DEX defining
com/android/providers/settings/SettingsProvider, patches the call() GET hook,
reassembles ONLY that DEX, preserves all non-DEX assets/manifest, verifies all untouched
DEXes are byte-identical, and runs caller verification on the candidate output before atomic publish.

Signing modes:
  --unsigned-output: Outputs verified unsigned APK for ROM source buildtree integration.
  --platform-key / --platform-cert: Directly produces signed APK; requires matching original ROM platform certificate.
  --verify-original-cert: Explicitly asserts new signer certificate matches original APK platform certificate.
  --allow-mismatched-cert: Explicitly permits re-signing with different key (marks DEPLOYABLE SIGNED APK = NO).
EOF
}

while (($#)); do
    case "$1" in
        --input) TASK_INPUT=$2; shift 2 ;;
        --output) TASK_OUTPUT=$2; shift 2 ;;
        --baksmali) TASK_BAKSMALI=$2; shift 2 ;;
        --smali) TASK_SMALI=$2; shift 2 ;;
        --api) TASK_API=$2; shift 2 ;;
        --platform-key) TASK_PLATFORM_KEY=$2; shift 2 ;;
        --platform-cert) TASK_PLATFORM_CERT=$2; shift 2 ;;
        --unsigned-output) TASK_UNSIGNED=1; shift 1 ;;
        --verify-original-cert) TASK_VERIFY_ORIG_CERT=1; shift 1 ;;
        --allow-mismatched-cert) TASK_ALLOW_MISMATCHED_CERT=1; shift 1 ;;
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

# Require exactly one signing mode:
# MODE A: --unsigned-output
# MODE B: --platform-key <pk8> --platform-cert <x509.pem>
if [[ "$TASK_VERIFY_ORIG_CERT" -eq 1 && "$TASK_ALLOW_MISMATCHED_CERT" -eq 1 ]]; then
    echo "Error: --verify-original-cert cannot be combined with --allow-mismatched-cert" >&2
    exit 2
fi

if [[ "$TASK_UNSIGNED" -eq 1 ]]; then
    if [[ -n "$TASK_PLATFORM_KEY" || -n "$TASK_PLATFORM_CERT" ]]; then
        echo "Error: Cannot combine --unsigned-output with --platform-key or --platform-cert" >&2
        exit 2
    fi
    if [[ "$TASK_VERIFY_ORIG_CERT" -eq 1 ]]; then
        echo "Error: --verify-original-cert requires signed output mode" >&2
        exit 2
    fi
else
    if [[ -z "$TASK_PLATFORM_KEY" && -z "$TASK_PLATFORM_CERT" ]]; then
        echo "Error: Exactly one signing mode required: specify either --unsigned-output or both --platform-key and --platform-cert" >&2
        exit 2
    fi
    if [[ -z "$TASK_PLATFORM_KEY" || -z "$TASK_PLATFORM_CERT" ]]; then
        echo "Error: Both --platform-key and --platform-cert are required for signed output mode" >&2
        exit 2
    fi
fi
test -f "$TASK_INPUT"
test -f "$TASK_BAKSMALI"
test -f "$TASK_SMALI"
test "$TASK_INPUT" != "$TASK_OUTPUT"

TASK_WORK=$(mktemp -d /tmp/kaorios-settingsprovider-a17.XXXXXX)
trap 'rm -rf -- "$TASK_WORK"' EXIT
TASK_UNPACKED="$TASK_WORK/unpacked"
TASK_OWNER_SMALI="$TASK_WORK/owner_smali"
TASK_VERIFY_ROOT="$TASK_WORK/verify"
mkdir -p "$TASK_UNPACKED" "$TASK_OWNER_SMALI" "$TASK_VERIFY_ROOT"

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

# 1. Unpack SettingsProvider.apk
unzip -q "$TASK_INPUT" -d "$TASK_UNPACKED"

# 2. Plan patch: discover SettingsProvider owner and snapshot hashes
TASK_PLAN_OUTPUT="$TASK_WORK/plan.txt"
TASK_HASHES_JSON="$TASK_WORK/before_hashes.json"
python "$TASK_DIR/patch-dex-artifact-plan.py" plan "$TASK_UNPACKED" \
    "Lcom/android/providers/settings/SettingsProvider;" --save-hashes "$TASK_HASHES_JSON" > "$TASK_PLAN_OUTPUT"

TASK_OWNER_DEX=$(grep '^OWNER_DEX=' "$TASK_PLAN_OUTPUT" | cut -d= -f2)
if [[ -z "$TASK_OWNER_DEX" ]]; then
    echo "Failed to find SettingsProvider owner DEX" >&2
    exit 1
fi

# 3. Disassemble ONLY SettingsProvider owner DEX
run_baksmali "$TASK_UNPACKED/$TASK_OWNER_DEX" "$TASK_OWNER_SMALI"

# 4. Patch SettingsProvider smali
python "$TASK_DIR/patch-settingsprovider-a17.py" "$TASK_OWNER_SMALI/com/android/providers/settings/SettingsProvider.smali"
python "$TASK_DIR/verify-settingsprovider-a17-hooks.py" "$TASK_OWNER_SMALI"

# 5. Reassemble ONLY owner DEX
TASK_NEW_OWNER_DEX="$TASK_WORK/$TASK_OWNER_DEX"
run_smali "$TASK_OWNER_SMALI" "$TASK_NEW_OWNER_DEX"
test -s "$TASK_NEW_OWNER_DEX"
mv "$TASK_NEW_OWNER_DEX" "$TASK_UNPACKED/$TASK_OWNER_DEX"

# 6. Assert all untouched DEX files are byte-for-byte identical
python "$TASK_DIR/patch-dex-artifact-plan.py" verify-untouched "$TASK_HASHES_JSON" "$TASK_UNPACKED" "$TASK_OWNER_DEX"

# 7. Pack candidate patched SettingsProvider APK in temporary workspace.
# Strip only stale v1/JAR signature files; preserve unrelated META-INF entries.
if [[ -d "$TASK_UNPACKED/META-INF" ]]; then
    find "$TASK_UNPACKED/META-INF" -maxdepth 1 -type f \
        \( -name 'MANIFEST.MF' -o -name '*.SF' -o -name '*.RSA' -o -name '*.DSA' -o -name '*.EC' \) \
        -delete
    rmdir "$TASK_UNPACKED/META-INF" 2>/dev/null || true
fi
TASK_CANDIDATE="$TASK_WORK/settingsprovider-candidate.apk"
(cd "$TASK_UNPACKED" && zip -q -0 -r "$TASK_CANDIDATE" .)
unzip -tq "$TASK_CANDIDATE"

# 8. Re-disassemble candidate and verify caller hook
run_baksmali "$TASK_UNPACKED/$TASK_OWNER_DEX" "$TASK_VERIFY_ROOT"
python "$TASK_DIR/verify-settingsprovider-a17-hooks.py" "$TASK_VERIFY_ROOT"

# 9. Sign or report unsigned status
if [[ -n "$TASK_PLATFORM_KEY" && -n "$TASK_PLATFORM_CERT" ]]; then
    test -f "$TASK_PLATFORM_KEY"
    test -f "$TASK_PLATFORM_CERT"
    which zipalign >/dev/null 2>&1 || { echo "zipalign command required for signing" >&2; exit 1; }
    which apksigner >/dev/null 2>&1 || { echo "apksigner command required for signing" >&2; exit 1; }

    TASK_ALIGNED="$TASK_WORK/aligned.apk"
    zipalign -f -p 4 "$TASK_CANDIDATE" "$TASK_ALIGNED"
    apksigner sign --key "$TASK_PLATFORM_KEY" --cert "$TASK_PLATFORM_CERT" "$TASK_ALIGNED"

    TASK_ORIG_VERIFY_LOG="$TASK_WORK/orig_verify.log"
    ORIGINAL_SIGNER_STATUS="UNVERIFIABLE"
    if apksigner verify --verbose --print-certs "$TASK_INPUT" >"$TASK_ORIG_VERIFY_LOG" 2>&1; then
        ORIGINAL_SIGNER_STATUS="SIGNED_AND_VERIFIED"
    elif grep -qiE "no signature|does not have a signature|no manifest" "$TASK_ORIG_VERIFY_LOG"; then
        ORIGINAL_SIGNER_STATUS="UNSIGNED"
    else
        ORIGINAL_SIGNER_STATUS="UNVERIFIABLE"
    fi

    if [[ "$ORIGINAL_SIGNER_STATUS" == "SIGNED_AND_VERIFIED" ]]; then
        ORIG_CERT_DIGEST=$(grep -i "certificate SHA-256 digest:" "$TASK_ORIG_VERIFY_LOG" | awk '{print $NF}' | sort -u | tr '\n' ' ' | xargs || true)
    elif [[ "$ORIGINAL_SIGNER_STATUS" == "UNSIGNED" ]]; then
        ORIG_CERT_DIGEST="(none - input APK is unsigned)"
    else
        ORIG_CERT_DIGEST="(unverifiable - apksigner verify failed on input APK)"
    fi

    TASK_NEW_VERIFY_LOG="$TASK_WORK/new_verify.log"
    if apksigner verify --verbose --print-certs "$TASK_ALIGNED" >"$TASK_NEW_VERIFY_LOG" 2>&1; then
        NEW_CERT_DIGEST=$(grep -i "certificate SHA-256 digest:" "$TASK_NEW_VERIFY_LOG" | awk '{print $NF}' | sort -u | tr '\n' ' ' | xargs || true)
    else
        echo "Error: apksigner verify failed on newly signed APK:" >&2
        cat "$TASK_NEW_VERIFY_LOG" >&2
        exit 1
    fi

    echo "============================================================"
    echo "STATUS: ARTIFACT STRUCTURALLY VERIFIED"
    echo "Original APK Signer Status:     $ORIGINAL_SIGNER_STATUS"
    echo "Original Signer SHA-256 Digest: $ORIG_CERT_DIGEST"
    echo "New Signer SHA-256 Digest:      ${NEW_CERT_DIGEST:-unknown}"
    if [[ "$ORIGINAL_SIGNER_STATUS" == "SIGNED_AND_VERIFIED" && -n "$ORIG_CERT_DIGEST" && "$ORIG_CERT_DIGEST" == "$NEW_CERT_DIGEST" ]]; then
        echo "PLATFORM CERTIFICATE MATCH = YES"
        echo "DEPLOYABLE SIGNED APK = YES"
    else
        echo "PLATFORM CERTIFICATE MATCH = NO"
        echo "DEPLOYABLE SIGNED APK = NO"
        if [[ "$TASK_VERIFY_ORIG_CERT" -eq 1 ]]; then
            echo "Error: --verify-original-cert requested but signer certificates do not match." >&2
            exit 1
        elif [[ "$TASK_ALLOW_MISMATCHED_CERT" -eq 1 ]]; then
            echo "NOTICE: --allow-mismatched-cert specified; publishing signed artifact with mismatched signer."
        else
            echo "Error: Direct deployment signed mode requires matching original ROM platform certificate!" >&2
            echo "  Original: $ORIG_CERT_DIGEST (status: $ORIGINAL_SIGNER_STATUS)" >&2
            echo "  New:      $NEW_CERT_DIGEST" >&2
            echo "To permit re-signing with a different key for custom testing, pass --allow-mismatched-cert." >&2
            exit 1
        fi
    fi
    echo "============================================================"
    mv "$TASK_ALIGNED" "$TASK_CANDIDATE"
else
    echo "============================================================"
    echo "NOTICE: Unsigned output mode (no platform keys provided)"
    echo "STATUS: ARTIFACT STRUCTURALLY VERIFIED"
    echo "DEPLOYABLE SIGNED APK = NO"
    echo "This unsigned artifact is suitable for ROM source buildtree integration."
    echo "For direct device deployment, sign with ROM platform keys:"
    echo "  apksigner sign --key platform.pk8 --cert platform.x509.pem"
    echo "============================================================"
fi

# 10. Publish via destination-local staging
python "$TASK_DIR/publish-verified-artifact.py" "$TASK_CANDIDATE" "$TASK_OUTPUT"
echo "Successfully published verified Android 17 SettingsProvider.apk to $TASK_OUTPUT"
