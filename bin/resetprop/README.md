# KaoriHelper (`resetprop-rs`)

This directory provides the prebuilt `kaorihelper` executable, an ARM64 (AArch64) native binary for querying, setting, and deleting Android system properties across both early-boot init scripts and runtime root shells.

---

## 1. Binary Specifications

- **File Name:** `kaorihelper`
- **Architecture:** ARM64 (`aarch64-linux-android`)
- **Binary Format:** ELF 64-bit LSB PIE executable, dynamically linked for Android Bionic (`/system/bin/linker64`)
- **Upstream Project:** [Enginex0/resetprop-rs](https://github.com/Enginex0/resetprop-rs) (Release [v0.6.0](https://github.com/Enginex0/resetprop-rs/releases/tag/v0.6.0))
- **Standard System Location:** `/system/bin/kaorihelper`
- **File Permissions:** `0755` (`rwxr-xr-x`), owner `root:shell` (`0:2000`), SELinux context `u:object_r:system_file:s0`

---

## 2. Operating Modes & Usage

`kaorihelper` operates in two primary contexts: during early Android initialization (`init.rc`) and interactively within an authenticated root shell.

### 2.1 Early Init Mode (`--init`)

Used inside init scripts (`init.kaorios.rc` or `init.rc`) to write directly into system property storage areas before Android runtime security policies are active:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property_name> <property_value>
```

- Operates in the `init` SELinux domain (`u:r:init:s0`).
- Overrides both read-only (`ro.*`) and standard properties directly in property memory blocks.
- Refer to [`bin/init/resetprop.md`](../init/resetprop.md) for the complete list of boot properties grouped by device vendor.

### 2.2 Interactive Root Shell CLI Mode

When executed from an interactive root shell (`su`, `adb shell`, or Termux with root):

```sh
# Read a system property
kaorihelper ro.boot.verifiedbootstate

# Set or override a property value (including read-only ro.* properties)
kaorihelper ro.boot.flash.locked 1
kaorihelper ro.build.type user

# Delete an existing property from the active property service
kaorihelper --delete ro.build.version.incremental

# Query command options and help
kaorihelper --help
```

---

## 3. Installation

### Method 1: Using the Bundled Installer

Deploy directly to an extracted ROM partition or mounted device filesystem:

```sh
sh install.sh /path/to/rom/system/bin
```

The script verifies binary existence, sets `0755` permissions, assigns `root:shell` ownership, and applies the `system_file` SELinux context.

### Method 2: Manual Deployment

```sh
cp kaorihelper /path/to/rom/system/bin/kaorihelper
chmod 0755 /path/to/rom/system/bin/kaorihelper
chown 0:2000 /path/to/rom/system/bin/kaorihelper
chcon u:object_r:system_file:s0 /path/to/rom/system/bin/kaorihelper
```

---

## 4. Upstream Lineage & Credits

- Upstream implementation: **[resetprop-rs](https://github.com/Enginex0/resetprop-rs)** developed by **[Enginex0](https://github.com/Enginex0)**.
- Re-implements Android's `resetprop` functionality in pure Rust with direct Bionic property workspace manipulation.

---

## 5. Scope & Evidence Boundary

`kaorihelper` is an AArch64 prebuilt native binary. Its presence in this repository and inspection on a Linux development host demonstrate static file characteristics (ELF format, size, checksums). Verifying its property-overriding behavior in production requires execution on an active ARM64 Android device with appropriate kernel and SELinux policy support.
