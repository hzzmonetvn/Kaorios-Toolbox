# Kaorios Toolbox (Standalone Rust Engine)

Standalone ARM64 (AArch64) native binary for Android ROM integration, root shell administration, and automated system maintenance.

## Binary

- **File:** `kaorios-toolbox`
- **Architecture:** ARM64 (`aarch64-linux-android` / `aarch64`)
- **Version:** v2.0.6
- **Features:** Standalone pure-Rust engine (no JVM/Android Framework dependency required for core CLI/TUI)

## Installation

### Method 1: ROM Build Integration

Copy `kaorios-toolbox` into your ROM's `/system/bin` or vendor image:

```sh
./install.sh /path/to/extracted/system/bin
```

### Method 2: On-Device Root Shell / Termux

```sh
su
mount -o remount,rw /system
./install.sh /system/bin
```

## CLI Usage

### System Diagnostics
```sh
kaorios-toolbox doctor
```

### Interactive Terminal Dashboard (TUI)
```sh
kaorios-toolbox tui
# or
kaorios-toolbox menu
```

### Play Integrity Fix Configuration
```sh
# View status
kaorios-toolbox pif status

# Get current properties
kaorios-toolbox pif get

# Set property
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 8 Pro"
```

### Keybox Management
```sh
# Check profile (HW vs RKP)
kaorios-toolbox keybox status

# Switch profile
kaorios-toolbox keybox profile rkp
kaorios-toolbox keybox profile hw
```

### Application Inventory
```sh
# Package counts
kaorios-toolbox apps count

# List all packages
kaorios-toolbox apps list

# Search packages
kaorios-toolbox apps search google
```

### Root Framework & Modules
```sh
# Detect root manager (KernelSU / Magisk / APatch)
kaorios-toolbox plugins status

# List installed root modules
kaorios-toolbox plugins list
```

### Advanced Framework Features
```sh
# Unblock FLAG_SECURE
kaorios-toolbox features secure-flag toggle

# Always Strong Pass
kaorios-toolbox features always-strong toggle
```

### Device Spoofing
```sh
# Photos unlimited backup
kaorios-toolbox spoof photos enable

# Game props 120 FPS
kaorios-toolbox spoof games enable
```
