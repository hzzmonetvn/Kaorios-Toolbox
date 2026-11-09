# Kaorios Toolbox 2.0.6.1 — Hướng dẫn Vá Thủ công Smali cho ROM (Android 13–17)

[English](Patch_Guide_2.0.6.1.md) | [Hướng dẫn Trình vá Tự động](Patcher_Guide_2.0.6.1_VI.md) | [Tắt Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md) | [Hướng dẫn Rust CLI](Rust_CLI_Guide_VI.md) | [README Gốc](../../README.md)

Tài liệu kỹ thuật này cung cấp quy trình vá bytecode smali thủ công chuẩn xác và đầy đủ nhất nhằm tích hợp Kaorios Toolbox vào các bản tùy biến ROM từ Android 13 đến Android 17. Tài liệu bao gồm các điểm chèn bytecode, quy tắc cấp phát thanh ghi, ánh xạ lớp multi-DEX, quy trình nạp payload DEX, và xác minh tái trích xuất sau khi đóng gói.

---

## 1. Tổng quan Kiến trúc & Các Tiền Điều Kiện Quan Trọng

### 1.1 Ngăn ngừa Bootloop: Phục hồi `SettingsProvider.apk`
- **Nguyên nhân Gây Lỗi:** Các phiên bản hướng dẫn cũ (v2.0.6.0 và bản chụp payload v2.0.6.1 ban đầu) từng yêu cầu sửa đổi `SettingsProvider.apk` để gọi các phương thức cài đặt của `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, và `shouldRemoveSetting`).
- **Trạng thái Mã nguồn Hiện tại:** Trong mã nguồn đã kiểm toán hiện nay, các phương thức cấu hình cài đặt này đã hoàn toàn bị loại bỏ khỏi giao diện mặt tiền `KaoriosHook`. Nếu hệ điều hành khởi động với một tệp `SettingsProvider.apk` đã bị vá theo tài liệu cũ, tiến trình Android System Server sẽ lập tức ném ra lỗi `java.lang.NoSuchMethodError`, dẫn đến sập tiến trình và gây ra bootloop nghiêm trọng.
- **Yêu cầu Bắt buộc:** Nếu bản ROM mục tiêu đã từng được vá bằng tài liệu Kaorios phiên bản trước, bạn **bắt buộc phải khôi phục tệp `SettingsProvider.apk` gốc (stock)** từ đúng bản dựng xuất xưởng (firmware) tương ứng *trước khi* nạp bất kỳ payload DEX nào. Tuyệt đối không tái sử dụng các tệp provider APK đã vá.

### 1.2 Phạm vi Mục tiêu & Phân Tách Tệp
- **Tệp Mục tiêu:** Các thay đổi chỉ được áp dụng duy nhất lên các bản sao làm việc của `framework.jar` và `services.jar` từ bản dựng ROM được cấp phép.
- **Bảo toàn Tệp Gốc:** Lưu trữ các bản sao gốc chưa chỉnh sửa, giá trị băm mật mã SHA-256 tương ứng, cùng cơ chế phục hồi (chẳng hạn như phân vùng khôi phục fastboot hoặc gói cài đặt TWRP) ở bên ngoài thư mục làm việc. Tuyệt đối không ghi đè trực tiếp lên tệp gốc.
- **Tách biệt Tài nguyên Native:** Các thư viện liên kết động ELF native (`bin/lib/`) và tập lệnh cấu hình init giai đoạn khởi động sớm (`bin/init/`) là các thành phần độc lập trong ROM. Chúng **không** thuộc quy trình vá tệp Java framework JAR và không được đưa vào tệp JAR.

### 1.3 Khám Phá Multi-DEX & Quyền Sở Hữu Lớp (Class Ownership)
- Các tệp framework JAR trên Android được phân chia thành nhiều phân đoạn DEX (`classes.dex`, `classes2.dex`, `classes3.dex`, v.v.).
- Tuyệt đối không bao giờ mặc định rằng một lớp nằm trong phân đoạn nhất định (như `classes.dex`), và không mặc định payload phải nạp vào `classes6.dex`.
- Dịch ngược từng phân đoạn DEX riêng biệt và tìm kiếm chính xác mã định danh lớp (descriptor) để xác định phân đoạn sở hữu duy nhất cho lớp đó. Chỉ chỉnh sửa đúng phân đoạn sở hữu đó.
- Các đoạn mã smali được cung cấp trong tài liệu này là các thao tác chèn bytecode có tính chọn lọc cao, **không phải là các lớp thay thế toàn bộ**. Không bao giờ ghi đè toàn bộ một lớp gốc của ROM bằng tệp mẫu bên ngoài.

### 1.4 Quy Tắc Cấp Phát Thanh Ghi & Mã Hóa Smali
Trước khi chèn bất kỳ đoạn lệnh nào vào một phương thức mục tiêu:
1. **Phân tích Khai báo Thanh ghi:** Kiểm tra chỉ thị `.registers X` hoặc `.locals Y` ở đầu phương thức. `.locals` khai báo các thanh ghi cục bộ (`v0`..`v[Y-1]`), trong khi các tham số đầu vào được ánh xạ vào `v[Y]`..`v[X-1]` (với bí danh `p0`..`p[N]`).
2. **Cảnh báo Dịch chuyển Tham số (Parameter Shift):** Nếu bạn tăng `.locals` để tạo thêm thanh ghi trống, các thanh ghi tham số sẽ bị dịch chuyển lên chỉ số vật lý cao hơn. Hãy chuyển đổi toàn bộ các tham chiếu thanh ghi vật lý `vN` gốc sang bí danh `pN` *trước khi* tăng `.locals`, và kiểm tra xem toàn bộ các lệnh gốc có còn mã hóa hợp lệ hay không.
3. **Giới hạn Thanh ghi trong Opcode:** Các lệnh chuẩn `invoke-static`, `invoke-virtual`, và `invoke-interface` chỉ hỗ trợ chỉ số thanh ghi vật lý tối đa là 15 (`v0`–`v15`). Nếu bất kỳ thanh ghi toán hạng nào có chỉ số từ 16 trở lên, bạn phải sắp xếp lại thanh ghi hoặc chuyển sang biến thể `/range` (`invoke-static/range`), cho phép nhận một dải thanh ghi liên tục `{vN .. v[N+K]}`.
4. **Tính Liền kề của Move-Result:** Lệnh `move-result` hoặc `move-result-object` phải đứng ngay lập tức sau lệnh `invoke` tương ứng. Tuyệt đối không chèn lệnh hook xen vào giữa `invoke` và `move-result`.
5. **Vị trí Đặt Hook Đầu Vào:** Luôn chèn các hook kiểm tra đầu phương thức sau tất cả các chỉ thị `.param`, `.annotation`, và `.local`, nhưng **nghiêm ngặt trước lệnh thực thi hoặc nhãn nhắm tới đầu tiên**.
6. **Nhãn Phân nhánh Duy nhất:** Sử dụng các nhãn phân nhánh độc nhất (ví dụ: `:kaorios_stock_fallback`) để tránh xung đột với các nhãn có sẵn trong phương thức.

### 1.5 Các Hook Keystore Đã Bị Loại Bỏ (Trạng thái Mã nguồn Hiện tại)
- Hướng dẫn này chủ động **loại bỏ** các bản vá nhắm vào `AndroidKeyStoreKeyPairGeneratorSpi` và `AndroidKeyStoreSpi`.
- Trong mã nguồn hiện tại, các phương thức trợ giúp trong `KaoriosHook` tương ứng với keystore chỉ là các hàm giữ chỗ (stub) rỗng (`CertificateChainIfNeeded` trả về chuỗi chứng chỉ đầu vào không đổi; `initGenerateSoftwareKeyPair`, `OnGetKeyEntry`, và `generateKey` trả về `null`; `Remove` là hàm trống).
- Việc chèn các lệnh gọi đến các hàm stub này chỉ tạo ra mã smali vô ích chạy trung gian qua lại. Do các hàm trợ giúp này chỉ là stub rỗng, các lớp Keystore trong ROM gốc hoàn toàn được giữ nguyên bản và được loại bỏ khỏi danh mục framework caller bắt buộc.

### 1.6 Khả Năng Tương Thích Payload & Bằng Chứng Lịch Sử
- Không phán đoán nội dung payload chỉ dựa trên thẻ phiên bản phát hành hoặc tài liệu.
- **Bằng Chứng Bản Chụp Lịch Sử:**
  - Một bản chụp lịch sử v2.0.6.1 ghi nhận kích thước 171.100 byte với mã băm SHA-256: `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`.
  - Một bản chụp lịch sử trước đó ghi nhận kích thước 858.636 byte với SHA-256 `94848e18…` (trích dẫn lịch sử rút gọn, không phải mã băm kiểm tra được hiện tại).
  - Các giá trị này đóng vai trò mốc đo lường bằng chứng lịch sử; chúng **không** phải là cam kết rằng các tệp nhị phân đó hiện đang được lưu trữ trên mục phát hành GitHub hay khớp với mã nguồn mới nhất.
- Bản phát hành `v2.0.6.1` trên GitHub hiện tại không đính kèm tệp tài nguyên dựng sẵn. Để đóng gói gói cài đặt patcher từ mã nguồn công khai đã kiểm toán, hãy thực thi `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` từ thư mục gốc của kho lưu trữ công khai, sau đó tự tính toán mã băm SHA-256 cho tệp nén bạn vừa tạo.

### 1.7 Cổng Tham Số Hóa Chuỗi Công Cụ (Toolchain Parameterization Gate)
- Khả năng tương thích Android 13–17 đề cập đến cấu trúc điểm chèn (hook layout), không đồng nghĩa với việc hỗ trợ mọi phiên bản bytecode DEX.
- Đối với trường hợp DEX 040 được cung cấp, quy trình tạo tệp gọi `--api 37 --smali-api 34`. Baksmali/smali phiên bản 3.0.8 không ánh xạ API 37 trong bảng tra cứu mã lệnh (`IllegalArgumentException: dexVersion must be within [0, 999]`). Do đó, tham số API phân tích và API đóng gói phải được tách biệt.
- Sự kết hợp này không ngầm định hỗ trợ cho DEX 041, container DEX, hay CompactDex. Hãy kiểm tra định dạng DEX đầu vào trước khi biên dịch; không sửa đổi các byte nhận diện (magic header) để ngụy trang định dạng chưa được hỗ trợ.

---

## 2. Nạp Payload DEX vào `framework.jar`

Tệp payload `classes.dex` cung cấp mặt tiền `android/security/kaorios/KaoriosHook` và các lớp thực thi lõi trong thời gian chạy.

1. **Thu Thập và Xác Minh Payload:** Tính toán mã băm SHA-256 của tệp payload DEX và kiểm tra tính tương thích ABI của mặt tiền đối với các phương thức framework mục tiêu bằng `script/verify-payload-abi.py`.
2. **Dịch Ngược Lớp Payload:** Dịch ngược payload DEX vào một thư mục riêng biệt bằng công cụ baksmali.
3. **Chiến Lược Nạp Từng Lớp (Class-Wise Ingestion):**
   - Lập danh mục mọi mã định danh lớp được định nghĩa trong payload.
   - Đối với từng lớp, kiểm tra `framework.jar` mục tiêu để xem lớp đó đã tồn tại trong một phân đoạn DEX nào chưa.
   - Nếu lớp đã tồn tại (ví dụ: từ một lần vá trước), chỉ thay thế **duy nhất lớp cụ thể đó** trong phân đoạn sở hữu của nó. Các lớp của payload có thể nằm rải rác trên nhiều phân đoạn DEX khác nhau.
   - Nếu lớp này hoàn toàn mới đối với ROM, hãy thêm nó vào một phân đoạn có dung lượng trống hoặc tạo một phân đoạn mới (`classesN.dex`).
   - **Tuyệt đối không xóa toàn bộ không gian tên:** Các lớp của nhà sản xuất (OEM) cùng nằm trong gói `android/security/` hoặc các gói lân cận phải được giữ nguyên hoàn toàn.
   - **Không ghi đè phân đoạn DEX gốc:** Tuyệt đối không thay thế toàn bộ phân đoạn `classes.dex` bằng payload DEX nếu phân đoạn gốc đó chứa các lớp khác của hệ điều hành.
4. **Biên Dịch Lại Các Phân Đoạn Đã Sửa Đổi:** Chỉ biên dịch lại các phân đoạn có chứa thay đổi hoặc mới được thêm vào. Đảm bảo mỗi lớp payload chỉ xuất hiện duy nhất một lần trên toàn bộ tệp JAR.
5. **Giới Hạn Mục Tiêu:** Chỉ nạp các lớp payload vào duy nhất `framework.jar`. Tuyệt đối không nạp các lớp payload vào `services.jar`.

---

## 3. Triển Khai Hook trong `framework.jar`

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

### 3.2 Gắn Kết Tiến Trình & Khởi Tạo — `ActivityThread`
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

### 3.4 Ghi Chú về Hook Tính Năng Hệ Thống Đã Bị Loại Bỏ
- Bản hướng dẫn cũ từng can thiệp vào `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z`.
- Trong mã nguồn hiện tại, `KaoriosHooks.hasSystemFeature` luôn trả về `null` một cách vô điều kiện, khiến việc chèn lệnh gọi này trở thành một lệnh trung gian rỗng gây lãng phí thanh ghi.
- Phương thức mặt tiền `KaoriosHook.hasSystemFeature` vẫn được lưu lại trong payload DEX để tương thích ngược với các bản ROM cũ, nhưng **mã smali của `ApplicationPackageManager` trong ROM gốc phải giữ nguyên bản**.

---

## 4. Triển Khai Hook trong `services.jar`

`services.jar` chứa các hook vòng đời máy chủ hệ thống (system server) và công cụ quản lý gói cài đặt.

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

### 4.2 Lọc Khả Năng Hiển Thị Ứng Dụng (HMA) — `ComputerEngine`
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

### 4.3 Chặn Thông Tin Nguồn và Gói Cài Đặt (Có Điều Kiện) — `ComputerEngine`
- **Khả Năng Áp Dụng:** Chỉ bắt buộc **nếu** bản ROM thực sự triển khai đầy đủ cả hai API đọc trình cài đặt: `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` và `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;`.
- **Ràng Buộc:** Cả hai phương thức phải cùng tồn tại đồng thời như một cặp được hỗ trợ. Nếu cả hai đều vắng mặt, bỏ qua hook này. Nếu chỉ có một hàm tồn tại hoặc cấu trúc khác biệt, dừng lại.

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

## 6. Đóng Gói Lại, Biên Dịch Lại & Quy Trình Xác Minh Tái Trích Xuất

Sau khi hoàn tất chỉnh sửa smali thủ công, hãy thực hiện quy trình xác minh sau đây trước khi nạp tệp JAR đã sửa vào thiết bị:

### Bước 1: Biên Dịch Lại Các Phân Đoạn Sở Hữu
Biên dịch từng phân đoạn đã sửa đổi bằng công cụ smali:
```bash
java -jar smali.jar assemble smali_classes2 --api 34 -o rebuilt/classes2.dex
```

### Bước 2: Đóng Gói Lại Tệp JAR Ứng Viên
Sao chép tệp JAR gốc sang một đường dẫn đầu ra riêng biệt và chỉ thay thế các mục DEX đã sửa:
```bash
cp stock/framework.jar output/framework-patched.jar
zip -j -0 output/framework-patched.jar rebuilt/classes2.dex
```
Kiểm tra tính toàn vẹn của tệp lưu trữ bằng `unzip -tq output/framework-patched.jar`.

### Bước 3: Tái Trích Xuất Phân Đoạn Ứng Viên vào Thư Mục Sạch
Không xác minh trực tiếp trên cây thư mục làm việc. Trích xuất tệp JAR ứng viên vào một thư mục trống mới:
```bash
unzip -q output/framework-patched.jar 'classes*.dex' -d recheck/framework/
java -jar baksmali.jar disassemble recheck/framework/classes2.dex --api 34 -o recheck/smali_framework/
```

### Bước 4: Chạy Các Công Cụ Kiểm Tra Tự Động trên Máy Host
Từ thư mục gốc của kho lưu trữ công khai, thực thi bộ công cụ xác minh:
```bash
# Xác minh các caller hook trong Framework
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework --caller-only

# Xác minh các caller hook trong Services
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services

# Xác minh khớp nối ABI Mặt tiền đối với payload đã dịch ngược
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

---

## 7. Ranh Giới Bằng Chứng (Evidence Boundary)

- **Xác Minh Bytecode trên Host:** Quá trình biên dịch thành công, kiểm tra danh mục lớp và các tập lệnh xác minh vượt qua chỉ chứng minh rằng mã lệnh smali tuân thủ các khuôn mẫu đã định, việc phân bổ thanh ghi là hợp lệ, và các mô tả hàm gọi khớp với payload được cung cấp.
- **Ranh Giới Kết Quả Khi Chạy Thực Tế:** Việc vượt qua kiểm tra trên máy host **không** chứng minh rằng bản ROM mục tiêu sẽ khởi động thành công mà không gặp lỗi kernel panic hay sập dịch vụ, không chứng minh trình nạp lớp (classloader) giải quyết chính xác các phụ thuộc xuyên qua ranh giới tệp JAR, và không chứng minh các bài kiểm tra chứng thực Google Play Integrity sẽ vượt qua trên thiết bị vật lý. Việc xác thực trên ROM thực tế đòi hỏi thử nghiệm trên phần cứng thật với cổng ghi nhật ký nối tiếp (serial console) và bắt logcat trực tiếp.
