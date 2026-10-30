# Kaorios Init Configuration (`init.kaorios.rc`)

Early boot system property configuration for Android ROMs.
Works in conjunction with [`kaorihelper`](../resetprop/) to spoof locked bootloader properties at `on post-fs-data`.

## Files

- **`init.kaorios.rc`**: The Android Init service configuration file.
- **`install.sh`**: Installer script to copy `init.kaorios.rc` to `/system/etc/init/`.
- **`resetprop.md`**: Detailed property list by device manufacturer.

## How it Works

Android `init` automatically parses all `.rc` files located in `/system/etc/init/` at boot time.
By placing `init.kaorios.rc` into `/system/etc/init/` and placing `kaorihelper` into `/system/bin/`, the boot properties (`ro.boot.flash.locked`, `ro.boot.verifiedbootstate`, `ro.secure`, etc.) are spoofed during early boot before zygote and system server spawn.

## Installation

### Method 1: Drop into `/system/etc/init/` (Recommended)
1. Copy `init.kaorios.rc` to `/system/etc/init/init.kaorios.rc`.
2. Set permissions to `0644`, owner `root:root`, SELinux context `u:object_r:system_file:s0`.
3. Ensure `/system/bin/kaorihelper` exists and is executable (`0755`).

### Method 2: Script Installation
```sh
sh install.sh /path/to/rom_root
```

### Method 3: Import via `init.rc`
Alternatively, append the following line to `/system/etc/init/hw/init.rc`:
```rc
import /system/etc/init/init.kaorios.rc
```
