# KaoriHelper — Init RC Properties Reference

This reference documents system property overrides managed through Android Init using the [`kaorihelper`](../resetprop/) binary.

---

## 1. Init Syntax & Action Placement

In Android init scripts (`.rc`), property modifications must be placed inside an appropriate action block, typically `on post-fs-data`. Placing standalone commands at the end of an init file without an enclosing action block is invalid syntax and will cause Android `init` to reject or ignore the commands.

### Command Structure

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property> <value>
```

- **`exec`**: Runs the command synchronously and waits for completion.
- **`u:r:init:s0`**: Specifies execution in the SELinux `init` domain.
- **`root root`**: Sets runtime UID and GID to `0` (`root`).
- **`--`**: Delimits argument options from command arguments.
- **`/system/bin/kaorihelper`**: Absolute path to the property override binary.
- **`--init`**: Flag directing `kaorihelper` to write directly to property storage areas.

---

## 2. Property Categories & Reference Values

> [!NOTE]
> The properties listed below are grouped by target platform and device manufacturer. Only apply properties that correspond to your device architecture and ROM variant.

### 2.1 Common Android Security Properties (All Devices)

These properties control Android Verified Boot (AVB), debuggability, user build tags, and filesystem encryption reporting across standard AOSP and OEM builds:

```rc
# Android Verified Boot (AVB) & Bootloader State
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.device_state locked
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.verifiedbootstate green
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.flash.locked 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.veritymode enforcing
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.veritymode.managed yes
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init sys.oem_unlock_allowed 0

# Security, Debugging, and Build Tags
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.secure 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.debuggable 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.force.debuggable 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.adb.secure 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.build.type user
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.build.tags release-keys

# Cryptographic & Partition State
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.crypto.state encrypted
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.invalidate_on_error yes
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.avb_version 1.3
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.hash_alg sha256
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.vbmeta.size 4096
```

### 2.2 Vendor Partition Properties

On devices with Treble vendor partitions, boot properties are frequently mirrored under the `vendor.` namespace:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init vendor.boot.vbmeta.device_state locked
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init vendor.boot.verifiedbootstate green
```

### 2.3 Xiaomi / MIUI / HyperOS

Overrides the proprietary secure boot lock status queried by Xiaomi system apps:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.secureboot.lockstate locked
```

### 2.4 Realme / OPPO / ColorOS

Overrides the boot state indicators evaluated by OPlus/Realme security frameworks:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.realmebootstate green
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.realme.lockstate 1
```

### 2.5 Samsung (Knox & Warranty Bit Indicators)

Suppresses Knox tripped state indicators in system properties:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.vendor.boot.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.vendor.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.warranty_bit 0
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.fmp_config 1
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.boot.dp_fw_check 1
```

### 2.6 OnePlus / OxygenOS

Suppresses bootloader unlocked warnings and the orange boot state flag:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init ro.is_ever_orange 0
```

---

## 3. Best Practices & Invariants

1. **Do Not Overwrite Device-Specific Sizing Blindly:**
   Properties such as `ro.boot.vbmeta.size` and `ro.boot.vbmeta.avb_version` may reflect specific partition geometries. If your target device requires specific parameters, match the stock values from a clean factory firmware image.
2. **Timing Dependency:**
   Commands must run before services that query boot state (such as `keystore2`, `gatekeeperd`, and `system_server`) start. Setting properties in `post-fs-data` satisfies this requirement on standard Android init sequences.
3. **Rollback Safety:**
   Always maintain an unmodified copy of the ROM's init configuration and ensure fastboot or custom recovery access is available before deploying modifications to `/system`.

---

## 4. Evidence Boundary

Configuring properties via `kaorihelper --init` alters the string values returned by Android's property service (`__system_property_get` and `SystemProperties.get`). These modifications do **not**:
- Physically re-lock an unlocked bootloader.
- Pass cryptographic hardware-backed attestation checks enforced in a Trusted Execution Environment (TEE) or StrongBox keymaster.
- Reset burned hardware eFuses (such as the Samsung Knox warranty bit fuse).
- Guarantee any specific Google Play Integrity verdict without corresponding framework and keybox configuration.
