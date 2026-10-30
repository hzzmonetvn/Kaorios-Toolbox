# KaoriHelper — Init RC Properties

Configure Android system properties using `kaorihelper` through `init.rc`.

## Installation

**Target file:** `/system/etc/init/hw/init.rc`

Add the required commands to an appropriate init action.

**Syntax:**

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property> <value>
```

> **Note:** The properties below are grouped by device manufacturer. Only apply properties compatible with your device. These commands modify reported property values, not the actual hardware security state.

## Property List

### Common — All Devices

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.device_state locked
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.verifiedbootstate green
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.flash.locked 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.veritymode enforcing
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.debuggable 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.force.debuggable 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.secure 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.adb.secure 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.build.type user
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.build.tags release-keys
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init sys.oem_unlock_allowed 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.invalidate_on_error yes
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.avb_version 1.3
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.hash_alg sha256
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.size 4096
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.crypto.state encrypted
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.veritymode.managed yes
```

### Xiaomi / MIUI / HyperOS

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.secureboot.lockstate locked
```

### Realme

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.realmebootstate green
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.realme.lockstate 1
```

### Samsung

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.vendor.boot.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.vendor.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.fmp_config 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.dp_fw_check 1
```

### OnePlus

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.is_ever_orange 0
```

### Vendor Properties

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init vendor.boot.vbmeta.device_state locked
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init vendor.boot.verifiedbootstate green
```

## Important Notes

- **Android init syntax:** `exec` must be placed inside a valid init action, such as `on post-fs-data`. Appending standalone commands at EOF is not valid.
- **Device compatibility:** Manufacturer headings are documentation labels, not automatic device filters.
- **Property values:** `ro.boot.vbmeta.size`, `ro.boot.vbmeta.avb_version`, and encryption-related values may differ between devices.
- **Security:** Changing properties does not actually lock the bootloader, restore verified boot, reset Knox warranty status, or guarantee a Play Integrity verdict.
- **Boot safety:** Back up the original `init.rc` and verify binary availability, SELinux permissions, and execution timing before rebooting.
