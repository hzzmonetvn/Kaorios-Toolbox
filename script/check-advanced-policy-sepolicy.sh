#!/usr/bin/env bash
# Inspection helper for Android 17 Kaorios Advanced Policy SELinux deployment.
# Can inspect a live device (root required) or an unpacked ROM filesystem tree.
set -euo pipefail

TARGET_ROOT="/"

usage() {
    cat <<'EOF'
Usage: check-advanced-policy-sepolicy.sh [--root /path/to/extracted/rom]

Inspects SELinux policy, service_contexts files, and SettingsProvider domain
for the kaorios_advanced_policy Binder service. Does not mutate the system.
EOF
}

while (($#)); do
    case "$1" in
        --root) TARGET_ROOT=$2; shift 2 ;;
        -h|--help) usage; exit 0 ;;
        *) echo "Unknown argument: $1" >&2; usage >&2; exit 2 ;;
    esac
done

echo "============================================================"
echo "Kaorios Advanced Policy SELinux Deployment Inspector"
echo "Target Root: $TARGET_ROOT"
echo "============================================================"

# 1. Check SELinux Enforcing Status (if inspecting live device)
SELINUX_STATUS="UNKNOWN"
if [[ "$TARGET_ROOT" == "/" ]] && command -v getenforce >/dev/null 2>&1; then
    SELINUX_STATUS=$(getenforce || true)
fi
echo "SELINUX = $SELINUX_STATUS"

# 2. Check SettingsProvider process domain (if inspecting live device)
SETTINGS_DOMAIN="UNKNOWN"
if [[ "$TARGET_ROOT" == "/" ]] && command -v ps >/dev/null 2>&1; then
    PS_LINE=$(ps -AZ 2>/dev/null | grep "com.android.providers.settings" | head -n 1 || true)
    if [[ -n "$PS_LINE" ]]; then
        SETTINGS_DOMAIN=$(echo "$PS_LINE" | awk '{print $1}')
    fi
fi
echo "SETTINGS_PROVIDER_DOMAIN = $SETTINGS_DOMAIN"

# 3. Inspect candidate service_contexts files
CANDIDATE_FILES=(
    "$TARGET_ROOT/system/etc/selinux/plat_service_contexts"
    "$TARGET_ROOT/system_ext/etc/selinux/system_ext_service_contexts"
    "$TARGET_ROOT/product/etc/selinux/product_service_contexts"
    "$TARGET_ROOT/vendor/etc/selinux/vendor_service_contexts"
    "$TARGET_ROOT/etc/selinux/plat_service_contexts"
)

FOUND_MAPPING=0
FOUND_FILE=""

for f in "${CANDIDATE_FILES[@]}"; do
    if [[ -f "$f" ]]; then
        if grep -qE "^kaorios_advanced_policy\s+" "$f" 2>/dev/null; then
            FOUND_MAPPING=1
            FOUND_FILE="$f"
            break
        fi
    fi
done

# Fallback find if candidate paths missed
if [[ "$FOUND_MAPPING" -eq 0 && -d "$TARGET_ROOT" ]]; then
    MATCH=$(grep -rnE "^kaorios_advanced_policy\s+" "$TARGET_ROOT" 2>/dev/null | grep "service_contexts" | head -n 1 || true)
    if [[ -n "$MATCH" ]]; then
        FOUND_MAPPING=1
        FOUND_FILE=$(echo "$MATCH" | cut -d: -f1)
    fi
fi

if [[ "$FOUND_MAPPING" -eq 1 ]]; then
    echo "SERVICE_CONTEXT_MAPPING = FOUND (in $FOUND_FILE)"
else
    echo "SERVICE_CONTEXT_MAPPING = MISSING"
fi

# 4. Check ServiceManager availability (if inspecting live device)
if [[ "$TARGET_ROOT" == "/" ]] && command -v service >/dev/null 2>&1; then
    CHECK_OUTPUT=$(service check kaorios_advanced_policy 2>&1 || true)
    if echo "$CHECK_OUTPUT" | grep -qi "found"; then
        echo "SERVICE_MANAGER_REGISTRATION = FOUND"
    else
        echo "SERVICE_MANAGER_REGISTRATION = NOT_FOUND"
    fi
fi

echo "============================================================"
if [[ "$FOUND_MAPPING" -eq 1 ]]; then
    echo "Summary: service_contexts mapping verified."
    exit 0
else
    echo "Summary: kaorios_advanced_policy is missing from service_contexts."
    echo "Service registration will fail under SELinux Enforcing without this entry."
    exit 1
fi
