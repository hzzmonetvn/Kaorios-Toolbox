# Ghi chú & Hướng dẫn vá dành riêng cho Android 17

[English](notes-a17.md) | **Tiếng Việt**

Tài liệu này tổng hợp các yêu cầu kỹ thuật đặc thù, định dạng tệp DEX và các bước vá smali dành riêng cho **Android 17 (SDK 37 / Baklava)**, đã được đối chiếu và kiểm chứng trực tiếp trên thiết bị thật (Xiaomi 13 Pro chạy HyperOS Android 17).

---

## 1. Mở quyền ghi cho các trường trong lớp `Build` (Xóa `final`)

Bản vá này là **bắt buộc trên Android 17+**. Cơ chế bảo mật máy ảo của Android 17 chặn hoàn toàn việc ghi đè các trường `static final` qua Java Reflection (`Field.set()`) lẫn `sun.misc.Unsafe.putObject()`. Do đó, Kaorios không thể giả lập thông số `Build` nếu ROM chưa xóa cờ `final` khỏi các trường này.

### Vị trí
Tìm kiếm file DEX trong `framework.jar` chứa:
```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```
*(Trên HyperOS Android 17, hai lớp này thường nằm ở `classes3.dex`, nhưng số thứ tự DEX có thể khác nhau tùy từng ROM).*

### Các trường cần xóa `final`
Chỉ xóa từ khóa `final` khỏi các khai báo sau:

**Tập hợp tối thiểu dành cho Google Photos backup không giới hạn & PIF chuẩn:**
```text
Build.smali        : BRAND, DEVICE, FINGERPRINT, HARDWARE, ID, MANUFACTURER, MODEL, PRODUCT, TAGS, TIME, TYPE, USER
Build$VERSION.smali: RELEASE, RELEASE_OR_CODENAME, RELEASE_OR_PREVIEW_DISPLAY, SECURITY_PATCH, DEVICE_INITIAL_SDK_INT
```

Ngoài ra, xóa `final` khỏi bất kỳ trường bổ sung nào có trong profile PIF/GameProps tùy chỉnh (`DISPLAY`, `HOST`, `INCREMENTAL`, `SDK`, hoặc `*_FOR_ATTESTATION`). Tuyệt đối **giữ nguyên `SDK_INT`**.

### Cú pháp Smali
```smali
# Trước khi vá (Gốc)
.field public static final whitelist BRAND:Ljava/lang/String;

# Sau khi vá (Đã xóa final)
.field public static whitelist BRAND:Ljava/lang/String;
```
*(Lưu ý: Một số công cụ rebuild DEX có thể tự thêm `= null` vào trường static không có final; cú pháp này hoàn toàn hợp lệ).*

---

## 2. Định dạng tệp DEX & Yêu cầu công cụ trên Android 17

### Mã định dạng DEX Header (`039` và `040`)
- **Các bản ROM Android 17 gốc** (như HyperOS trên Xiaomi 13 Pro) sử dụng DEX header `dex\n039\0`.
- **Trình biên dịch D8 / Gradle** khi build với `compileSdk = 37`, `minSdk = 31` cũng mặc định xuất ra `dex\n039\0`.
- Cả hai định dạng `039` và `040` đều được máy ảo ART của Android 17 hỗ trợ 100% nguyên bản.

### Yêu cầu phiên bản Smali / Baksmali
- **Không dùng baksmali 2.5.2 hoặc cũ hơn**: Các bản cũ sẽ bị văng lỗi:
  `java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6`
  tại `org.jf.dexlib2.HiddenApiRestriction.getAllFlags`. Lý do là Android 17 bổ sung thêm các cờ hạn chế Hidden-API mở rộng.
- **Bắt buộc sử dụng smali / baksmali phiên bản 3.0+** kèm cờ `--api 37`:
  ```bash
  java -jar baksmali-3.0.8.jar d framework.jar/classes3.dex --api 37 -o fw3
  java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
  ```

---

## 3. Ghép file DEX vào `framework.jar` (`classes7.dex`)

Trên các bản build Android 17 thông dụng (như HyperOS), `framework.jar` gốc thường có 6 file DEX (`classes.dex` đến `classes6.dex`).
1. Lấy file `classes.dex` từ artifact phát hành của Kaorios Framework.
2. Đổi tên thành số thứ tự DEX tiếp theo: **`classes7.dex`**.
3. Thêm trực tiếp `classes7.dex` vào gốc của `framework.jar`.
4. Giữ nguyên 100% các file `classes.dex` .. `classes6.dex` gốc, tránh xung đột nhị phân.

---

## 4. Vị trí móc SystemServer trên HyperOS / Qualcomm Android 17

Trong `services.jar` -> `SystemServer.smali`, chèn lệnh khởi tạo OMK vào ngay đầu hàm `run()V`:
```smali
.method private run()V
    .registers 20

    .line 975
    # [Kaorios Hook] Khởi tạo OmkService và RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    move-object/from16 v1, p0
    const-string/jumbo v0, "persist.sys.language"
```
*(Đối với chip MediaTek, đặt ngay trước lệnh gọi `startOtherServices(TimingsTraceAndSlog)`).*

---

## 5. Kiểm tra & Nạp vào thiết bị

1. **Kiểm tra Header DEX**: `xxd -l 8 classes7.dex` -> `dex\n039\0` hoặc `dex\n040\0`.
2. **Nạp vào `/system/framework/` (Root Shell)**:
   ```sh
   mount -o rw,remount /system
   cp framework.jar /system/framework/framework.jar
   cp services.jar /system/framework/services.jar
   chmod 644 /system/framework/framework.jar /system/framework/services.jar
   rm -rf /data/misc/apexdata/com.android.art/dalvik-cache/arm64/*
   sync && reboot
   ```
3. **Xem log khởi động**:
   ```sh
   adb logcat -s KaoriosOmkService KaoriosCertificateGenerator OmkRootOfTrust KaoriosHook
   ```
