#!/system/bin/sh
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
MODDIR=${0%/*}
CONFIG=/data/adb/kaorios_helper
TEE_CONFIG=$CONFIG/tee
PIDFILE=$CONFIG/tee-supervisor.pid
COPG_CONFIG=$CONFIG/copg
COPG_PIDFILE=$CONFIG/copg-controller.pid

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

process_start() {
    helper_stat=$(cat "/proc/$1/stat" 2>/dev/null) || return 1
    helper_stat=${helper_stat##*) }
    set -- $helper_stat
    [ "$#" -ge 20 ] || return 1
    case "$1" in Z|X) return 1 ;; esac
    shift 19
    printf '%s\n' "$1"
}

recorded_pid() {
    [ -f "$1" ] || return 1
    read -r helper_pid helper_birth helper_extra < "$1"
    case "$helper_pid" in ''|*[!0-9]*) return 1 ;; esac
    [ -z "$helper_extra" ] || return 1
    kill -0 "$helper_pid" 2>/dev/null || return 1
    helper_current_birth=$(process_start "$helper_pid") || return 1
    [ -z "$helper_birth" ] || [ "$helper_current_birth" = "$helper_birth" ]
}

running_owned() {
    recorded_pid "$1" || return 1
    [ "$(readlink "/proc/$helper_pid/exe" 2>/dev/null)" = "$2" ]
}

running_pid() {
    running_owned "$PIDFILE" "$MODDIR/tee/supervisor"
}

lifecycle_lock() {
    command -v flock >/dev/null 2>&1 || { echo "flock is required to change runtime state."; return 1; }
    mkdir -p "$CONFIG" || return 1
    chmod 700 "$CONFIG" || return 1
    umask 077
    exec 9>"$CONFIG/lifecycle.lock" || return 1
    helper_attempt=0
    until flock -n 9; do
        helper_attempt=$((helper_attempt + 1))
        [ "$helper_attempt" -lt 100 ] || { echo "Helper runtime state is busy. Try again."; return 1; }
        sleep 0.02
    done
}

launch_owned() {
    helper_pidfile=$1
    helper_exe=$2
    shift
    if running_owned "$helper_pidfile" "$helper_exe"; then
        echo "Runtime is already running; hook readiness is unverified."
        return 0
    fi
    recorded_pid "$helper_pidfile" && { echo "Recorded process has not entered its runtime; refusing a duplicate start."; return 1; }
    rm -f "$helper_pidfile"
    # The child publishes its identity before dropping the inherited lifecycle lock.
    sh -c '
        helper_pidfile=$1; shift
        helper_stat=$(cat /proc/$$/stat) || exit 1
        helper_stat=${helper_stat##*) }
        helper_birth=$(printf "%s\n" "$helper_stat" | awk "{print \$20}")
        [ -n "$helper_birth" ] || exit 1
        umask 077
        printf "%s %s\n" "$$" "$helper_birth" > "$helper_pidfile.new.$$" || exit 1
        mv "$helper_pidfile.new.$$" "$helper_pidfile" || exit 1
        exec 9>&-
        exec "$@"
    ' sh "$helper_pidfile" "$@" >/dev/null 2>&1 &
    helper_child=$!
    helper_attempt=0
    until running_owned "$helper_pidfile" "$helper_exe"; do
        kill -0 "$helper_child" 2>/dev/null || { wait "$helper_child"; echo "Runtime failed to start."; return 1; }
        helper_attempt=$((helper_attempt + 1))
        [ "$helper_attempt" -lt 100 ] || { echo "Runtime startup is unconfirmed; check status before retrying."; return 1; }
        sleep 0.02
    done
    if [ "$helper_exe" = "$MODDIR/copg/controller" ]; then
        sleep 0.1
        running_owned "$helper_pidfile" "$helper_exe" || { echo "COPG controller exited during startup."; return 1; }
    fi
    echo "Runtime started. This does not confirm hooks are ready."
}

stop_owned() {
    helper_stop_file=$1
    helper_stop_exe=$2
    helper_signal=$3
    helper_attempt=0
    while recorded_pid "$helper_stop_file" && [ -n "$helper_birth" ] && ! running_owned "$helper_stop_file" "$helper_stop_exe"; do
        helper_attempt=$((helper_attempt + 1))
        [ "$helper_attempt" -lt 100 ] || { echo "Recorded process is unverified; refusing to kill it or discard its identity."; return 1; }
        sleep 0.02
    done
    if running_owned "$helper_stop_file" "$helper_stop_exe"; then
        helper_stop_pid=$helper_pid
        kill "-$helper_signal" "$helper_stop_pid" 2>/dev/null
        helper_attempt=0
        while running_owned "$helper_stop_file" "$helper_stop_exe" && [ "$helper_pid" = "$helper_stop_pid" ]; do
            helper_attempt=$((helper_attempt + 1))
            if [ "$helper_attempt" -ge 100 ]; then
                kill -KILL "$helper_stop_pid" 2>/dev/null
                sleep 0.02
                running_owned "$helper_stop_file" "$helper_stop_exe" && { echo "Runtime has not stopped; keeping its process record."; return 1; }
                break
            fi
            sleep 0.02
        done
    fi
    rm -f "$helper_stop_file"
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
    mkdir -p "$CONFIG"
    chmod 700 "$CONFIG" "$TEE_CONFIG"
    chmod 600 "$TEE_CONFIG/keybox.xml" "$TEE_CONFIG/target.txt"
    [ -f "$TEE_CONFIG/hbk" ] || { umask 077; head -c 32 /dev/urandom > "$TEE_CONFIG/hbk"; }
    launch_owned "$PIDFILE" "$MODDIR/tee/supervisor" "$MODDIR/tee/daemon" "$MODDIR/tee"
}

stop_tee() {
    # The supervisor's child uses PR_SET_PDEATHSIG; only kill our verified executable.
    stop_owned "$PIDFILE" "$MODDIR/tee/supervisor" KILL
}

copg_ready() {
    [ -x "$MODDIR/copg/controller" ] || { echo "COPG is not included in this build."; return 1; }
    [ ! -f "$MODDIR/disable" ] && [ ! -f "$MODDIR/remove" ] || { echo "Helper is disabled or pending removal."; return 1; }
    for base in /data/adb/modules /data/adb/modules_update; do
        [ ! -f "$base/COPG/module.prop" ] || { echo "Conflicting module: COPG. Remove it and reboot first."; return 1; }
    done
    . "$MODDIR/zygisk.sh"
    zygisk_detect && [ "$ZYGISK_STATE" = configured ] && [ "$ZYGISK_PROVIDERS" != " magisk-builtin" ] || {
        echo "COPG needs exactly one configured external Zygisk runtime. Reboot after changing providers."
        return 1
    }
    [ -s "$COPG_CONFIG/COPG.json" ] && "$MODDIR/copg/controller" --check-config || {
        echo "COPG needs a valid COPG.json with configured targets in $COPG_CONFIG."
        return 1
    }
}

start_copg() {
    [ -d "$MODDIR/copg" ] || { echo "COPG: not included"; return 0; }
    [ -f "$CONFIG/copg.enabled" ] || { echo "COPG is disabled."; return 0; }
    copg_ready || return 1
    chmod 700 "$COPG_CONFIG"
    chmod 600 "$COPG_CONFIG/COPG.json"
    launch_owned "$COPG_PIDFILE" "$MODDIR/copg/controller"
}

stop_copg() {
    stop_owned "$COPG_PIDFILE" "$MODDIR/copg/controller" TERM
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
        if [ -d "$MODDIR/copg" ]; then
            [ -f "$CONFIG/copg.enabled" ] && echo "COPG desired state: enabled" || echo "COPG desired state: disabled"
            running_owned "$COPG_PIDFILE" "$MODDIR/copg/controller" && echo "COPG controller: running (hooks unverified)" || echo "COPG controller: not running"
        else
            echo "COPG: not included"
        fi
        ;;
    enable-tee)
        lifecycle_lock || exit 1
        tee_ready || exit 1
        mkdir -p "$CONFIG"
        touch "$CONFIG/tee.enabled"
        chmod 600 "$CONFIG/tee.enabled"
        start_tee
        ;;
    disable-tee)
        lifecycle_lock || exit 1
        rm -f "$CONFIG/tee.enabled"
        stop_tee || exit 1
        echo "TEE disabled. Reboot to detach previously injected hooks."
        ;;
    enable-copg)
        lifecycle_lock || exit 1
        copg_ready || exit 1
        touch "$CONFIG/copg.enabled"
        chmod 600 "$CONFIG/copg.enabled"
        start_copg || { rm -f "$CONFIG/copg.enabled"; exit 1; }
        ;;
    disable-copg)
        lifecycle_lock || exit 1
        rm -f "$CONFIG/copg.enabled"
        stop_copg || exit 1
        echo "COPG disabled. Reopen affected apps or reboot to clear existing app hooks."
        ;;
    start)
        if [ ! -f "$CONFIG/tee.enabled" ] && [ ! -f "$CONFIG/copg.enabled" ]; then
            echo "TEE and COPG are disabled."
            exit 0
        fi
        lifecycle_lock || exit 1
        helper_result=0
        start_tee || helper_result=1
        start_copg || helper_result=1
        exit "$helper_result"
        ;;
    stop)
        [ -f "$PIDFILE" ] || [ -f "$COPG_PIDFILE" ] || [ -f "$CONFIG/tee.enabled" ] || [ -f "$CONFIG/copg.enabled" ] || exit 0
        lifecycle_lock || exit 1
        helper_result=0
        stop_tee || helper_result=1
        stop_copg || helper_result=1
        exit "$helper_result"
        ;;
    hma) am start --user 0 -n io.github.hzzmonetvn.kaorioshelper.hma/org.frknkrc44.hma_oss.ui.activity.MainActivity ;;
    *) echo "Usage: helperctl.sh {status|hma|enable-tee|disable-tee|enable-copg|disable-copg|start|stop}"; exit 1 ;;
esac
