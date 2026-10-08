# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
SKIPUNZIP=1
[ "$BOOTMODE" = true ] || abort "! Install using your root manager, not recovery."
[ "$ARCH" = arm64 ] || abort "! This experimental build supports arm64 only."
[ "$API" -ge 31 ] || abort "! Android 12 or newer is required."

for base in /data/adb/modules /data/adb/modules_update; do
    for other in hma_oss_zygisk; do
        [ ! -f "$base/$other/module.prop" ] || abort "! Remove $other and reboot before installing Helper."
    done
done

unzip -o "$ZIPFILE" -d "$MODPATH" >/dev/null || abort "! Cannot extract Helper."
(cd "$MODPATH" && sha256sum -c files.sha256 >/dev/null) || abort "! Helper file verification failed."

if [ -d "$MODPATH/tee" ]; then
    for base in /data/adb/modules /data/adb/modules_update; do
        [ ! -f "$base/tricky_store/module.prop" ] || abort "! Remove tricky_store and reboot before installing combined Helper."
    done
fi
if [ -d "$MODPATH/copg" ]; then
    for base in /data/adb/modules /data/adb/modules_update; do
        [ ! -f "$base/COPG/module.prop" ] || abort "! Remove COPG and reboot before installing Helper."
    done
fi

for part in 10-enforce-api-version.sh 11-enforce-arch.sh 20-enforce-magisk-version.sh 21-enforce-ksu-kernel.sh 22-check-zygisk.sh; do
    [ -f "$MODPATH/customize.d/$part" ] || abort "! Missing installer part: $part"
    . "$MODPATH/customize.d/$part"
done

[ -s "$MODPATH/manager.apk" ] || abort "! HMA manager is missing."
pm install -r --user 0 "$MODPATH/manager.apk" >/dev/null 2>&1 || abort "! Cannot install Helper HMA manager. For a different signing key, back up its config and uninstall that Helper manager first."

set_perm_recursive "$MODPATH" 0 0 0755 0644
for file in service.sh uninstall.sh helperctl.sh zygisk.sh; do
    set_perm "$MODPATH/$file" 0 0 0755
done
if [ -d "$MODPATH/tee" ]; then
    for file in tee/daemon tee/inject tee/supervisor; do
        set_perm "$MODPATH/$file" 0 0 0755
    done
    mkdir -p /data/adb/kaorios_helper/tee
    chmod 700 /data/adb/kaorios_helper /data/adb/kaorios_helper/tee
    [ -f /data/adb/kaorios_helper/tee/target.txt ] || touch /data/adb/kaorios_helper/tee/target.txt
    [ -f /data/adb/kaorios_helper/tee/security_patch.txt ] || printf 'system=prop\n' > /data/adb/kaorios_helper/tee/security_patch.txt
    chmod 600 /data/adb/kaorios_helper/tee/target.txt /data/adb/kaorios_helper/tee/security_patch.txt
fi
if [ -d "$MODPATH/copg" ]; then
    set_perm "$MODPATH/copg/controller" 0 0 0755
    mkdir -p /data/adb/kaorios_helper/copg
    chmod 700 /data/adb/kaorios_helper /data/adb/kaorios_helper/copg
    [ -f /data/adb/kaorios_helper/copg/COPG.json ] || cp "$MODPATH/copg/COPG.json" /data/adb/kaorios_helper/copg/COPG.json || abort "! Cannot initialize COPG config."
    chmod 600 /data/adb/kaorios_helper/copg/COPG.json
fi
# Remove only the status script installed by older experimental Helper builds.
rm -f /data/adb/boot-completed.d/kaorios_helper_hma.sh
rm -rf "$MODPATH/customize.d"
ui_print "- Kaorios Helper installed. Reboot, then open Helper HMA manager."
if [ -d "$MODPATH/copg" ]; then
    ui_print "- HMA + COPG + TEE installed. Use Kaorios Toolbox for control; COPG and TEE require explicit opt-in."
fi
if [ -d "$MODPATH/tee" ]; then
    ui_print "- TEE defaults to off on first install. No keybox is bundled."
else
    ui_print "- Zygisk/HMA build installed. No TEE runtime or TEE policy included."
fi
