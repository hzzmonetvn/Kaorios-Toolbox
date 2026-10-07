# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
SKIPUNZIP=1
[ "$BOOTMODE" = true ] || abort "! Install using your root manager, not recovery."
[ "$ARCH" = arm64 ] || abort "! This experimental build supports arm64 only."
[ "$API" -ge 31 ] || abort "! Android 12 or newer is required."

for base in /data/adb/modules /data/adb/modules_update; do
    for other in hma_oss_zygisk tricky_store; do
        [ ! -f "$base/$other/module.prop" ] || abort "! Remove $other and reboot before installing Helper."
    done
done

unzip -o "$ZIPFILE" -d "$MODPATH" >/dev/null || abort "! Cannot extract Helper."
(cd "$MODPATH" && sha256sum -c files.sha256 >/dev/null) || abort "! Helper file verification failed."

for part in 10-enforce-api-version.sh 11-enforce-arch.sh 20-enforce-magisk-version.sh 21-enforce-ksu-kernel.sh 22-check-zygisk.sh; do
    [ -f "$MODPATH/customize.d/$part" ] || abort "! Missing installer part: $part"
    . "$MODPATH/customize.d/$part"
done

[ -s "$MODPATH/manager.apk" ] || abort "! HMA manager is missing."
pm install -r --user 0 "$MODPATH/manager.apk" >/dev/null 2>&1 || abort "! Cannot install Helper HMA manager. For a different signing key, back up its config and uninstall that Helper manager first."

set_perm_recursive "$MODPATH" 0 0 0755 0644
for file in service.sh action.sh uninstall.sh helperctl.sh tee/daemon tee/inject tee/supervisor; do
    set_perm "$MODPATH/$file" 0 0 0755
done
mkdir -p /data/adb/kaorios_helper/tee
chmod 700 /data/adb/kaorios_helper /data/adb/kaorios_helper/tee
[ -f /data/adb/kaorios_helper/tee/target.txt ] || touch /data/adb/kaorios_helper/tee/target.txt
[ -f /data/adb/kaorios_helper/tee/security_patch.txt ] || printf 'system=prop\n' > /data/adb/kaorios_helper/tee/security_patch.txt
chmod 600 /data/adb/kaorios_helper/tee/target.txt /data/adb/kaorios_helper/tee/security_patch.txt
mkdir -p /data/adb/boot-completed.d
cp "$MODPATH/hmaoss.sh" /data/adb/boot-completed.d/kaorios_helper_hma.sh
chmod 755 /data/adb/boot-completed.d/kaorios_helper_hma.sh
cp "$MODPATH/module.prop" "$MODPATH/module.prop.bak"
rm -rf "$MODPATH/customize.d"
ui_print "- Kaorios Helper installed. Reboot, then open Helper HMA manager."
ui_print "- TEE defaults to off on first install. No keybox is bundled."
