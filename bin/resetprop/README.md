# KaoriHelper (`resetprop-rs`)

This directory provides the prebuilt `kaorihelper` executable, an ARM64 (AArch64) native binary for querying, setting, and deleting Android system properties across both early-boot init scripts and runtime root shells.

---

## 1. Binary Specifications

- **File Name:** `kaorihelper`
- **Architecture:** ARM64 (`aarch64-linux-android`)
- **Binary Format:** ELF 64-bit LSB PIE executable, dynamically linked for Android Bionic (`/system/bin/linker64`)
- **Upstream Project:** [Enginex0/resetprop-rs](https://github.com/Enginex0/resetprop-rs)
- **Standard System Location:** `/system/bin/kaorihelper`
- **File Permissions:** `0755` (`rwxr-xr-x`), owner `root:shell` (`0:2000`), SELinux context `u:object_r:system_file:s0`

---

## 2. Operating Modes & Usage

`kaorihelper` operates in two primary contexts: during early Android initialization (`init.rc`) and interactively within an authenticated root shell.


Used inside init scripts (`init.rc`) to write directly into system property storage areas before Android runtime security policies are active:

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property_name> <property_value>
```

- Operates in the `init` SELinux domain (`u:r:init:s0`).
- Overrides both read-only (`ro.*`) and standard properties directly in property memory blocks.



## 3. Installation

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

