# Kaorios Toolbox — Hướng Dẫn Tắt Secure Flag

[English](Disable_Secure_Flag.md) | [Hướng Dẫn Patch Bằng Tay](Patch_Guide_2.0.6.2_VI.md) | [Root README](../../README.md)


> [!NOTE]
> **Yêu Cầu Về Framework:**
> Lời gọi hook `KaoriosHook.isSecureFlag()` yêu cầu payload DEX của Kaorios Framework (phiên bản 2.0.3 trở lên) đã được import vào `framework.jar`. Nếu không có payload DEX, việc gọi `KaoriosHook` sẽ gây ra ngoại lệ `NoClassDefFoundError` và làm crash tiến trình `system_server`.

---

## 1. Hook Device Policy Cache

- **Class mục tiêu:** `Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;`
- **File mục tiêu:** `DevicePolicyCacheImpl.smali`
- **Method mục tiêu:** `isScreenCaptureAllowed(I)Z`

Chèn đoạn mã hook sau ngay sau khai báo `.registers X` / `.locals Y` và các metadata `.param` hoặc `.annotation` (nếu có), trước lệnh hoặc nhãn stock đầu tiên:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    const/4 v0, 0x1
    return v0
    :cond_kaorios
```

Đảm bảo register `v0` là register local khả dụng trong method này. Nếu `v0` đang được dùng làm alias cho tham số, hãy tăng `.locals` một cách an toàn trước khi chèn.

---

## 2. Bỏ Cờ Secure Ở Window Manager

- **Class mục tiêu:** `Lcom/android/server/wm/WindowState;` (hoặc trên một số bản ROM OEM là `Lcom/android/server/wm/WindowStateAnimator;`)
- **File mục tiêu:** `WindowState.smali` (hoặc `WindowStateAnimator.smali`)

### Method: `isSecureLocked()Z`

Chèn đoạn mã hook ngay sau phần khai báo local/parameter và trước lệnh stock đầu tiên:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    const/4 v0, 0x0
    return v0
    :cond_kaorios
```

Khi `KaoriosHook.isSecureFlag()` trả về `true`, `isSecureLocked()` sẽ trả về `0` (`false`), báo hiệu rằng cửa sổ không phải là cửa sổ bảo mật.

### Method: `setSecureLocked(Z)V`

Chèn đoạn mã hook ngay sau phần khai báo local/parameter và trước lệnh stock đầu tiên:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
    move-result v0
    if-eqz v0, :cond_kaorios
    return-void
    :cond_kaorios
```

Khi `KaoriosHook.isSecureFlag()` trả về `true`, method sẽ thoát ngay lập tức (`return-void`), ngăn cản việc ghi nhận trạng thái bảo mật của cửa sổ.

---
