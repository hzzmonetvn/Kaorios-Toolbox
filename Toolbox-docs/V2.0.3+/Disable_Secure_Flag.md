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

### 3 
**Method:**
```smali
captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V
```

**Reference smali:** [`WindowManagerService.smali`](../Template/Template_V2060/service/WindowManagerService.smali)

in method find:
```smali
->notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z
```

Below the line:
```smali
->notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z

    move-result vY
```

Add:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result vX

    if-eqz vX, :cond_kaorios

    const/4 v0, 0x0

    :cond_kaorios
```

**Add +1 to the Registers number, and replace vX with the new register.**

For example: registers 7 -> registers 8 and vX = v3

**In some ROMs, this method may not find the blocking code, so it can be skipped.**

