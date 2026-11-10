# Kaorios Toolbox 2.0.6.2 — Hướng dẫn Vá Thủ công Smali cho ROM (Android 13–17)

[English](Patch_Guide_2.0.6.2.md) | [Hướng dẫn Trình vá Tự động](Patcher_Guide_2.0.6.2_VI.md) | [Tắt Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md)

---

## 1. Nạp Payload DEX vào `framework.jar`
Tải classes.dex mới nhất ở release, import vào dex cuối cùng, có thể càn phân chia lại dex.
## 2. Triển Khai Hook trong `framework.jar`

Danh mục framework caller bắt buộc bao gồm đúng ba lớp: `ActivityThread`, `Instrumentation`, và `Settings$NameValueCache`.

### 3.1 Khởi Tạo Ngữ Cảnh Ứng Dụng — `Instrumentation`
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

### 3.3 Bảo Vệ Tùy Chọn Nhà Phát Triển & Trạng Thái ADB — `Settings$NameValueCache`
- **Lớp:** `Landroid/provider/Settings$NameValueCache;`
- **Phương thức Mục tiêu:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- **Tham số:** `p1` = `ContentResolver`, `p2` = `String name` (khóa cài đặt), `p3` = `int userHandle`.
- **Vị trí Đặt:** Tại điểm vào đầu phương thức, yêu cầu một thanh ghi cục bộ khả dụng (`v0`).

```smali
    # Cơ chế chặn trạng thái Developer / ADB của Kaorios
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0

    :kaorios_dev_stock
    # Tiếp tục thực thi các lệnh gốc của phương thức...
```

*Lưu ý:* Nếu `p2` là null hoặc hàm `shouldHideDevStatusFromNameValueCache` trả về `false`, luồng thực thi sẽ nhảy tới `:kaorios_dev_stock` và xử lý theo logic hệ thống thông thường. Chính sách trợ giúp chỉ ẩn các khóa `adb_enabled`, `adb_wifi_enabled`, và `development_settings_enabled`. Điều này chỉ thay đổi giá trị báo cáo; nó **không** ngắt kết nối các tiến trình daemon ADB đang chạy.

---

## 3. Triển Khai Hook trong `services.jar`

### 4.1 Khởi Tạo Máy Chủ Hệ Thống — `SystemServer`
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
Dành riêng năm thanh ghi cục bộ liên tiếp mới (ví dụ: `v10..v14`) đại diện cho `(ContentResolver resolver = null, int callingUid, int userId, String targetPackage, String installerPackage)`:
```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```
*Lưu ý Thu thập UID:* `getCallingUid()` bắt buộc phải được thu thập **trước** bất kỳ lệnh gọi nào đến `Binder.clearCallingIdentity()`.

#### Hook trong `getInstallerPackageName`:
Xác định vị trí trả về gốc của tên gói cài đặt đã phân giải (ví dụ: `return-object v2`). Chỉ thay thế duy nhất chuỗi trả về đó bằng:
```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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

## 5. Giả Mạo Trường Build Tùy Chọn trên Android 17 (Chế độ 2)

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
# Xác minh khớp nối ABI Mặt tiền đối với payload đã dịch ngược
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

---
