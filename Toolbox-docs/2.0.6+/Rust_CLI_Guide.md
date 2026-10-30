# Kaorios Toolbox — Standalone Native Rust CLI & TUI Guide

`kaorios-toolbox` is a standalone, lightweight, native AArch64 binary written in pure Rust. It allows power users, ROM developers, and headless environments (`adb shell`, Termux, chroot, init scripts) to inspect, configure, and operate Play Integrity spoofing and Kaorios framework features without opening the Android application.

---

## 1. Installation & Execution

### Running via `adb shell`
```bash
adb push kaorios-toolbox /data/local/tmp/
adb shell
su
chmod +x /data/local/tmp/kaorios-toolbox
/data/local/tmp/kaorios-toolbox doctor
```

### Running in Termux (Root Required)
```bash
su
cp /data/local/tmp/kaorios-toolbox /data/data/com.termux/files/usr/bin/kaorios-toolbox
chmod 755 /data/data/com.termux/files/usr/bin/kaorios-toolbox
kaorios-toolbox menu
```

---

## 2. Interactive Terminal Dashboard (TUI)

Launch the interactive ANSI dashboard by running:
```bash
kaorios-toolbox tui
# or
kaorios-toolbox menu
```

Features accessible in TUI:
- Real-time status of root authorization and framework hook installation.
- Active Keybox profile and attestation mode indicator.
- Instant toggles for `FLAG_SECURE` unblocking and Always Strong attestation.
- Quick profile switching between `Hardware OEM (hw)` and `Remote Provisioned (rkp)`.
- One-key live Keybox and PIF synchronization.
- Full system diagnostics check.

---

## 3. Command Line Interface (CLI) Reference

### `doctor` — System Diagnostics
Inspects system integrity, root status, SELinux enforcement, framework hook presence, Settings.Global access, and Keybox data validity:
```bash
kaorios-toolbox doctor
```

### `pif` — Play Integrity Fix Properties
Manage and inspect Play Integrity fingerprint and build spoofing properties:
```bash
# View active PIF properties JSON
kaorios-toolbox pif get

# Set specific property
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 9 Pro"

# Toggle boolean flag (spoofBuild, spoofProps, spoofProvider)
kaorios-toolbox pif toggle spoofBuild

# Update security patch date across Settings and PIF JSON
kaorios-toolbox pif patch-security 2026-10-05

# Export or import configuration
kaorios-toolbox pif export /sdcard/pif.json
kaorios-toolbox pif import /sdcard/pif.json
```

### `keybox` — Keybox Profiles & Attestation
Manage Hardware and RKP Keybox profiles, attestation modes, and certificate chains:
```bash
# Check current profile, mode, and XML status
kaorios-toolbox keybox status

# Switch active profile (hw or rkp)
kaorios-toolbox keybox profile hw
kaorios-toolbox keybox profile rkp

# Set default attestation mode for bare packages (gen, leaf, auto)
kaorios-toolbox keybox mode gen
kaorios-toolbox keybox mode leaf

# Import profile-specific Keybox XML
kaorios-toolbox keybox import /sdcard/Keybox.xml

# Trigger live profile-aware remote download
kaorios-toolbox keybox download
```

### `hide` — App & Developer List Hiding
Control package hiding and export HMA-OSS configuration:
```bash
# List all hidden packages
kaorios-toolbox hide list

# Add package to hide list
kaorios-toolbox hide add com.google.android.gms

# Remove package from hide list
kaorios-toolbox hide remove com.google.android.gms

# Export HMA-OSS compatible template
kaorios-toolbox hide export-hma /sdcard/hma_config.json
```

### `features` — Framework Feature Toggles
Enable or disable low-level system framework hooks:
```bash
# Inspect features status
kaorios-toolbox features status

# Toggle screenshot and screen recording blocking (FLAG_SECURE)
kaorios-toolbox features secure-flag on
kaorios-toolbox features secure-flag off

# Toggle Always Strong attestation override
kaorios-toolbox features always-strong on
kaorios-toolbox features always-strong off
```

### `spoof` — Application & Game Spoofing
Configure unlimited Google Photos, Netflix HDR certification, and Game Props:
```bash
# Inspect spoofing status
kaorios-toolbox spoof status

# Toggle Google Photos unlimited backup
kaorios-toolbox spoof photos on

# Toggle Netflix HDR certification spoof
kaorios-toolbox spoof netflix on

# List active Game Props rules
kaorios-toolbox spoof gameprops-list

# Remove a Game Props rule
kaorios-toolbox spoof gameprops-remove com.tencent.tmgp.pubgmhd
```

### `payload` — Streaming OTA Payload Extraction
Inspect and extract partitions from Android OTA `payload.bin` directly on-device:
```bash
# List partitions and sizes inside payload.bin
kaorios-toolbox payload info /sdcard/payload.bin

# Extract specific partition without extracting full archive
kaorios-toolbox payload dump /sdcard/payload.bin boot /sdcard/boot.img
kaorios-toolbox payload dump /sdcard/payload.bin init_boot /sdcard/init_boot.img
```
