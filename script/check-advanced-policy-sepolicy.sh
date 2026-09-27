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

FOUND_MAPPINGS=()
while IFS= read -r line; do
    if [[ -n "$line" ]]; then
        FOUND_MAPPINGS+=("$line")
    fi
done < <(grep -rnE "^kaorios_advanced_policy\s+" "${CANDIDATE_FILES[@]}" "$TARGET_ROOT" 2>/dev/null | grep "service_contexts" || true)

MAPPING_COUNT=${#FOUND_MAPPINGS[@]}
if [[ "$MAPPING_COUNT" -eq 0 ]]; then
    echo "SERVICE_CONTEXT_MAPPING = MISSING"
else
    # Parse unique contexts mapped
    UNIQUE_CONTEXTS=()
    while IFS= read -r ctx; do
        if [[ -n "$ctx" ]]; then
            UNIQUE_CONTEXTS+=("$ctx")
        fi
    done < <(printf '%s\n' "${FOUND_MAPPINGS[@]}" | awk '{print $NF}' | sort -u)

    if [[ ${#UNIQUE_CONTEXTS[@]} -gt 1 ]]; then
        echo "SERVICE_CONTEXT_MAPPING = CONFLICT (${#UNIQUE_CONTEXTS[@]} conflicting contexts found: ${UNIQUE_CONTEXTS[*]})"
    else
        PRIMARY_FILE=$(echo "${FOUND_MAPPINGS[0]}" | cut -d: -f1)
        PRIMARY_CTX="${UNIQUE_CONTEXTS[0]}"
        echo "SERVICE_CONTEXT_MAPPING = FOUND (in $PRIMARY_FILE -> $PRIMARY_CTX)"
    fi
fi

# 4. Inspect policy rules in CIL/sepolicy files
POLICY_TYPE_DEFINED="UNKNOWN"
SYSTEM_SERVER_ADD_ALLOWED="UNKNOWN"
SETTINGS_DOMAIN_FIND_ALLOWED="UNKNOWN"
BINDER_CALL_PATH_ALLOWED="UNKNOWN"

CIL_FILES=()
while IFS= read -r f; do
    if [[ -n "$f" ]]; then
        CIL_FILES+=("$f")
    fi
done < <(find "$TARGET_ROOT" -type f \( -name "*sepolicy*.cil" -o -name "*sepolicy" \) 2>/dev/null || true)

if [[ ${#CIL_FILES[@]} -gt 0 ]]; then
    if grep -q "kaorios_advanced_policy_service" "${CIL_FILES[@]}" 2>/dev/null; then
        POLICY_TYPE_DEFINED="YES"
    else
        POLICY_TYPE_DEFINED="NO"
    fi

    if grep -qE "allow\s+system_server\s+kaorios_advanced_policy_service.*(add|service_manager)" "${CIL_FILES[@]}" 2>/dev/null; then
        SYSTEM_SERVER_ADD_ALLOWED="YES"
    else
        SYSTEM_SERVER_ADD_ALLOWED="NO"
    fi

    if [[ "$SETTINGS_DOMAIN" != "UNKNOWN" ]]; then
        # Extract base domain (e.g. u:r:system_app:s0 -> system_app)
        CLEAN_DOMAIN=$(echo "$SETTINGS_DOMAIN" | sed -E 's/.*:r:([^:]+):.*/\1/')
        if grep -qE "allow\s+${CLEAN_DOMAIN}\s+kaorios_advanced_policy_service.*find" "${CIL_FILES[@]}" 2>/dev/null; then
            SETTINGS_DOMAIN_FIND_ALLOWED="YES (${CLEAN_DOMAIN})"
        else
            SETTINGS_DOMAIN_FIND_ALLOWED="NO (${CLEAN_DOMAIN})"
        fi

        if grep -qE "allow\s+${CLEAN_DOMAIN}\s+system_server.*binder" "${CIL_FILES[@]}" 2>/dev/null; then
            BINDER_CALL_PATH_ALLOWED="YES"
        else
            BINDER_CALL_PATH_ALLOWED="NO"
        fi
    fi
fi

echo "POLICY_TYPE_DEFINED = $POLICY_TYPE_DEFINED"
echo "SYSTEM_SERVER_ADD_ALLOWED = $SYSTEM_SERVER_ADD_ALLOWED"
echo "SETTINGS_DOMAIN_FIND_ALLOWED = $SETTINGS_DOMAIN_FIND_ALLOWED"
echo "BINDER_CALL_PATH_ALLOWED = $BINDER_CALL_PATH_ALLOWED"

# 5. Check ServiceManager availability (if inspecting live device)
if [[ "$TARGET_ROOT" == "/" ]] && command -v service >/dev/null 2>&1; then
    CHECK_OUTPUT=$(service check kaorios_advanced_policy 2>&1 || true)
    if echo "$CHECK_OUTPUT" | grep -qi "found"; then
        echo "SERVICE_MANAGER_REGISTRATION = FOUND"
    else
        echo "SERVICE_MANAGER_REGISTRATION = NOT_FOUND"
    fi
fi

# 6. Check AVC denials on live device
if [[ "$TARGET_ROOT" == "/" ]] && command -v dmesg >/dev/null 2>&1; then
    AVC_COUNT=$(dmesg 2>/dev/null | grep -ic "avc.*kaorios" || true)
    echo "AVC_DENIAL_COUNT = $AVC_COUNT"
fi

echo "============================================================"
if [[ "$MAPPING_COUNT" -gt 0 && "${UNIQUE_CONTEXTS[0]:-}" == *"kaorios_advanced_policy_service"* ]]; then
    echo "Summary: service_contexts mapping verified."
    exit 0
else
    echo "Summary: kaorios_advanced_policy is missing or invalid in service_contexts."
    echo "Service registration will fail under SELinux Enforcing without this entry."
    exit 1
fi
