#!/usr/bin/env bash
# Read-only device diagnostic smoke test for Kaorios on Android 17.
# Can be run via adb shell on a device or directly in a local root shell.
set -euo pipefail

echo "============================================================"
echo "Kaorios Android 17 Read-Only Device Smoke Test"
echo "Date: $(date -u +"%Y-%m-%dT%H:%M:%SZ")"
echo "============================================================"

# 1. SELinux Mode
SELINUX_MODE="unknown"
if command -v getenforce >/dev/null 2>&1; then
    SELINUX_MODE=$(getenforce || true)
fi
echo "[1] SELinux Mode: $SELINUX_MODE"
if [[ "$SELINUX_MODE" == "Enforcing" ]]; then
    echo "    -> PASS (Enforcing mode active)"
else
    echo "    -> WARN (Expected Enforcing for strict production verification)"
fi

# 2. Advanced Policy Binder Service in ServiceManager
SERVICE_CHECK="unknown"
if command -v service >/dev/null 2>&1; then
    SERVICE_CHECK=$(service check kaorios_advanced_policy 2>&1 || true)
fi
echo "[2] ServiceManager Registration: $SERVICE_CHECK"
if echo "$SERVICE_CHECK" | grep -qi "found"; then
    echo "    -> PASS (kaorios_advanced_policy registered and discoverable)"
else
    echo "    -> FAIL/UNAVAILABLE (Binder service not registered or blocked by SELinux)"
fi

# 3. SettingsProvider Process Context
SP_PS="unknown"
if command -v ps >/dev/null 2>&1; then
    SP_PS=$(ps -AZ 2>/dev/null | grep "com.android.providers.settings" | head -n 1 || true)
fi
echo "[3] SettingsProvider Process Context: ${SP_PS:-not found}"

# 4. Kernel AVC Denials
AVC_DENIALS=0
if command -v dmesg >/dev/null 2>&1; then
    AVC_DENIALS=$(dmesg 2>/dev/null | grep -icE "avc:\s+denied.*kaorios" || true)
fi
echo "[4] Kernel AVC Denials for Kaorios: $AVC_DENIALS"
if [[ "$AVC_DENIALS" -eq 0 ]]; then
    echo "    -> PASS (Zero SELinux AVC denials detected)"
else
    echo "    -> FAIL ($AVC_DENIALS AVC denial(s) found in dmesg)"
fi

# 5. SettingsProvider call() GET Probe Challenge
PROBE_NONCE="0123456789abcdef0123456789abcdef"
PROBE_KEY="kaorios_advanced_probe_$PROBE_NONCE"
PROBE_RESULT="unknown"
if command -v content >/dev/null 2>&1; then
    PROBE_RESULT=$(content call --uri content://settings/global --method GET_global --arg "$PROBE_KEY" 2>&1 || true)
fi
echo "[5] SettingsProvider call() Probe: $PROBE_RESULT"
if echo "$PROBE_RESULT" | grep -q "kaorios-advanced-v1:global:$PROBE_NONCE"; then
    echo "    -> PASS (Two-stage GET hook in SettingsProvider verified through Binder)"
else
    echo "    -> NOTICE (Probe challenge returned stock/null or failed)"
fi

# 6. Direct Settings Query
QUERY_RESULT="unknown"
if command -v content >/dev/null 2>&1; then
    QUERY_RESULT=$(content query --uri "content://settings/global/$PROBE_KEY" 2>&1 || true)
fi
echo "[6] SettingsProvider direct query() Path: $QUERY_RESULT"

# 7. Framework Initialization Log
echo "[7] Recent Kaorios Logcat Messages:"
if command -v logcat >/dev/null 2>&1; then
    logcat -d -s KaoriosHook:V AdvancedPolicyService:V OmkService:V 2>/dev/null | tail -n 15 || echo "    (No logs found)"
fi

echo "============================================================"
echo "Smoke test completed."
