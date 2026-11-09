# Kaorios Toolbox (Standalone Rust Engine)

This directory provides the prebuilt `kaorios-toolbox` binary, a standalone ARM64 (AArch64) native command-line and interactive terminal dashboard (TUI) tool written in pure Rust.

It allows power users, custom ROM developers, and automated system scripts to inspect, configure, and maintain Play Integrity spoofing, Keybox certificate profiles, package hiding, and Kaorios framework parameters without launching the Android user interface.

---

## 1. Binary Specifications

- **File Name:** `kaorios-toolbox`
- **Architecture:** ARM64 (`aarch64` / `aarch64-linux-android`)
- **Version:** v2.0.6
- **Runtime Environment:** Standalone native Linux ELF binary; does not require the Android Java Virtual Machine (ART/Dalvik) or Android Framework services for core command-line operations.
- **Default System Path:** `/system/bin/kaorios-toolbox`
- **File Permissions:** `0755` (`rwxr-xr-x`), owner `root:shell` (`0:2000`), SELinux context `u:object_r:system_file:s0`

---

## 2. Installation Procedures

### Method 1: Custom ROM Image Integration

Deploy `kaorios-toolbox` directly into an extracted ROM build tree:

```sh
./install.sh /path/to/extracted/rom/system/bin
```

The script sets `0755` permissions, assigns `root:shell` ownership, and applies the `system_file` SELinux context label.

### Method 2: On-Device Deployment via Root Shell (`su` / Termux)

```sh
# Push binary to device temporary directory
adb push kaorios-toolbox /data/local/tmp/
adb shell

# In device root shell
su
mount -o remount,rw /system
cp /data/local/tmp/kaorios-toolbox /system/bin/kaorios-toolbox
chmod 0755 /system/bin/kaorios-toolbox
chown 0:2000 /system/bin/kaorios-toolbox
chcon u:object_r:system_file:s0 /system/bin/kaorios-toolbox
```

---

## 3. Command Line Interface (CLI) & Terminal UI (TUI)

Detailed user guides in English and Vietnamese are available in the documentation directory:
- [English Guide](../../Toolbox-docs/2.0.6+/Rust_CLI_Guide.md)
- [Hướng Dẫn Tiếng Việt](../../Toolbox-docs/2.0.6+/Rust_CLI_Guide_VI.md)

### 3.1 System Diagnostics
```sh
kaorios-toolbox doctor
```
Checks root authorization status, SELinux enforcement mode, framework hook presence, Settings.Global access, and Keybox data validity.

### 3.2 Interactive Terminal Dashboard (TUI)
```sh
kaorios-toolbox tui
# or
kaorios-toolbox menu
```
Launches an interactive ANSI terminal menu providing real-time status monitors, one-touch profile toggles, and diagnostic overviews.

### 3.3 Play Integrity Fix (PIF) Properties
```sh
# Inspect current PIF properties JSON
kaorios-toolbox pif get

# Set specific property values
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 9 Pro"

# Toggle boolean spoofing flags
kaorios-toolbox pif toggle spoofBuild
kaorios-toolbox pif toggle spoofProps

# Synchronize security patch date across Settings.Global and PIF JSON
kaorios-toolbox pif patch-security 2026-10-05

# Export and import PIF configuration files
kaorios-toolbox pif export /sdcard/pif.json
kaorios-toolbox pif import /sdcard/pif.json
```

### 3.4 Keybox Profile & Attestation Management
```sh
# Check active profile (Hardware OEM vs Remote Provisioned) and XML status
kaorios-toolbox keybox status

# Switch between active profiles
kaorios-toolbox keybox profile hw
kaorios-toolbox keybox profile rkp

# Set default attestation mode (gen, leaf, auto)
kaorios-toolbox keybox mode gen
kaorios-toolbox keybox mode leaf

# Import profile-specific Keybox XML file
kaorios-toolbox keybox import /sdcard/Keybox.xml
```

### 3.5 Application & Package Management
```sh
# Package counts
kaorios-toolbox apps count

# List installed packages
kaorios-toolbox apps list

# Search packages by name
kaorios-toolbox apps search google
```

### 3.6 Root Framework & Plugin Status
```sh
# Detect active root manager (KernelSU, Magisk, APatch)
kaorios-toolbox plugins status

# List installed root modules
kaorios-toolbox plugins list
```

### 3.7 Low-Level Framework Feature Toggles
```sh
# Toggle FLAG_SECURE unblocking (allow screenshots in protected apps)
kaorios-toolbox features secure-flag toggle
kaorios-toolbox features secure-flag on
kaorios-toolbox features secure-flag off

# Toggle Always Strong attestation override
kaorios-toolbox features always-strong toggle
```

### 3.8 Device Spoofing
```sh
# Google Photos unlimited original quality backup
kaorios-toolbox spoof photos enable

# Game high-FPS profile spoofing
kaorios-toolbox spoof games enable
```

### 3.9 Streaming OTA Payload Extraction
```sh
# Inspect partitions inside payload.bin without extracting the entire archive
kaorios-toolbox payload info /sdcard/payload.bin

# Dump specific partitions directly on-device
kaorios-toolbox payload dump /sdcard/payload.bin boot /sdcard/boot.img
kaorios-toolbox payload dump /sdcard/payload.bin init_boot /sdcard/init_boot.img
```

---

## 4. Scope & Evidence Boundary

`kaorios-toolbox` is a prebuilt native executable. Static analysis on the development host confirms ELF formatting and CLI command dispatching. Feature operation on an Android device depends on proper root credentials, SELinux policies, and compatibility with the target Android version. Host testing does not guarantee device attestation passes or hardware compatibility.
