#!/system/bin/sh
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
MODDIR=${0%/*}
CONFIG=/data/adb/kaorios_helper
TEE_CONFIG=$CONFIG/tee
PIDFILE=$CONFIG/tee-supervisor.pid

[ "$(id -u)" = 0 ] || { echo "Root is required."; exit 1; }

conflicts() {
    for base in /data/adb/modules /data/adb/modules_update; do
        for other in hma_oss_zygisk tricky_store; do
            if [ -f "$base/$other/module.prop" ]; then
                echo "Conflicting module: $other. Remove it and reboot first."
                return 0
            fi
        done
    done
    return 1
}

running_pid() {
    [ -f "$PIDFILE" ] || return 1
    helper_pid=$(cat "$PIDFILE")
    case "$helper_pid" in ''|*[!0-9]*) return 1 ;; esac
    [ "$(readlink /proc/$helper_pid/exe 2>/dev/null)" = "$MODDIR/tee/supervisor" ] || return 1
    kill -0 "$helper_pid" 2>/dev/null
}

tee_ready() {
    [ -d "$MODDIR/tee" ] || { echo "TEE is not included in this Zygisk build."; return 1; }
    [ ! -f "$MODDIR/disable" ] && [ ! -f "$MODDIR/remove" ] || { echo "Helper is disabled or pending removal."; return 1; }
    conflicts && return 1
    [ -s "$TEE_CONFIG/keybox.xml" ] && [ -s "$TEE_CONFIG/target.txt" ] || {
        echo "TEE needs your keybox.xml and a non-empty target.txt in $TEE_CONFIG."
        return 1
    }
    for file in daemon supervisor inject libTEESimulator.so libcertgen.so classes.dex; do
        [ -s "$MODDIR/tee/$file" ] || { echo "Missing TEE runtime file: $file"; return 1; }
    done
}

start_tee() {
    [ -d "$MODDIR/tee" ] || { echo "Zygisk/HMA build; TEE is not included."; return 0; }
    [ -f "$CONFIG/tee.enabled" ] || { echo "TEE is disabled."; return 0; }
    tee_ready || return 1
    running_pid && { echo "TEE supervisor is already running; hook readiness is unverified."; return 0; }
    mkdir -p "$CONFIG"
    chmod 700 "$CONFIG" "$TEE_CONFIG"
    chmod 600 "$TEE_CONFIG/keybox.xml" "$TEE_CONFIG/target.txt"
    [ -f "$TEE_CONFIG/hbk" ] || { umask 077; head -c 32 /dev/urandom > "$TEE_CONFIG/hbk"; }
    (
        cd "$MODDIR/tee" || exit 1
        exec ./supervisor ./daemon "$MODDIR/tee"
    ) >/dev/null 2>&1 &
    helper_pid=$!
    printf '%s\n' "$helper_pid" > "$PIDFILE"
    chmod 600 "$PIDFILE"
    echo "TEE supervisor started. This does not confirm hooks are ready."
}

stop_tee() {
    if running_pid; then
        # The supervisor's child uses PR_SET_PDEATHSIG; only kill our verified executable.
        kill -KILL "$helper_pid" 2>/dev/null
    fi
    rm -f "$PIDFILE"
}

case "${1:-status}" in
    status)
        echo "Kaorios Helper: $(sed -n 's/^version=//p' "$MODDIR/module.prop")"
        [ -f "$MODDIR/disable" ] && echo "Module: disabled"
        [ -f "$MODDIR/remove" ] && echo "Module: pending removal"
        . "$MODDIR/zygisk.sh"
        zygisk_detect
        echo "Zygisk provider:$ZYGISK_PROVIDERS ($ZYGISK_STATE)"
        echo "HMA hooks: check the Helper HMA manager; provider configuration is not hook acknowledgment."
        if [ -d "$MODDIR/tee" ]; then
            [ -f "$CONFIG/tee.enabled" ] && echo "TEE desired state: enabled" || echo "TEE desired state: disabled"
            running_pid && echo "TEE supervisor: running (hooks unverified)" || echo "TEE supervisor: not running"
        else
            echo "TEE: not included"
        fi
        ;;
    enable-tee)
        tee_ready || exit 1
        mkdir -p "$CONFIG"
        touch "$CONFIG/tee.enabled"
        chmod 600 "$CONFIG/tee.enabled"
        start_tee
        ;;
    disable-tee)
        rm -f "$CONFIG/tee.enabled"
        stop_tee
        echo "TEE disabled. Reboot to detach previously injected hooks."
        ;;
    start) start_tee ;;
    stop) stop_tee ;;
    hma) am start --user 0 -n io.github.hzzmonetvn.kaorioshelper.hma/org.frknkrc44.hma_oss.ui.activity.MainActivity ;;
    *) echo "Usage: helperctl.sh {status|hma|enable-tee|disable-tee|start|stop}"; exit 1 ;;
esac
