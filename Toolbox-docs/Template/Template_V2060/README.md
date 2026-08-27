# Smali Templates — Kaorios Toolbox Framework 2.0.6.0

> **Thiết bị khảo sát / Thiết bị đích (Target Device)**: `dada` (Xiaomi 15)  
> **Phiên bản ROM (ROM Version)**: `HyperOS 4.0.0.6` (Android 17 / SDK 37)

Thư mục này chứa các file mã nguồn Smali mẫu đã được trích xuất và vá hoàn chỉnh từ bản ROM **HyperOS 4.0.0.6 (dada)**, phục vụ tham khảo và đối chiếu khi chỉnh sửa thủ công cho các thiết bị chạy Android 17 / HyperOS.

---

## 📁 Danh sách tệp Smali đã vá (Patched Smali Files)

### 1. `SystemServer.smali` (`services.jar/classes.dex`)
- **Vị trí móc**: Đầu hàm `run()V`.
- **Mã đã vá**:
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
  ```
- **Chức năng**: Khởi tạo hệ thống OMK service và nạp RootOfTrust từ TEE.

---

### 2. `Build.smali` & `Build$VERSION.smali` (`framework.jar/classes3.dex`)
- **Mã đã vá**: Đã xóa từ khóa `final` khỏi các trường static:
  - `Build.smali`: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `DISPLAY`, `FINGERPRINT`, `HARDWARE`, `HOST`, `ID`, `MANUFACTURER`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TIME`, `TYPE`, `USER`.
  - `Build$VERSION.smali`: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
- **Chức năng**: Mở quyền ghi thuộc tính Build qua reflection trên Android 17 cho tính năng PIF & Google Photos spoofing.

---

### 3. Keystore Attestation Hook (`framework.jar/classes3.dex`)
- **`AndroidKeyStoreKeyPairGeneratorSpi.smali`**: Chèn móc `initGenerateSoftwareKeyPair` để sinh cặp khóa phần mềm khi TEE bị khóa hoặc keybox được kích hoạt.
- **`AndroidKeyStoreSpi.smali`**: Chèn móc `CertificateChainIfNeeded` để sửa đổi chuỗi chứng chỉ leaf/root x509 trả về cho ứng dụng.

---

### 4. Core Framework Hook (`framework.jar`)
- **`Instrumentation.smali`**: Chèn `initContext(Landroid/content/Context;)V` sau lệnh `Application.attach()` trong cả hai biến thể của `newApplication`.
- **`ApplicationPackageManager.smali`**: Chèn `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` để giả lập các tính năng hệ thống (Pixel features, Tensor props, v.v.).

---

### 5. Isolation & Feature Protection (`services.jar`)
- **`AppsFilterBase.smali` & `ComputerEngine.smali`**: Chèn `shouldHideAppListForCaller` để cô lập danh sách ứng dụng đã cài đặt theo UID ứng dụng gọi (HMA style).
- **`Settings_NameValueCache.smali`**: Chèn `shouldHideDevStatusFromNameValueCache` để ẩn trạng thái Tùy chọn nhà phát triển và gỡ lỗi ADB.
- **`WindowState.smali`**: Chèn `isSecureFlag()Z` để bỏ chặn `FLAG_SECURE` (cho phép chụp màn hình/quay màn hình ứng dụng hạn chế).

---

## 🛠️ Đóng gói file JAR
Sau khi tham khảo và chỉnh sửa các file smali trên, tiến hành assemble bằng **smali 3.x** kèm cờ `--api 37`:
```bash
java -jar smali-3.0.8.jar a -a 37 fw_smali -o classes3.dex
java -jar smali-3.0.8.jar a -a 37 sv_smali -o classes.dex
```
Thêm `classes.dex` của Kaorios Framework vào `framework.jar` dưới tên **`classes7.dex`**.
