# Hướng dẫn tích hợp và vá (patch) Kaorios Toolbox Framework 2.0.6.0

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Tài liệu này mô tả chi tiết quy trình tích hợp file DEX của framework 2.0.6.0 vào các bản ROM Android từ 12 đến 17, đồng thời hướng dẫn sửa đổi các điểm móc (call site) trong mã nguồn smali. Các mẫu thanh ghi trong tài liệu này đã được đối chiếu và kiểm chứng thực tế trên HyperOS Android 17 (API 37). Đối với các bản ROM khác, người thực hiện cần tìm kiếm lớp (class) và phương thức (method) theo đúng định danh (descriptor), tuyệt đối không đoán mò số thứ tự file DEX hay số dòng mã nguồn.

- Mẫu mã nguồn smali tham chiếu chuẩn trên HyperOS Android 17: [`Template/Template_V2060`](../Template/Template_V2060)

---

## 1. Cảnh báo và nguyên tắc an toàn bắt buộc

- **Luôn sao lưu (backup)**: Lưu lại các file `framework.jar`, `services.jar`, các file tối ưu hóa đi kèm (VDEX/ODEX) và phân vùng khởi động (boot image) đang hoạt động ổn định trước khi chỉnh sửa.
- **Phiên bản DEX trên Android 17**: Android 17 hỗ trợ cả định dạng DEX `039` và `040` (các bản ROM thực tế như HyperOS Android 17 dùng `039`). Bắt buộc phải sử dụng công cụ smali/baksmali phiên bản 3.x trở lên với cờ `--api 37` do các class hệ thống của Android 17 chứa các cờ `HiddenApiRestrictions` mở rộng khiến baksmali 2.5.2 bị lỗi.
- **Quy tắc phân biệt hoa - thường**: Tên phương thức và định danh (descriptor) phân biệt chính xác chữ hoa và chữ thường. Ví dụ: `OnGetKeyEntry` có chữ `O` viết hoa; `CertificateChainIfNeeded` không phải là `getCertificateChain`.
- **Vị trí file DEX**: Không mặc định các lớp cần vá luôn nằm ở `classes3.dex` hay `classes7.dex`; luôn luôn giải nén và tìm kiếm trực tiếp trên bản ROM mục tiêu.
- **Tránh trùng lặp mã**: Tuyệt đối không để tồn tại đồng thời hai phiên bản của gói `Landroid/security/kaorios/*` hoặc `Lcom/kousei/framework/*` trong boot classpath của hệ thống.
- **Quản lý thanh ghi (Registers)**: Không tự ý tăng số lượng `.registers` khi phương thức gốc vẫn tham chiếu tham số qua thanh ghi dạng `vN` mà chưa tính toán lại chỉ số. Ưu tiên sử dụng thanh ghi tham số `p0..pN`, các thanh ghi cục bộ (local) đang chưa dùng, hoặc tăng `.locals`.
- **Quy trình thử nghiệm**: Thực hiện vá theo từng nhóm tính năng và khởi động lại thiết bị để kiểm tra (boot-test) sau mỗi nhóm. Chỉ cần sai lệch một descriptor trong `SystemServer` cũng có thể dẫn đến treo logo (bootloop).

---

## 2. Khảo sát và tìm kiếm trên ROM đích

Giải nén các file JAR hệ thống và dịch ngược (disassemble) mã nguồn smali:

```bash
mkdir -p work/framework work/services
unzip -q framework.jar -d work/framework
unzip -q services.jar -d work/services

java -jar baksmali-3.0.8.jar d work/framework/classes3.dex --api 37 -o work/fw3
java -jar baksmali-3.0.8.jar d work/services/classes.dex --api 37 -o work/sv1
```

Lặp lại thao tác dịch ngược với tất cả các file `classes*.dex`, sau đó tiến hành tìm kiếm vị trí các lớp cần can thiệp:

```bash
rg -l '^\.class .*Landroid/app/Instrumentation;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreSpi;' work/fw*
rg -l '^\.class .*Lcom/android/server/SystemServer;' work/sv*
rg -l 'Landroid/security/kaorios/KaoriosHook;' work/fw* work/sv*
```

---

## 3. Thêm file DEX vào framework không tạo lớp trùng lặp

Đổi tên file thành phẩm `classes.dex` của framework thành số thứ tự DEX tiếp theo chưa tồn tại trong bản ROM (ví dụ: các bản ROM có 6 file DEX gốc như HyperOS A17 sẽ đổi thành `classes7.dex`), sau đó thêm file này vào bên trong `framework.jar`. Giữ nguyên toàn bộ các file DEX gốc `classes.dex` .. `classes6.dex`.

---

## 4. Bảng định danh (Descriptor) chuẩn phiên bản 2.0.6.0

| Tính năng | Chữ ký (Descriptor) Smali chính xác |
|---|---|
| Khởi tạo ứng dụng (Init app) | `initContext(Landroid/content/Context;)V` |
| Khởi tạo system_server | `initSystemServer()V` |
| Giả lập tính năng hệ thống (Feature spoof) | `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` |
| Tạo khóa phần mềm (Software GEN) | `initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;` |
| Thay thế chuỗi chứng chỉ (Hack chain) | `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` |
| Lấy chứng chỉ từ bộ nhớ đệm (Tùy chọn) | `OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;` |
| Ẩn tùy chọn nhà phát triển (Hide dev) | `shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Ẩn ứng dụng theo tiến trình gọi (Hide app) | `shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Giả lập nguồn cài đặt (Installer spoof) | `filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Lọc giá trị cài đặt hệ thống (Settings value) | `filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Xóa giá trị cài đặt (Remove setting) | `shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z` |
| Vô hiệu hóa cờ bảo mật (FLAG_SECURE) | `isSecureFlag()Z` |

---

## 5. Vá các điểm móc lõi trong framework.jar

### 5.1 `Instrumentation.newApplication`

Điểm móc bắt buộc để hoạt động các tính năng: giả lập Play Integrity (PIF), thông số game, Google Photos và TFT. Chèn lệnh gọi ngay sau `Application.attach()` và trước lệnh `return-object`.

Đối với phương thức tĩnh (static method):

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

Đối với phương thức đối tượng (instance method):

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

> **Lưu ý**: Tuyệt đối không gọi hook này trước khi phương thức `attach()` được thực thi.

### 5.2 `ApplicationPackageManager.hasSystemFeature`

Chèn vào ngay đầu phương thức `hasSystemFeature(Ljava/lang/String;I)Z`. Nếu hook trả về `null` nghĩa là sử dụng logic mặc định của hệ thống; nếu trả về đối tượng `Boolean` (khác null) thì sẽ ghi đè kết quả:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
:cond_kaorios_feature_stock
```

> **Lưu ý**: Kiểu trả về của hook bắt buộc phải là đối tượng `Ljava/lang/Boolean;`, không được sử dụng kiểu nguyên thủy `Z`.

### 5.3 `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair`

Chèn vào ngay đầu phương thức, trước đoạn mã gốc của hệ thống gọi `getSecurityLevel()`:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14
if-eqz v14, :cond_kaorios_gen_stock
return-object v14
:cond_kaorios_gen_stock
```

> **Lưu ý**: Thanh ghi `v14` trong ví dụ trên chỉ áp dụng với mẫu Android 17 có khai báo `.registers 16`. Trên các bản ROM khác, bạn cần chọn một thanh ghi cục bộ (local) chứa đối tượng hiện đang còn trống.

### 5.4 `AndroidKeyStoreSpi.engineGetCertificateChain`

Phương thức cần vá:

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Tìm mảng chuỗi chứng chỉ ở cuối phương thức, ngay sau khi chứng chỉ lá (leaf) được gán vào chỉ số 0 và trước khi trả về kết quả:

```smali
aput-object v2, v3, v4
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
return-object v3
```

> **Lưu ý**: Tuyệt đối không truyền `{p0, p1}` vào hàm hook này. Nếu phương thức có nhiều nhánh `return-object`, hãy bọc lệnh hook cho từng nhánh mảng chứng chỉ hợp lệ hoặc chuyển hướng tất cả về một lệnh `return` chung.

### 5.5 Bỏ thuộc tính `final` khỏi các trường Build trên Android 17

Trên Android 17, hệ thống chặn việc sửa đổi các trường `static final` qua `Field.set()` và `Unsafe`. Vì vậy bắt buộc phải xóa từ khóa `final` khỏi các trường trong `Build` và `Build$VERSION`.

Chi tiết xem tại: [notes-a17_VI.md](notes-a17_VI.md) (hoặc bản tiếng Anh [notes-a17.md](notes-a17.md)).

---

## 6. Vá các điểm móc lõi trong services.jar

### 6.1 `SystemServer.initSystemServer`

Khởi tạo dịch vụ OMK và tự động kiểm tra, nạp `RootOfTrust` từ TEE thật của thiết bị. Có 2 vị trí chèn tùy thuộc vào nền tảng:

**Cách 1: AOSP / Qualcomm / HyperOS Android 17 (Khuyến nghị)**
Chèn ngay đầu phương thức `run()V`:
```smali
.method private run()V
    .registers 20

    .line 975
    # [Kaorios Hook] Khởi tạo OmkService và RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    move-object/from16 v1, p0
    const-string/jumbo v0, "persist.sys.language"
```

**Cách 2: MediaTek (Trước `startOtherServices`)**
Chèn ngay trước khi gọi đến `startOtherServices(...)`:
```smali
    # [Kaorios Hook] Khởi tạo OmkService và RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

> **Lưu ý**: Các thanh ghi truyền vào `startOtherServices` có thể khác nhau tùy bản ROM; chỉ có vị trí tương đối là cố định. Mẫu tham chiếu đầy đủ: [`Template/Template_V2060/SystemServer.smali`](../Template/Template_V2060/SystemServer.smali).

---

## 7. Vá các tính năng tùy chọn

### 7.1 Ẩn trạng thái tùy chọn nhà phát triển (Hide Developer Status)

Chỉ áp dụng khi phương thức trong `Settings$NameValueCache` có descriptor trả về kiểu chuỗi `String`:

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Mã chèn:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0
:cond_kaorios_dev_stock
```

> **Lưu ý**: Hook trả về kiểu nguyên thủy `Z` (boolean), không trả về đối tượng `Boolean`. Phương thức gốc của ROM phải trả về `String`, không phải kiểu `Pair`. Nếu ROM của bạn có định danh khác thì không áp dụng đoạn mã này.

### 7.2 Ẩn danh sách ứng dụng theo ứng dụng gọi (Hide App Caller-Aware)

Phương thức cần can thiệp:

```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```

Trong đó các tham số tương ứng là: `p2` = UID tiến trình gọi (`callingUid`), `p4` = trạng thái gói mục tiêu (`targetPkgSetting`), `p5` = ID người dùng (`userId`):

```smali
move/from16 v0, p2
move-object/from16 v1, p4
if-eqz v1, :cond_kaorios_hide_stock
:try_start_kaorios_hide
invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
move/from16 v4, p5
invoke-static {v0, v3, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0
:try_end_kaorios_hide
.catch Ljava/lang/Throwable; {:try_start_kaorios_hide .. :try_end_kaorios_hide} :catch_kaorios_hide
:catch_kaorios_hide
:cond_kaorios_hide_stock
```

> **Lưu ý**: Các đối số truyền vào hook bắt buộc phải theo đúng thứ tự `{uid, resolver, targetPackage, userId}`. Tài liệu các bản cũ truyền `{resolver, uid, ...}` là sai thứ tự so với descriptor.

### 7.3 Giả lập nguồn cài đặt ứng dụng (Installer Source Spoof)

Mẫu tham chiếu `ComputerEngine.getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`: sau khi tên nguồn cài đặt gốc đã được lưu vào `v2`, UID tiến trình gọi nằm ở `v0`, và `userId` nằm ở `p2`:

```smali
:try_start_kaorios_installer
const/4 v5, 0x0
invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_end_kaorios_installer
.catch Ljava/lang/Throwable; {:try_start_kaorios_installer .. :try_end_kaorios_installer} :catch_kaorios_installer
return-object v2
```

> **Lưu ý**: Đối với các bản ROM không có sẵn `userId` ở `p2`, cần tính toán giá trị này thông qua `UserHandle.getUserId(callingUid)`.

### 7.4 Thay thế giá trị cài đặt hệ thống (Settings Replacement — Tùy biến theo ROM)

Chỉ thực hiện vá sau khi đã xác định rõ thanh ghi chứa namespace, tên khóa (key) và chuỗi giá trị (value) tại điểm trả về chung:

```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Nếu trong cấu hình JSON sử dụng giá trị `value:null`, cần gọi thêm phương thức `shouldRemoveSetting(...)Z` rồi chuyển sang cách biểu diễn trạng thái “không tồn tại” phù hợp với bản ROM của bạn. Tuyệt đối không dán đoạn mã này vào tất cả các nhánh `GET_*`.

### 7.5 Đường dẫn KeyStore2 qua bộ nhớ đệm (Cached KeyStore2 — Mặc định tắt)

Can thiệp qua Keystore SPI ở mục 5.3 và 5.4 là giải pháp chuẩn đã được kiểm chứng hoạt động ổn định. Chỉ nên vá mục này khi bạn biết chính xác thanh ghi chứa đối tượng `Landroid/system/keystore2/KeyDescriptor;`:

```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult
if-eqz vResult, :cond_kaorios_keystore_stock
return-object vResult
:cond_kaorios_keystore_stock
```

> **Lưu ý**: Kiểu dữ liệu chính xác là `android/system/keystore2`, không phải `android/security/keystore2`.

### 7.6 Vô hiệu hóa cờ bảo mật chống chụp màn hình (Bỏ FLAG_SECURE)

Gọi hàm kiểm tra `isSecureFlag()Z`. Nếu trả về `true`:
- Sửa `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z` để luôn trả về `1` (cho phép chụp ảnh màn hình).
- Sửa `WindowState[Animator].isSecureLocked()Z` để luôn trả về `0` (không khóa bảo mật hiển thị).
- Phương thức `setSecureLocked(Z)V` có thể cho kết thúc sớm (`return-void`).

Chi tiết xem tại tài liệu chuyên sâu: [Disable_Secure_Flag.md](Disable_Secure_Flag.md) và mẫu mã nguồn tham chiếu: [`Template/Template_V2060/WindowState.smali`](../Template/Template_V2060/WindowState.smali).

> **Lưu ý**: Chú ý không đảo ngược giá trị trả về của hai phương thức đầu.

---

## 8. Đóng gói lại Smali và ráp file JAR

Sau khi hoàn tất chỉnh sửa smali, tiến hành dịch ngược lại thành file DEX và cập nhật vào các file JAR hệ thống:

```bash
java -jar smali-3.0.8.jar a -a 37 work/fw3 -o work/framework/classes3.dex
java -jar smali-3.0.8.jar a -a 37 work/sv1 -o work/services/classes.dex

java -jar baksmali-3.0.8.jar list classes work/framework/classes3.dex >/dev/null
java -jar baksmali-3.0.8.jar list classes work/services/classes.dex >/dev/null
rg -n 'KaoriosHook;->' work/fw3 work/sv1
```

Cập nhật chính xác các file DEX đã sửa đổi vào bản sao của file JAR gốc; chú ý không làm mất các file tài nguyên khác nằm bên ngoài DEX. Các file JAR hệ thống không cần chạy căn chỉnh (zipalign). Nếu có sẵn mã nguồn ROM, nên tích hợp trực tiếp vào cây build để hệ thống biên dịch tự động sinh lại các file JAR và VDEX/ODEX đồng bộ.

---

## 9. Nạp vào thiết bị (Flash), bộ nhớ đệm (Cache) và khôi phục (Rollback)

Phương án an toàn nhất là biên dịch lại toàn bộ ảnh hệ thống (system image). Trong trường hợp thử nghiệm qua giải pháp overlay hoặc Module (Magisk / KernelSU):

1. **Luôn lưu trữ bản gốc**: Đảm bảo luôn có sẵn file gốc để có thể phục hồi từ chế độ Recovery khi phát sinh sự cố.
2. **Nạp đúng đường dẫn**: Đè chính xác file vào `/system/framework/framework.jar` và `/system/framework/services.jar`.
3. **Xử lý bộ nhớ đệm**: Chỉ xử lý các file VDEX/ODEX tương ứng đã xác định; không tùy tiện xóa toàn bộ `dalvik-cache` bằng các lệnh hàng loạt.
4. **Khởi động**: Chạy lệnh `sync`, khởi động lại máy (reboot) và chờ hệ thống tối ưu hóa mã (dexopt). Lần khởi động đầu tiên sau khi vá có thể lâu hơn bình thường.

> **Xử lý sự cố**: Nếu thiết bị bị treo logo (bootloop), hãy khôi phục (rollback) đồng thời cả bộ file JAR cùng các file VDEX/ODEX gốc đi kèm, tuyệt đối không dùng lẫn file JAR mới với file oat/odex cũ.

---

## 10. Bảng chẩn đoán và xử lý các lỗi thường gặp

| Triệu chứng | Nguyên nhân thường gặp | Hướng kiểm tra & Khắc phục |
|---|---|---|
| **Treo logo (Bootloop)** | Sai thanh ghi, sai định danh (descriptor) hoặc file DEX bị lỗi cú pháp khi assemble | Khôi phục lại `services.jar` trước; dịch ngược lại file DEX vừa đóng gói và kiểm tra log verifier của Android |
| **Toolbox không nhận diện được framework** | File DEX chưa được nạp vào boot classpath, trùng lặp lớp, hoặc file oat/odex chưa đồng bộ | Tìm kiếm lớp trong file JAR thành phẩm và đồng bộ lại các file VDEX/ODEX tương ứng |
| **Tính năng GEN không chạy (không tạo key)** | Hook bị đặt sau lệnh `getSecurityLevel()`, hoặc tính năng keybox bị tắt / file keybox rỗng | Kiểm tra lại điểm chèn ở đầu phương thức `generateKeyPair`, kiểm tra cấu hình trong Settings và logcat của OMK |
| **Chứng chỉ LEAF không thay đổi** | Bọc sai thanh ghi mảng chứng chỉ hoặc bỏ sót nhánh `return` | Xác định lại mảng `Certificate[]` cuối cùng ngay trước các lệnh trả về `return-object` |
| **Log PIF/Photos hiển thị chạy nhưng thông số Build không đổi** | Các trường trong `Build.smali` vẫn còn chứa từ khóa `final` | So sánh và kiểm tra lại file `Build.smali` và `Build$VERSION.smali` sau khi đóng gói |
| **Ẩn nhà phát triển (Hide-dev) không hoạt động** | Vá nhầm overload phương thức hoặc nhầm lẫn giữa kiểu `Boolean` và kiểu nguyên thủy `Z` | Phương thức đích trong ROM phải trả về `String`, hàm hook trả về kiểu nguyên thủy `Z` |
| **Ẩn ứng dụng (Hide-app) làm ẩn luôn chính ứng dụng gọi** | Sử dụng mã hook phiên bản cũ hoặc truyền sai thứ tự tham số | Định danh bắt buộc phải bắt đầu bằng chữ `I`; thứ tự tham số đúng: `uid, resolver, targetPackage, userId` |

---

## 11. Trình tự vá khuyến nghị từng bước

1. **Bước 1**: Thêm file DEX mới vào `framework.jar`, xử lý các lớp trùng lặp (nếu có), sau đó nạp vào máy và khởi động thử.
2. **Bước 2**: Vá điểm móc tại `SystemServer.initSystemServer` trong `services.jar`, sau đó khởi động lại kiểm tra.
3. **Bước 3**: Vá `Instrumentation`, xóa thuộc tính `final` của các trường trong Build và vá `hasSystemFeature`, sau đó kiểm tra tính năng giả lập PIF và Google Photos.
4. **Bước 4**: Vá hai điểm móc Keystore SPI (`generateKeyPair` và `engineGetCertificateChain`), kiểm tra tính năng hoạt động ở các chế độ `gen`, `leaf` và `auto`.
5. **Bước 5**: Vá tính năng ẩn nhà phát triển và ẩn danh sách ứng dụng, sử dụng một ứng dụng thử nghiệm để kiểm tra.
6. **Bước 6**: Vá tính năng giả lập nguồn cài đặt, thay thế cài đặt hệ thống và vô hiệu hóa FLAG_SECURE ở bước cuối cùng vì đây là các phần phụ thuộc nhiều nhất vào cấu trúc của từng bản ROM.

> [!IMPORTANT]
> Tuyệt đối không nên vá dồn tất cả các mục rồi mới nạp vào máy một lần. Nếu xảy ra lỗi treo logo, bạn sẽ không thể khoanh vùng được điểm móc nào đang bị lỗi.
