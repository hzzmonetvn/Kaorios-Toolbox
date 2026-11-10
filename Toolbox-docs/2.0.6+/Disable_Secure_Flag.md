# Kaorios Toolbox — Disable Secure Flag Guide

[Tiếng Việt](Disable_Secure_Flag_VI.md) | [Manual Patch Guide](Patch_Guide_2.0.6.2.md) | [Root README](../../README.md)

> [!NOTE]
> **Framework Requirement:**
> The `KaoriosHook.isSecureFlag()` hook requires the Kaorios Framework payload DEX (v2.0.3+) imported into `framework.jar`. Without the payload DEX, calls to `KaoriosHook` will throw `NoClassDefFoundError` at runtime and cause a system server crash.

---

## 1. Device Policy Cache Hook

- **Target class:** `Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;`
- **Target file:** `DevicePolicyCacheImpl.smali`
- **Target method:** `isScreenCaptureAllowed(I)Z`

Insert the following hook block immediately after `.registers X` / `.locals Y` and any `.param` or `.annotation` metadata, before the first stock instruction or label:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    const/4 v0, 0x1
    return v0
    :cond_kaorios
```

Ensure register `v0` is an available local register in this method. If `v0` is already in use by a live parameter mapping, increase `.locals` appropriately before inserting.

---

## 2. Window Manager Secure Flag Bypass

- **Target class:** `Lcom/android/server/wm/WindowState;` (or on some OEM builds, `Lcom/android/server/wm/WindowStateAnimator;`)
- **Target file:** `WindowState.smali` (or `WindowStateAnimator.smali`)

### Method: `isSecureLocked()Z`

Insert the hook immediately after method parameter/local declarations and before the first stock instruction:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    const/4 v0, 0x0
    return v0
    :cond_kaorios
```

When `KaoriosHook.isSecureFlag()` returns `true`, `isSecureLocked()` returns `0` (`false`), indicating that the window is not secure.

### Method: `setSecureLocked(Z)V`

Insert the hook immediately after method parameter/local declarations and before the first stock instruction:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    return-void
    :cond_kaorios
```

When `KaoriosHook.isSecureFlag()` returns `true`, the method returns immediately (`return-void`), preventing the secure state from being stored.

---
