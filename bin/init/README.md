# Kaorios Init Configuration (`init.kaorios.rc`)

This directory provides early-boot system property configuration assets for Android custom ROMs and vendor images. It works in coordination with the [`kaorihelper`](../resetprop/) binary to override locked bootloader, AVB/vbmeta, and build security properties at the `post-fs-data` init stage before the Zygote process and Android System Server initialize.

---

## 1. Directory Contents

- **`init.kaorios.rc`**: The Android Init service definition file containing `exec` statements for early boot property overrides.
- **`install.sh`**: Shell installer script designed to deploy `init.kaorios.rc` to extracted ROM images or mounted root filesystems.
- **`resetprop.md`**: Technical reference listing system properties grouped by device manufacturer and security subsystem.

---

## 2. Mechanism & Execution Order

Android's `init` process automatically discovers and evaluates all `.rc` configuration files situated in `/system/etc/init/` (and vendor init paths) during initial boot.

1. **Trigger Phase:** The configuration executes within the `on post-fs-data` trigger phase. At this point, `/data` is decrypted and mounted, but Android runtime services (`app_process`, `zygote`, and `system_server`) have not yet started.
2. **SELinux Domain Transition:** Each command runs via the `exec` statement:
   ```rc
   exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property> <value>
   ```
   This executes `kaorihelper` in the `init` SELinux domain (`u:r:init:s0`) with root privileges (`0:0`), allowing it to directly write into the Bionic system property memory workspace before application sandbox rules take effect.
3. **Property Interception:** By setting critical boot properties (such as `ro.boot.flash.locked=1`, `ro.boot.verifiedbootstate=green`, and `ro.secure=1`) at this early stage, subsequent native daemons and Java runtime services inherit these spoofed security states as baseline facts.

---

## 3. Installation Methods

### Method 1: Automated Script Installation (Extracted ROM Root)

Run `install.sh` against an extracted ROM root or mounted system directory:

```sh
sh install.sh /path/to/extracted/rom_root
```

The script automatically detects standard partition layouts (`/system/etc/init` or system-as-root `/system/system/etc/init`), copies `init.kaorios.rc`, sets file mode `0644`, adjusts owner to `root:root` (`0:0`), and applies the SELinux context `u:object_r:system_file:s0` if `chcon` is available.

### Method 2: Manual ROM Integration

1. Copy `init.kaorios.rc` into the target system image:
   ```sh
   cp init.kaorios.rc /path/to/rom/system/etc/init/init.kaorios.rc
   ```
2. Verify file permissions and ownership:
   - File mode: `0644` (`rw-r--r--`)
   - Owner/Group: `0:0` (`root:root`)
   - SELinux context: `u:object_r:system_file:s0`
3. Ensure the accompanying property helper binary is deployed to the system binary directory:
   - Deploy `bin/resetprop/kaorihelper` to `/system/bin/kaorihelper`
   - File mode: `0755` (`rwxr-xr-x`)
   - Owner/Group: `0:0` (`root:root`)
   - SELinux context: `u:object_r:system_file:s0`

### Method 3: Direct Import via `init.rc`

On legacy ROMs or systems without dynamic `/system/etc/init/` parsing, append an import statement into `/system/etc/init/hw/init.rc`:

```rc
import /system/etc/init/init.kaorios.rc
```

---

## 4. Verification & Troubleshooting

- **Check Init Execution:** In an authorized root shell, inspect logcat or dmesg for init exec entries:
  ```sh
  dmesg | grep -i kaorihelper
  ```
- **Inspect Property Values:** Confirm that properties report the expected values:
  ```sh
  getprop ro.boot.verifiedbootstate
  getprop ro.boot.flash.locked
  ```
- **SELinux Denials:** If properties fail to update on boot, check dmesg for audit denials:
  ```sh
  dmesg | grep "type=1400" | grep kaorihelper
  ```
  Ensure `/system/bin/kaorihelper` is labeled `system_file` and that init has permission to execute domain transitions on the target ROM.

---

## 5. Scope & Evidence Boundary

These files provide host-side init scripts and prebuilt installer helpers. Incorporating `init.kaorios.rc` into a ROM alters reported system property strings in memory; it does **not** physically re-lock a device's bootloader, regenerate hardware cryptographic state, or reset burned hardware Knox/OEM warranty fuses. Always retain stock ROM images and maintain a tested fastboot/recovery rollback plan before flashing modified system partitions.
