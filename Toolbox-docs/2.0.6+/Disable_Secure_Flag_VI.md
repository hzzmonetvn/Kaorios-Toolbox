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

Thêm đoạn mã sau ngay sau `.registers X`/`.locals` và phần metadata `.param`/`.annotation` (nếu có), trước label hoặc instruction gốc đầu tiên:

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

Một số ROM giữ `isSecureLocked`/`setSecureLocked` trong `WindowStateAnimator`; template đã lưu không chứa hai method này ở class đó, nên hãy kiểm tra bản build của bạn trước khi patch.

**Smali mẫu:** [`WindowState.smali`](../Template/Template_V2060/service/WindowState.smali)

**Method:**

```smali
isSecureLocked()Z
```

Thêm đoạn mã sau ngay sau `.registers X`/`.locals` và phần metadata `.param`/`.annotation` (nếu có), trước label hoặc instruction gốc đầu tiên:

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

Thêm đoạn mã sau ngay sau `.registers X`/`.locals` và phần metadata `.param`/`.annotation` (nếu có), trước label hoặc instruction gốc đầu tiên:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios

    return-void

    :cond_kaorios
```

### 3. Đường chụp display tùy chọn — chưa có công thức patch chung

Không áp dụng ví dụ chèn vào `captureDisplay` trước đây. Descriptor của method không khớp với template được dẫn, và ví dụ ghi `v0` trong khi nhánh chặn của template kiểm tra `v5`. Template không chứng minh ROM của bạn có cùng callsite hay register.

Trước khi đề xuất patch cho đường tùy chọn này, kiểm tra bản sao được phép sửa của đúng build ROM và ghi lại JAR sở hữu, DEX split, descriptor method chính xác, callsite chặn chụp màn hình, register chứa kết quả, luồng điều khiển và fallback stock. Nếu không xác định được các yếu tố đó, bỏ qua đường này; không đoán điểm chèn thay thế. Mọi bản patch riêng cho ROM phải được build vào JAR đầu ra đã lưu và kiểm tra bằng cách disassemble lại DEX trích từ artifact đó. Template hoặc kiểm tra trên host không xác minh artifact ROM cuối hay hành vi trên thiết bị.

