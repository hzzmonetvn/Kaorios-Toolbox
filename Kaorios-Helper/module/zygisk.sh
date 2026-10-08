# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn

zygisk_detect() {
    ZYGISK_PROVIDERS=""
    ZYGISK_COUNT=0
    ZYGISK_STATE=missing
    for base in /data/adb/modules /data/adb/modules_update; do
        for folder in "$base"/*; do
            [ -f "$folder/module.prop" ] || continue
            helper_provider=${folder##*/}
            if [ "$base" = /data/adb/modules ] && [ -f "/data/adb/modules_update/$helper_provider/module.prop" ]; then
                continue
            fi
            [ ! -f "$folder/disable" ] && [ ! -f "$folder/remove" ] || continue
            [ -f "$folder/bin/zygiskd" ] || [ -f "$folder/bin/zygiskd64" ] || continue
            case " $ZYGISK_PROVIDERS " in *" $helper_provider "*) continue ;; esac
            ZYGISK_PROVIDERS="$ZYGISK_PROVIDERS $helper_provider"
            ZYGISK_COUNT=$((ZYGISK_COUNT + 1))
            if [ "$base" = /data/adb/modules ]; then
                ZYGISK_STATE=configured
            elif [ "$ZYGISK_STATE" = missing ]; then
                ZYGISK_STATE=pending-reboot
            fi
        done
    done
    if [ -z "${KSU:-}" ] && [ -z "${APATCH:-}" ]; then
        helper_builtin=${ZYGISK_ENABLED:-}
        if [ "$helper_builtin" != 1 ] && command -v magisk >/dev/null 2>&1; then
            helper_builtin=$(magisk --sqlite "SELECT value FROM settings WHERE key = 'zygisk'" 2>/dev/null | sed -n 's/^value=//p')
        fi
        if [ "$helper_builtin" = 1 ]; then
            ZYGISK_PROVIDERS="$ZYGISK_PROVIDERS magisk-builtin"
            ZYGISK_COUNT=$((ZYGISK_COUNT + 1))
            ZYGISK_STATE=configured
        fi
    fi
    [ "$ZYGISK_COUNT" -le 1 ] || ZYGISK_STATE=conflict
    [ "$ZYGISK_COUNT" = 1 ]
}

zygisk_require() {
    zygisk_detect || {
        if [ "$ZYGISK_STATE" = conflict ]; then
            abort "! Multiple enabled Zygisk providers:$ZYGISK_PROVIDERS. Keep one and reboot."
        else
            abort "! Enable Magisk Zygisk or install a compatible Zygisk runtime first."
        fi
    }
    ui_print "- Zygisk provider:$ZYGISK_PROVIDERS ($ZYGISK_STATE). Reboot before testing HMA."
}
