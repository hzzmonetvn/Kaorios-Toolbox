# Android 17 Notes & Patch Guide

**English** | [Tiếng Việt](notes-a17_VI.md)

This document covers essential technical requirements, DEX format considerations, and smali patch steps specific to **Android 17 (SDK 37 / Baklava)**

---

## 1. Make Selected `Build` Fields Writable (Un-finaling)

This patch is **mandatory on Android 17+**. Android 17 strictly enforces JVM constraints, blocking reflection writes to `static final` fields via both `Field.set()` and `sun.misc.Unsafe.putObject()`. Kaorios therefore cannot spoof the selected `Build` properties until the ROM removes their `final` access flags.

### Location
Search the DEX inside `framework.jar` containing:
```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

### Fields to Patch
Remove `final` only from these declarations:

**Minimum set for Google Photos unlimited backup & standard PIF profiles:**
```text
Build.smali        : BRAND, DEVICE, FINGERPRINT, HARDWARE, ID, MANUFACTURER, MODEL, PRODUCT, TAGS, TIME, TYPE, USER
Build$VERSION.smali: RELEASE, RELEASE_OR_CODENAME, RELEASE_OR_PREVIEW_DISPLAY, SECURITY_PATCH, DEVICE_INITIAL_SDK_INT
```

Also remove `final` from any optional Build fields used in custom PIF or GameProps profiles (`DISPLAY`, `HOST`, `INCREMENTAL`, `SDK`, or `*_FOR_ATTESTATION`). Keep `SDK_INT` unchanged.

### Smali Syntax
```smali
# Before (Stock)
.field public static final whitelist BRAND:Ljava/lang/String;

# After (Patched)
.field public static whitelist BRAND:Ljava/lang/String;
```
*(Note: Some decompiler tools may output an explicit `= null` default initializer on non-final static fields; this is completely valid).*

---

## 2. Android 17 DEX Format & Tool Requirements
### DEX Header Magic (`039` vs `040`)
- **Stock Android 17 ROMs** (such as HyperOS on Xiaomi 13 Pro) ship DEX files with header `dex\n039\0`.
- **D8 / AGP Compiler** targeting Android 17 (`compileSdk = 37`, `minSdk = 31`) also outputs `dex\n039\0`.
- Both `039` and `040` are 100% natively supported by the Android 17 ART runtime.

### Tooling Requirements (Smali / Baksmali 3.x)
- **Do not use baksmali 2.5.2 or older**: Older versions will crash with:
  `java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6`
  at `org.jf.dexlib2.HiddenApiRestriction.getAllFlags`. This is caused by new extended Hidden-API restriction flags introduced in Android 17 system classes.
- **Always use smali/baksmali 3.0+** with the `--api 37` flag:
  ```bash
  java -jar baksmali-3.0.8.jar d framework.jar/classes3.dex --api 37 -o fw3
  java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
  ```

