# Kaorios Toolbox — Hướng Dẫn Tắt Secure Flag

[English](Disable_Secure_Flag.md) | [Hướng Dẫn Patch Bằng Tay](Patch_Guide_2.0.6.2_VI.md) | [Root README](../../README.md)

Tài liệu này hướng dẫn chi tiết cách patch smali tĩnh vào `services.jar` để gỡ bỏ hạn chế chụp ảnh màn hình và quay video màn hình trong các ứng dụng có kích hoạt cờ bảo mật `FLAG_SECURE` (`WindowManager.LayoutParams.FLAG_SECURE`).

> [!NOTE]
> **Yêu Cầu Về Framework:**
> Lời gọi hook `KaoriosHook.isSecureFlag()` yêu cầu payload DEX của Kaorios Framework (phiên bản 2.0.3 trở lên) đã được import vào `framework.jar`. Nếu không có payload DEX, việc gọi `KaoriosHook` sẽ gây ra ngoại lệ `NoClassDefFoundError` và làm crash tiến trình `system_server`.

---

## 1. Hook Device Policy Cache

Cho phép các truy vấn kiểm tra quyền chụp màn hình do Device Policy quản lý luôn trả về trạng thái được phép chụp.

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

Xóa trạng thái cờ cửa sổ bảo mật khi Window Manager đánh giá hoặc cập nhật trạng thái hiển thị của cửa sổ.

- **Class mục tiêu:** `Lcom/android/server/wm/WindowState;` (hoặc trên một số bản ROM OEM là `Lcom/android/server/wm/WindowStateAnimator;`)
- **File mục tiêu:** `WindowState.smali` (hoặc `WindowStateAnimator.smali`)

> [!WARNING]
> Một số bản ROM chuyển `isSecureLocked` và `setSecureLocked` sang class `WindowStateAnimator` thay vì `WindowState`. Hãy kiểm tra các file smali đã disassemble của `services.jar` trên ROM đích để xác định chính xác class chứa các method này trước khi patch.

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

## 3. Đường Dẫn Chụp Display Tùy Chọn — Phạm Vi & Giới Hạn

Không áp dụng các công thức chèn tùy tiện vào `captureDisplay` khi chưa kiểm chứng trên bản ROM thực tế. Từ Android 13 đến 17, việc kiểm tra chụp màn hình được triển khai khác nhau giữa SurfaceFlinger, WindowManagerService và DisplayContent.

Trước khi đề xuất patch cho bất kỳ đường dẫn chụp display cụ thể nào:
1. Kiểm tra bản sao hợp lệ của đúng bản ROM đích.
2. Ghi lại chính xác JAR và DEX split sở hữu, descriptor method, vị trí lệnh chặn chụp màn hình, register chứa kết quả và luồng fallback mặc định.
3. Nếu không chứng minh được các điều kiện trên một cách chắc chắn, hãy bỏ qua đường dẫn tùy chọn này; không tự ý đoán điểm chèn thay thế.
4. Mọi bản patch dành riêng cho ROM phải được assemble vào file JAR xuất ra, giải nén lại và kiểm tra lại qua smali đã disassemble.
5. **Ranh Giới Bằng Chứng (Evidence Boundary):** Việc xác minh tĩnh trên máy host chỉ chứng minh cú pháp bytecode và vị trí chèn hook. Việc này không chứng minh rằng thiết bị sẽ khởi động thành công hoặc có thể chụp được các luồng video bảo vệ bởi phần cứng DRM (như Widevine L1 / secure display pipelines).
