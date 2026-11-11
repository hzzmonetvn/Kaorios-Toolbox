# Kaorios Toolbox 2.0.6.2 — Hướng dẫn Vá Thủ công Smali cho ROM (Android 13–17)

[English](Patch_Guide_2.0.6.2.md) | [Tắt Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md)

---

## 1. Nạp Payload DEX vào `framework.jar`
Tải classes.dex mới nhất ở release, import vào dex cuối cùng, có thể càn phân chia lại dex.
## 2. Triển Khai Hook trong `framework.jar`

Danh mục bắt buộc gồm sáu lớp, tám method: `ActivityThread`, `Instrumentation` (2), `ApplicationPackageManager`, `Settings$NameValueCache`, `AndroidKeyStoreSpi` (2), `AndroidKeyStoreKeyPairGeneratorSpi`.

### 2.1 Khởi Tạo Ngữ Cảnh Ứng Dụng — `Instrumentation`
- **Lớp:** `Landroid/app/Instrumentation;`
- **Phương thức Mục tiêu:**
  - `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`
  - `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
- **Vị trí Đặt:** Ngay sau lệnh gọi gốc `Application.attach(Context)` trên từng nhánh trả về ứng dụng đã gắn kết, truyền đúng thanh ghi Context.

#### Đoạn Mã cho Nạp Chồng Đầu Tiên (Tĩnh, tham số `p1` giữ Context):
```smali
    # Lệnh gọi gắn kết ứng dụng gốc
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Hook khởi tạo Context của Kaorios
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

#### Đoạn Mã cho Nạp Chồng Thứ Hai (Thể hiện, tham số `p3` giữ Context):
```smali
    # Lệnh gọi gắn kết ứng dụng gốc
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Hook khởi tạo Context của Kaorios
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

*Lưu ý:* Nếu chỉ số thanh ghi vật lý Context vượt quá 15, sử dụng biến thể `invoke-static/range`. Đảm bảo hook không chia tách một lệnh invoke khỏi lệnh `move-result` của nó.

---

### 2.2 Gắn Kết Tiến Trình & Khởi Tạo — `ActivityThread`
- **Lớp:** `Landroid/app/ActivityThread;`
- **Phương thức Mục tiêu:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`
- **Vị trí Đặt:** Ngay sau phép gán gốc vào trường `mBoundApplication`. Truyền đối tượng `AppBindData` (toán hạng đầu tiên của `iput-object`), không truyền `this`.

```smali
    # Gán trường gốc (ví dụ thanh ghi v9 chứa AppBindData)
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    # Hook khởi tạo tiến trình của Kaorios
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

*Lưu ý:* Kiểm tra chắc chắn thanh ghi `v9` chứa đối tượng `AppBindData`. Nếu chỉ số toán hạng từ 16 trở lên, sử dụng `/range {vN .. vN}`. Không nhân bản lệnh `iput-object`.

---

### 2.3 Bảo Vệ Tùy Chọn Nhà Phát Triển & Trạng Thái ADB — `Settings$NameValueCache`
- **Lớp:** `Landroid/provider/Settings$NameValueCache;`
- **Phương thức Mục tiêu:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- **Tham số:** `p1` = `ContentResolver`, `p2` = `String name` (khóa cài đặt), `p3` = `int userHandle`.
- **Vị trí Đặt:** Tại điểm vào đầu phương thức, yêu cầu một thanh ghi cục bộ khả dụng (`v0`).

```smali
    # Cơ chế chặn trạng thái Developer / ADB của Kaorios
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0

    :kaorios_dev_stock
    # Tiếp tục thực thi các lệnh gốc của phương thức...
```

`null` tiếp tục logic gốc; chuỗi khác null được trả nguyên vẹn. Payload tự kiểm tra khóa null và chính sách; không hardcode "0" ở caller.

---

### 2.4 Các hook còn lại bắt buộc

#### `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z`

Ở đầu method, sau metadata register/parameter, dành local riêng `v2`:

```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v2
    if-eqz v2, :kaorios_feature_stock
    invoke-virtual/range {vN .. v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    return v2
    :kaorios_feature_stock
```

#### `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair()Ljava/security/KeyPair;`

Ở đầu method, dành local riêng `v2`; giữ nguyên nhánh xử lý gốc:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v2
    if-eqz v2, :kaorios_generate_stock
    return-object v2
    :kaorios_generate_stock
```

#### `AndroidKeyStoreSpi.engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`

Ngay trước lệnh trả mảng chứng chỉ đã điền, sau lần chèn leaf cuối, lọc đúng register mảng (`v3` chỉ là ví dụ). Giữ nguyên nhánh trả null:

```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Không chèn ở vòng lặp trước đó hoặc bỏ kết quả hook. Ba đối số vật lý phải nằm trong v0–v15 với ví dụ này; dừng khi layout không được hỗ trợ.

#### `AndroidKeyStoreSpi.engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`

Nếu method gốc chưa gọi `engineGetCertificateChain`, chèn block đầu method với hai local có sẵn; giữ lệnh gốc sau label:

```smali
    invoke-virtual/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    move-result-object v0
    if-eqz v0, :kaorios_certificate_stock
    array-length v1, v0
    if-eqz v1, :kaorios_certificate_stock
    const/4 v1, 0x0
    aget-object v0, v0, v1
    return-object v0
    :kaorios_certificate_stock
```

Hai template đầu minh họa method gốc có `.locals 2`: tăng thành `.locals 3`, local mới là `v2`. Nếu method gốc có số local khác, dùng local mới tương ứng (chỉ số ≤255 cho result/branch), không ghi đè local gốc. Với `.registers`, trừ số word tham số để tính số local trước khi cấp phát. Chuẩn hóa alias tham số trước khi tăng register và dùng label riêng. Không nhân đôi hook. Payload hiện tại có implementation thật, không phải stub trả cố định.

---

## 3. Triển Khai Hook trong `services.jar`

### 3.1 Khởi Tạo Máy Chủ Hệ Thống — `SystemServer`
- **Lớp:** `Lcom/android/server/SystemServer;`
- **Phương thức Mục tiêu:** `run()V`
- **Vị trí Đặt:** Ngay trước lệnh gọi vòng lặp chính `Looper.loop()V` cuối cùng tại đoạn kết thúc khởi tạo dịch vụ hệ thống.

```smali
    # Hook khởi tạo System Server của Kaorios
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    # Lệnh lặp chính của hệ thống gốc
    invoke-static {}, Landroid/os/Looper;->loop()V
```

*Lưu ý:* `Looper.loop()V` là một lệnh gốc có sẵn. Không nhân đôi lệnh lặp hoặc đặt hook trước một vòng lặp phụ trợ trung gian.

---

### 3.2 Lọc Khả Năng Hiển Thị Ứng Dụng (HMA) — `ComputerEngine`
- **Lớp:** `Lcom/android/server/pm/ComputerEngine;`
- **Phương thức Mục tiêu:** `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` (hoặc nạp chồng 3 tham số `(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` nếu đó là nạp chồng mà ROM đang thực sự kích hoạt).
- **Vị trí Đặt:** Tại điểm vào đầu phương thức, yêu cầu một thanh ghi cục bộ khả dụng (`v0`).

#### Nạp Chồng 7 Tham Số (`p2` = callingUid, `p5` = userId):
```smali
    # Hook ẩn khả năng hiển thị ứng dụng của Kaorios
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_visibility_stock
    invoke-static {p2, v0, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_visibility_stock
    const/4 v0, 0x1
    return v0

    :kaorios_visibility_stock
    # Tiếp tục thực thi kiểm tra hiển thị gốc...
```

#### Nạp Chồng 3 Tham Số (`p2` = callingUid, `p3` = userId):
Thay thế `p3` vào vị trí của `p5` trong lệnh `invoke-static` ở trên.

*Lưu ý Phân bổ Thanh ghi:* Nếu chỉ số thanh ghi vật lý vượt quá 15, hãy cấp phát ba thanh ghi cục bộ liên tiếp mới (ví dụ: `v20..v22`), sao chép `p2`, `p1.getPackageName()`, và `p5`/`p3` vào đó, rồi thực thi `invoke-static/range {v20 .. v22}`.

---

### 3.3 Chặn Thông Tin Nguồn và Gói Cài Đặt (Có Điều Kiện) — `ComputerEngine`
- **Khả Năng Áp Dụng:** Chỉ bắt buộc **nếu** bản ROM thực sự triển khai đầy đủ cả hai API đọc trình cài đặt: `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` và `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;`.

#### Thiết Lập Đầu Phương Thức (Áp dụng cho Cả Hai Phương Thức):
Dành riêng năm thanh ghi cục bộ liên tiếp mới (ví dụ: `v14..v18`) đại diện cho `(ContentResolver resolver = null, int callingUid, int userId, String targetPackage, String installerPackage)`:
```smali
    const/16 v14, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v15
    move/16 v16, p2
    move-object/16 v17, p1
```
*Lưu ý Thu thập UID:* `getCallingUid()` bắt buộc phải được thu thập **trước** bất kỳ lệnh gọi nào đến `Binder.clearCallingIdentity()`.

Các số register chỉ là ví dụ. Dành năm local không bị method gốc sử dụng (ít nhất `.locals 19` cho `v14..v18`); giữ nguyên chúng cho tới lời gọi hook. Trước khi tăng `.locals`, đổi tham chiếu tham số dạng `vN` sang alias `pN` và kiểm tra giới hạn mã hóa lệnh. Tách vùng này khỏi dải constructor `v4..v10`. Trong ví dụ constructor, `v8` là đối số tên gói cài đặt; đối chiếu descriptor và ánh xạ đối số thực tế trên ROM.

#### Hook trong `getInstallerPackageName`:
Xác định vị trí trả về gốc của tên gói cài đặt đã phân giải (ví dụ: `return-object v2`). Chỉ thay thế duy nhất chuỗi trả về đó bằng:
```smali
    move-object/16 v18, v2
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

#### Hook trong `getInstallSourceInfo`:
Xác định vị trí khởi tạo đối tượng `InstallSourceInfo` (`invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(...)`). Ngay trước lệnh gọi hàm khởi tạo đó, hãy lọc thanh ghi tham số chứa tên gói cài đặt:
```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    # Lệnh gọi khởi tạo gốc tiếp tục phía sau...
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

---

## 4. Giả Mạo Trường Build Tùy Chọn trên Android 17 (Chế độ 2)

Trên các bản ROM Android 17, các trường thông tin `Build` có thể được cấu hình để cho phép giả mạo động trong thời gian chạy bằng cách gỡ bỏ từ khóa truy cập `final` và gán giá trị khởi tạo hằng chuỗi về null:

1. **`Landroid/os/Build;`:**
   - Gỡ bỏ `final` và thiết lập giá trị khởi tạo hằng chuỗi thành `null` đối với: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
   - Gỡ bỏ `final` khỏi trường kiểu nguyên thủy `TIME:J`.
   - *Ví dụ Chuyển đổi:*
     ```smali
     # Trước khi sửa:
     .field public static final BRAND:Ljava/lang/String; = "OEM"
     # Sau khi sửa:
     .field public static BRAND:Ljava/lang/String; = null
     ```
2. **`Landroid/os/Build$VERSION;`:**
   - Gỡ bỏ `final` khỏi: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
   - Giữ nguyên bản hoàn toàn trường `SDK_INT` và hàm khởi tạo tĩnh của lớp (`<clinit>`).

---
## 5. Xác minh khớp nối ABI Mặt tiền đối với payload đã dịch ngược

```bash
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

---

## 6. Assemble và xác minh JAR đã đóng gói

Giữ JAR gốc để khôi phục. Assemble từng DEX đã sửa bằng toolchain smali tương thích, chỉ thay các split đó trong bản JAR đầu ra riêng và chạy `unzip -t`. Giải nén JAR đầu ra vào thư mục trống mới, disassemble từng split vào thư mục riêng bên dưới `recheck/smali_framework` hoặc `recheck/smali_services`. Kiểm tra mỗi class chỉ có một owner và rà luồng register đã sửa. Chạy kiểm tra trên đầu ra đã giải nén, không dùng cây smali đang chỉnh sửa:

```bash
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework --caller-only
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

Các verifier kiểm tra caller hook Kaorios và ABI, không kiểm tra patch CorePatch hoặc secure flag tùy chọn. Assemble và kiểm tra host chưa xác nhận thiết bị khởi động hay hành vi runtime; kiểm tra riêng trên ROM mục tiêu.

### Ranh giới tương thích

Dùng caller và payload cùng phiên bản. Các entry facade cũ `OnGetKeyEntry`, `Remove`, `generateKey` của `KeyStore2` hiện trả null hoặc không làm gì, không phải caller bắt buộc bổ sung. Không khôi phục hook SettingsProvider đã bỏ. CorePatch và secure flag tùy chọn tách biệt với manifest caller bắt buộc.
