# Kaorios Toolbox Secure Flag Guide

[Tiếng Việt](Disable_Secure_Flag_VI.md)

Secure Flag need Framework dex 2.0.3+

## Services.jar

### 1
**Class:**
```smali
Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
```

**Reference smali:** [`DevicePolicyCacheImpl.smali`](../Template/Template_V2060/service/DevicePolicyCacheImpl.smali)

**Method:**
```smali
isScreenCaptureAllowed(I)Z
```
Add the following code below `.registers X`:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    const/4 v0, 0x1

    return v0

    :cond_kaorios
```

### 2
**Class:**
```smali
Lcom/android/server/wm/WindowState;
```
**Or Class:**
```smali
Lcom/android/server/wm/WindowStateAnimator;
```

**Reference smali:** [`WindowState.smali`](../Template/Template_V2060/service/WindowState.smali) | [`WindowStateAnimator.smali`](../Template/Template_V2060/service/WindowStateAnimator.smali)

**Method:**
```smali
isSecureLocked()Z
```

Add the following code below `.registers X`:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    const/4 v0, 0x0

    return v0

    :cond_kaorios
```

**Method:**
```smali
setSecureLocked(Z)V
```

Add the following code below `.registers X`:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    return-void

    :cond_kaorios
```

### 3. Optional display capture path — no general patch recipe

Do not apply the previous `captureDisplay` insertion example. Its method signature did not match the linked template, and it cleared `v0` while the example's blocking branch tested `v5`. The template is not evidence that the same callsite or registers exist in your ROM.

Before proposing a patch for this optional path, inspect an authorized copy of the specific ROM build and record the owning JAR and DEX split, exact method descriptor, capture-blocking callsite, result register, control flow and stock fallback. If these cannot be established, skip this path; do not guess a replacement insertion. Any ROM-specific patch must then be rebuilt into a saved output JAR and checked by re-disassembling the DEX from that saved artifact. A template or host-only check does not verify the final ROM artifact or device behavior.

