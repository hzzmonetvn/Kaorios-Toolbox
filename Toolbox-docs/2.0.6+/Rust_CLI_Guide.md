# Kaorios Toolbox — Standalone Native Rust CLI & TUI Guide

[Tiếng Việt](Rust_CLI_Guide_VI.md) | [Manual Patch Guide](Patch_Guide_2.0.6.2.md) | [Root README](../../README.md)

`kaorios-toolbox` is a standalone, lightweight, native AArch64 executable written in pure Rust. It allows power users, ROM developers, and headless environments (`adb shell`, Termux, chroot, and early boot scripts) to inspect, configure, and operate Play Integrity spoofing, Keybox certificate management, and Kaorios framework features without opening the Android graphical interface.

---

## 1. Prerequisites & Installation

### Requirements
- **Architecture:** ARM64 (AArch64) Android device or emulator.
- **Root Authorization:** Required for writing system properties, reading protected Keybox paths, modifying Settings.Global, or issuing framework toggles (`su` via KernelSU, Magisk, or APatch).
- **Binary Location:** The prebuilt executable is located in the repository at [`bin/kaorios-toolbox/kaorios-toolbox`](../../bin/kaorios-toolbox/README.md).

### Execution via `adb shell`
```bash
adb push bin/kaorios-toolbox/kaorios-toolbox /data/local/tmp/
adb shell
su
chmod 0755 /data/local/tmp/kaorios-toolbox
/data/local/tmp/kaorios-toolbox doctor
```

### Installation in Termux (Root Required)
```bash
su
cp /data/local/tmp/kaorios-toolbox /data/data/com.termux/files/usr/bin/kaorios-toolbox
chmod 0755 /data/data/com.termux/files/usr/bin/kaorios-toolbox
kaorios-toolbox menu
```

### Permanent System Integration
To include `kaorios-toolbox` permanently in the system PATH across reboots:
```bash
su
mount -o remount,rw /system
cp /data/local/tmp/kaorios-toolbox /system/bin/kaorios-toolbox
chmod 0755 /system/bin/kaorios-toolbox
chown 0:2000 /system/bin/kaorios-toolbox
chcon u:object_r:system_file:s0 /system/bin/kaorios-toolbox
```

---

## 2. Interactive Terminal Dashboard (TUI)

Launch the interactive ANSI terminal user interface:
```bash
kaorios-toolbox tui
# or
kaorios-toolbox menu
```

### Key Features of the TUI Dashboard:
- **Live Status Monitors:** Real-time indicator of root management engine (KernelSU, Magisk, APatch), SELinux enforcement status, and framework hook presence.
- **Keybox & Attestation State:** Displays the currently active Keybox profile (`Hardware OEM` vs `Remote Provisioned`) and attestation mode (`gen`, `leaf`, `auto`).
- **Feature Toggles:** Fast toggle hotkeys for unblocking screenshot/screen recording (`FLAG_SECURE`) and Always Strong attestation fallback.
- **Profile Switching:** Instant switching between `hw` and `rkp` Keybox configurations.
- **Diagnostics Check:** One-key execution of the complete system integrity diagnostic suite.

---

## 3. Command Line Interface (CLI) Reference

### 3.1 `doctor` — System Diagnostics
Performs comprehensive validation of root privileges, SELinux policies, framework hook readiness, `Settings.Global` access, and Keybox XML validity:
```bash
kaorios-toolbox doctor
```

### 3.2 `pif` — Play Integrity Fix Configuration
Inspect and configure Play Integrity fingerprint properties and build spoofing parameters:
```bash
# View active PIF properties JSON
kaorios-toolbox pif get

# Set specific property values
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 9 Pro"
kaorios-toolbox pif set PRODUCT "komodo"

# Toggle boolean spoofing flags (spoofBuild, spoofProps, spoofProvider)
kaorios-toolbox pif toggle spoofBuild
kaorios-toolbox pif toggle spoofProps

# Update and synchronize security patch date across Settings.Global and PIF JSON
kaorios-toolbox pif patch-security 2026-10-05

# Export active configuration to a JSON file
kaorios-toolbox pif export /sdcard/pif.json

# Import configuration from a JSON file
kaorios-toolbox pif import /sdcard/pif.json
```

### 3.3 `keybox` — Keybox Profiles & Attestation
Manage Hardware and RKP Keybox profiles, attestation certificate chains, and key validation:
```bash
# Check current profile, mode, and XML status
kaorios-toolbox keybox status

# Switch active Keybox profile (hw or rkp)
kaorios-toolbox keybox profile hw
kaorios-toolbox keybox profile rkp

# Set default attestation mode for bare packages (gen, leaf, auto)
kaorios-toolbox keybox mode gen
kaorios-toolbox keybox mode leaf

# Import profile-specific Keybox XML file
kaorios-toolbox keybox import /sdcard/Keybox.xml

# Trigger live profile-aware remote download
kaorios-toolbox keybox download
```

### 3.4 `hide` — App & Developer Status Hiding
Manage hidden package lists and export configurations for HMA-compatible modules:
```bash
# List all currently hidden packages
kaorios-toolbox hide list

# Add package to hide list
kaorios-toolbox hide add com.google.android.gms

# Remove package from hide list
kaorios-toolbox hide remove com.google.android.gms

# Export HMA-OSS compatible template
kaorios-toolbox hide export-hma /sdcard/hma_config.json
```

### 3.5 `features` — Low-Level Framework Feature Toggles
Enable or disable low-level system framework hooks:
```bash
# Inspect framework features status
kaorios-toolbox features status

# Toggle screenshot and screen recording blocking (FLAG_SECURE)
kaorios-toolbox features secure-flag toggle
kaorios-toolbox features secure-flag on
kaorios-toolbox features secure-flag off

# Toggle Always Strong attestation override
kaorios-toolbox features always-strong toggle
kaorios-toolbox features always-strong on
kaorios-toolbox features always-strong off
```

### 3.6 `spoof` — Application & Game Spoofing
Configure per-app features including Google Photos unlimited storage and high-FPS profiles:
```bash
# Inspect spoofing status
kaorios-toolbox spoof status

# Toggle Google Photos unlimited original quality backup
kaorios-toolbox spoof photos on
kaorios-toolbox spoof photos off

# Toggle Netflix HDR certification spoofing
kaorios-toolbox spoof netflix on

# List active Game Props high-FPS configuration rules
kaorios-toolbox spoof gameprops-list

# Remove a specific Game Props rule
kaorios-toolbox spoof gameprops-remove com.tencent.tmgp.pubgmhd
```

### 3.7 `payload` — Streaming OTA Payload Extraction
Inspect and extract partitions directly from Android OTA update archives (`payload.bin`) on-device:
```bash
# Inspect partition table and partition sizes inside payload.bin
kaorios-toolbox payload info /sdcard/payload.bin

# Extract specific partition without unzipping the entire image
kaorios-toolbox payload dump /sdcard/payload.bin boot /sdcard/boot.img
kaorios-toolbox payload dump /sdcard/payload.bin init_boot /sdcard/init_boot.img
```

---

## 4. Evidence Boundary

`kaorios-toolbox` is a host-packaged prebuilt native executable. The commands and outputs described here reflect tested syntax and operational capabilities of the standalone binary. Using `kaorios-toolbox` on a live Android device requires root privileges and compatible kernel/SELinux configurations. Executing CLI commands modifies local device storage and system properties; it does not replace the need for verified firmware backups.
