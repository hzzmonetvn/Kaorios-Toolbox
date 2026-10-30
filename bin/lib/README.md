# Kaorios PIF Native Property Bridge

Prebuilt native ELF libraries for hooking Android Bionic libc `__system_property_read_callback` directly in DroidGuard (`com.google.android.gms.unstable`).

## Architecture & Binaries

- **`arm64-v8a/`** (target: `/system/lib64/`):
  - `libkaoripif.so` (Primary PIF property interceptor)
  - `libkaoriospif.so` (Alias)
  - `libshadowhook_kaorios.so` (Inline hooking engine)
- **`armeabi-v7a/`** (target: `/system/lib/`):
  - `libkaoripif.so`
  - `libkaoriospif.so`
  - `libshadowhook_kaorios.so`

## Installation

### Manual Installation
Copy the libraries to the target ROM partition:
- Copy `arm64-v8a/*.so` to `/system/lib64/`
- Copy `armeabi-v7a/*.so` to `/system/lib/`
- Set permissions to `0644`, owner `root:root`
- Set SELinux context to `u:object_r:system_lib_file:s0`

### Script Installation
Run on device or against extracted ROM directory:
```sh
sh install.sh /path/to/rom_root
```

## Security & Verification
- Intercepts property lookups without leaking companion APK class loader in DroidGuard.
- Enables Google Play Integrity `MEETS_DEVICE_INTEGRITY` and `MEETS_STRONG_INTEGRITY`.
