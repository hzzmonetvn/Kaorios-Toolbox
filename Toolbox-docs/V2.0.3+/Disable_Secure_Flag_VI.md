# Kaorios Toolbox — Hướng dẫn tắt Secure Flag

[English](Disable_Secure_Flag.md)

Tính năng Secure Flag cần Framework DEX 2.0.3+.

## `services.jar`

### 1. Cho phép screen capture theo Device Policy

**Class:**

```smali
Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
```

**Smali mẫu:** [`DevicePolicyCacheImpl.smali`](../Template/Template_V2060/service/DevicePolicyCacheImpl.smali)

**Method:**

```smali
isScreenCaptureAllowed(I)Z
```

Thêm ngay sau `.registers X`:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    const/4 v0, 0x1

    return v0

    :cond_kaorios
```

### 2. Bỏ cờ Secure ở Window Manager

**Class:**

```smali
Lcom/android/server/wm/WindowState;
```

**Hoặc class:**

```smali
Lcom/android/server/wm/WindowStateAnimator;
```

**Smali mẫu:** [`WindowState.smali`](../Template/Template_V2060/service/WindowState.smali) | [`WindowStateAnimator.smali`](../Template/Template_V2060/service/WindowStateAnimator.smali)

**Method:**

```smali
isSecureLocked()Z
```

Thêm ngay sau `.registers X`:

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

Thêm ngay sau `.registers X`:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    return-void

    :cond_kaorios
```

### 3. Cho phép chụp display

Trong method:

```smali
captureDisplay(ILandroid/window/ScreenCapture$CaptureArgs;Landroid/window/ScreenCapture$ScreenCaptureListener;)V
```

**Smali mẫu:** [`WindowManagerService.smali`](../Template/Template_V2060/service/WindowManagerService.smali)

tìm:

```smali
->notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z
```

Ngay sau:

```smali
->notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z

    move-result vY
```

thêm:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result vX

    if-eqz vX, :cond_kaorios

    const/4 v0, 0x0

    :cond_kaorios
```

Tăng `.registers` thêm `1`, rồi thay `vX` bằng register mới.

Ví dụ: `.registers 7` -> `.registers 8`, sau đó dùng `v3` cho `vX`.

> Một số ROM không có đúng đoạn chặn trong method này; khi đó có thể bỏ qua bước 3.

