# Kaorios Toolbox — Disable Secure Flag Guide

[Tiếng Việt](Disable_Secure_Flag_VI.md) | [Manual Patch Guide](Patch_Guide_2.0.6.2.md) | [Root README](../../README.md)

This reference documents static smali modifications to system services (`services.jar`) to allow screenshot capture and screen recording in applications protected by `FLAG_SECURE` (`WindowManager.LayoutParams.FLAG_SECURE`).

> [!NOTE]
> **Framework Requirement:**
> The `KaoriosHook.isSecureFlag()` hook requires the Kaorios Framework payload DEX (v2.0.3+) imported into `framework.jar`. Without the payload DEX, calls to `KaoriosHook` will throw `NoClassDefFoundError` at runtime and cause a system server crash.

---

## 1. Device Policy Cache Hook

Allows screen capture queries handled by the device policy manager to report capture as permitted.

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

Clears the secure window flag when window state is evaluated or updated.

- **Target class:** `Lcom/android/server/wm/WindowState;` (or on some OEM builds, `Lcom/android/server/wm/WindowStateAnimator;`)
- **Target file:** `WindowState.smali` (or `WindowStateAnimator.smali`)

> [!WARNING]
> Some ROMs place `isSecureLocked` and `setSecureLocked` in `WindowStateAnimator` rather than `WindowState`. Inspect your target ROM's disassembled `services.jar` splits to locate which class defines these methods before patching.

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

## 3. Optional Display Capture Path — Scope & Limitations

Do not apply arbitrary `captureDisplay` insertion recipes without verifying the target ROM. Android 13 through 17 implement display capture checks differently across SurfaceFlinger, WindowManagerService, and DisplayContent.

Before proposing a patch for any display-capture-specific path:
1. Inspect an authorized copy of the specific target ROM build.
2. Record the exact owning JAR and DEX split, method descriptor, capture-blocking callsite, result register, and stock fallback logic.
3. If these conditions cannot be verified with certainty, skip the optional path. Do not guess a replacement insertion.
4. Any ROM-specific patch must be assembled into a candidate output JAR, re-extracted, and verified via disassembled smali.
5. **Evidence Boundary:** Host-side static verification confirms bytecode syntax and hook placement. It does not prove that a device will boot or that hardware-protected DRM buffers (Widevine L1 / secure video paths) can be captured.
