# Kaorios Toolbox Framework 2.0.6.0 — Hướng dẫn patch cho người mới

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Smali tham khảo từ một bản HyperOS Android 17 đã patch hoàn chỉnh: [`Template/Template_V2060`](../Template/Template_V2060)

> [!IMPORTANT]
> Hướng dẫn này giả định bạn bắt đầu từ **`framework.jar` và `services.jar` stock sạch của đúng bản ROM đích**.
>
> Nếu các file đó đã từng được patch bởi Kaorios, framework mod khác, hoặc một bản patch thủ công cũ, tài liệu này **không** cố phát hiện, gỡ hay merge các thay đổi cũ. Hãy khôi phục file stock sạch trước, hoặc tự xử lý phần merge.

Tài liệu được sắp xếp theo đúng thứ tự phù hợp cho người mới: thêm DEX Kaorios, patch các hook framework bắt buộc, patch `SystemServer`, rebuild và boot-test, sau đó mới thêm các hook tùy chọn.

---

## 1. Cần chuẩn bị gì

Trước khi chỉnh sửa, hãy chuẩn bị:

- Một bản sạch của `/system/framework/framework.jar` từ ROM đích.
- Một bản sạch của `/system/framework/services.jar` từ ROM đích.
- File artifact `classes.dex` của Kaorios Framework 2.0.6.0.
- `smali` và `baksmali`.
- Công cụ ZIP/JAR như `7z`, `zip` hoặc `unzip`.
- Công cụ tìm kiếm text như `rg` (ripgrep).
- Phương án cứu máy nếu ROM bootloop.

Luôn giữ riêng bản JAR gốc. Không thử nghiệm bằng bản duy nhất bạn có.

### Người dùng Android 17

Dùng **smali/baksmali 3.x trở lên** với API 37. Hãy đọc [`notes-a17_VI.md`](notes-a17_VI.md) trước khi patch Android 17 vì lớp `Build` cần thêm một thay đổi riêng.

---

## 2. Hiểu đúng file mình đang sửa

`framework.jar` và `services.jar` có thể chứa nhiều DEX:

```text
classes.dex
classes2.dex
classes3.dex
...
```

Một class có thể nằm ở bất kỳ DEX nào trong số đó. **Không được** mặc định rằng class luôn nằm ở `classes3.dex` chỉ vì template tham khảo dùng bố cục đó.

Bạn chỉ cần disassemble đúng DEX chứa class cần sửa.

Ví dụ giải nén nhanh:

```bash
mkdir -p work/framework work/services
unzip -q framework.jar -d work/framework
unzip -q services.jar -d work/services
```

Trên Android 17, một lệnh disassemble điển hình là:

```bash
java -jar baksmali-3.0.8.jar d work/framework/classes3.dex --api 37 -o work/fw3
java -jar baksmali-3.0.8.jar d work/services/classes.dex --api 37 -o work/sv1
```

Hãy lặp lại với đúng `classes*.dex` của ROM bạn đang làm.

> [!NOTE]
> Số thứ tự DEX và số register trong ví dụ chỉ là ví dụ. Hãy bám theo class, descriptor của method và đoạn lệnh xung quanh trong **chính ROM của bạn**.

---

## 3. Thêm Kaorios Framework DEX

Nên làm bước này trước khi thêm hook.

1. Mở `framework.jar` stock sạch.
2. Kiểm tra số DEX lớn nhất hiện có.
3. Đổi tên artifact `classes.dex` của Kaorios 2.0.6.0 thành **số DEX tiếp theo chưa dùng**.
4. Thêm file đó vào thư mục gốc của `framework.jar`.
5. Giữ nguyên toàn bộ DEX stock.

Ví dụ nếu `framework.jar` stock có:

```text
classes.dex
classes2.dex
classes3.dex
classes4.dex
classes5.dex
classes6.dex
```

thì đổi Kaorios DEX thành:

```text
classes7.dex
```

rồi thêm `classes7.dex` vào `framework.jar`.

**Không thay thế DEX stock bằng DEX Kaorios.**

Vì tài liệu này chỉ áp dụng cho file sạch, `Landroid/security/kaorios/KaoriosHook;` không nên tồn tại sẵn trong framework stock. Nếu class này đã tồn tại, hãy dừng lại: bạn không còn ở trạng thái đầu vào mà tài liệu giả định nữa.

### Boot-test lần đầu

Nếu có thể, hãy boot-test một lần chỉ với DEX Kaorios mới được thêm vào và chưa patch smali. Như vậy nếu có lỗi, bạn sẽ biết đó là lỗi đóng gói DEX hay lỗi hook.

---

## 4. Descriptor hook chuẩn của 2.0.6.0

Các chữ ký dưới đây phải được gõ đúng tuyệt đối:

| Tính năng | Descriptor hook Kaorios |
|---|---|
| Khởi tạo app | `initContext(Landroid/content/Context;)V` |
| Khởi tạo `system_server` | `initSystemServer()V` |
| Giả lập system feature | `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` |
| Tạo software key | `initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;` |
| Thay certificate chain | `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` |
| Cached KeyStore2 entry, tùy chọn | `OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;` |
| Ẩn developer status | `shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Ẩn app list | `shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Giả lập installer source | `filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Thay giá trị Settings | `filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Xóa một setting | `shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z` |
| Tắt `FLAG_SECURE` | `isSecureFlag()Z` |

Sai thứ tự tham số hoặc sai kiểu trả về có thể vẫn assemble được nhưng crash khi runtime, vì vậy hãy copy descriptor chính xác.

---

# Phần A — Các patch bắt buộc

## 5. `framework.jar`: khởi tạo Kaorios cho từng app

### Class

```smali
Landroid/app/Instrumentation;
```

Thường có hai overload của `newApplication`. Hãy patch những overload nào thực sự tồn tại trong ROM của bạn.

### Method A

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Tìm lệnh gọi `Application.attach()` có sẵn. Chèn Kaorios call **sau `attach()` và trước khi trả về Application**:

```smali
invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

return-object v0
```

### Method B

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Dùng tham số `Context` của overload này:

```smali
invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

return-object v0
```

> [!WARNING]
> Không được chuyển `initContext()` lên trước `Application.attach()`.

Hook này cần cho các tính năng phía app như PIF/property spoof, Google Photos spoof, game props và các hành vi theo từng app.

---

## 6. `framework.jar`: hook `hasSystemFeature`

### Class

```smali
Landroid/app/ApplicationPackageManager;
```

### Method

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Chèn đoạn này gần đầu method, sau khai báo register/local và trước phần xử lý feature stock:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock

invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

Cách hoạt động:

- Hook trả về `null` -> tiếp tục chạy logic stock của ROM.
- Hook trả về `Boolean` -> dùng luôn giá trị đó.

Kiểu trả về của hook là **`Ljava/lang/Boolean;`**, không phải primitive `Z`.

> [!NOTE]
> Ví dụ dùng `v0`. Hãy chắc rằng `v0` dùng được ở vị trí này trong method của ROM bạn. Không tăng `.registers` một cách mù chỉ để có thêm register tạm.

---

## 7. `framework.jar`: hook software key generation

### Class

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

### Method

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Chèn hook ở **đầu method**, trước khi code stock gọi `getSecurityLevel()` hoặc bắt đầu luồng tạo hardware-backed key.

Template Android 17 tham khảo có một object local trống ở `v14`:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios_gen_stock
return-object v14

:cond_kaorios_gen_stock
```

Cách hoạt động:

- Trả về khác `null` -> Kaorios đã tạo key, trả về luôn.
- Trả về `null` -> tiếp tục chạy method stock.

### Cảnh báo về register

`v14` **không phải giá trị dùng chung cho mọi ROM**. Nó chỉ đúng với template Android 17 đang cung cấp.

Không dùng lại quy tắc cũ kiểu "tăng `.registers` thêm 1 rồi lấy `registers - 2`" nếu chưa kiểm tra method. Tăng `.registers` có thể làm thay đổi ánh xạ parameter register nếu method gốc còn tham chiếu tham số bằng `vN`.

Với ROM khác, hãy dùng một object local thật sự đang trống hoặc tự điều chỉnh method cẩn thận.

---

## 8. `framework.jar`: hook certificate chain

### Class

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

### Method

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Gần cuối method, tìm đoạn leaf certificate được đưa vào mảng `Certificate[]` cuối cùng, sau đó truyền **chính mảng đó** qua Kaorios trước khi return.

Mẫu thường gặp:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

Điểm quan trọng không phải số register. Quan trọng là register truyền vào `CertificateChainIfNeeded()` phải là register đang giữ `Certificate[]` cuối cùng.

> [!WARNING]
> Không truyền `{p0, p1}` vào hook này. Hook chỉ nhận đúng một tham số `Certificate[]`.

Nếu method có nhiều nhánh `return-object` hợp lệ, hãy hook từng nhánh chain cuối cùng hoặc chuyển các nhánh đó về một điểm return chung đã hook.

---

## 9. Chỉ Android 17: cho phép ghi các trường `Build` cần thiết

Trên Android 17, Kaorios không thể thay selected `Build` values một cách ổn định khi các trường đó vẫn là `static final`.

Nếu ROM đích là Android 17 / SDK 37, làm đầy đủ hướng dẫn trong:

[`notes-a17_VI.md`](notes-a17_VI.md)

Bạn sửa `Build.smali` và `Build$VERSION.smali` stock của ROM đích, không sửa DEX Kaorios.

Android 12-16 có thể bỏ qua mục này.

---

## 10. `services.jar`: khởi tạo Kaorios trong `SystemServer`

### Class

```smali
Lcom/android/server/SystemServer;
```

Mục tiêu là gọi:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

một lần trong quá trình `system_server` khởi động.

### Mẫu A — AOSP / Qualcomm / template HyperOS Android 17 hiện tại

Chèn gần đầu `run()V`:

```smali
.method private run()V
    .registers 20

    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    # code gốc của ROM tiếp tục ở đây
```

### Mẫu B — MediaTek / ROM có cấu trúc khác template

Một vị trí thực tế dễ dùng là ngay trước lệnh gọi `startOtherServices(...)` có sẵn:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Register mà ROM dùng cho `startOtherServices` có thể khác. **Không copy `{v1, v3}` nếu method gốc của bạn không dùng đúng chúng ở đó.** Chỉ vị trí tương đối của hook là quan trọng.

Hook này khởi tạo các thành phần system-side của Kaorios, bao gồm OMK / RootOfTrust.

### Boot-test ở đây

Đến thời điểm này bạn nên có:

- DEX Kaorios đã nằm trong `framework.jar`;
- `Instrumentation` đã patch;
- `hasSystemFeature` đã patch;
- hai hook KeyStore SPI đã patch;
- các field `Build` Android 17 đã xử lý nếu cần;
- `SystemServer` đã patch.

Hãy rebuild và boot-test trước khi thêm tính năng tùy chọn.

---

# Phần B — Patch tùy chọn

Các hook tùy chọn phụ thuộc nhiều hơn vào cách OEM triển khai framework. Chỉ patch sau khi phần core đã boot ổn định.

## 11. Ẩn Developer Options / trạng thái ADB

### Class

```smali
Landroid/provider/Settings$NameValueCache;
```

Dùng overload trả về `String`:

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Mẫu hook:

```smali
if-eqz p2, :cond_kaorios_dev_stock

invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0

if-eqz v0, :cond_kaorios_dev_stock

const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Hook Kaorios trả về primitive `Z`. Method ROM bạn patch phải trả về `Ljava/lang/String;`.

Nếu ROM có overload khác hoặc trả về `Pair`, không paste đoạn này nguyên xi.

---

## 12. Ẩn danh sách app theo caller

Một điểm hook tham khảo trên Android 17 là:

```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```

Trong layout tham khảo:

- `p2` = calling UID
- `p4` = target package state
- `p5` = user ID

Mẫu hook:

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

Thứ tự đối số của hook bắt buộc là:

```text
callingUid, resolver, targetPackageName, userId
```

Không dùng lại patch cũ truyền `resolver` trước.

Vì nội bộ Package Manager thay đổi giữa các Android/OEM, chỉ dùng [`Template/Template_V2060/AppsFilterBase.smali`](../Template/Template_V2060/AppsFilterBase.smali) để tham khảo, không copy nguyên class sang ROM khác.

---

## 13. Giả lập nguồn cài đặt

Một class tham khảo là:

```smali
Lcom/android/server/pm/ComputerEngine;
```

method:

```smali
getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
```

Sau khi ROM đã tính ra installer package name stock, truyền giá trị đó qua:

```smali
:try_start_kaorios_installer
const/4 v5, 0x0

invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_end_kaorios_installer
.catch Ljava/lang/Throwable; {:try_start_kaorios_installer .. :try_end_kaorios_installer} :catch_kaorios_installer

return-object v2
```

Đây là ví dụ register của ROM tham khảo. Trước khi áp dụng, hãy xác định trong method của bạn:

1. calling UID;
2. user ID;
3. package đang được truy vấn;
4. installer package name stock.

Nếu chưa có user ID, tính từ calling UID bằng `UserHandle.getUserId(callingUid)`.

---

## 14. Thay hoặc xóa giá trị Settings

Patch này cố ý để theo từng ROM. Không inject mù vào mọi đường đọc Settings.

Khi đã xác định register chứa:

- namespace;
- setting name;
- chuỗi value trả về;

hãy truyền chúng qua:

```smali
const/4 vC, 0x0

invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Với cấu hình biểu diễn xóa setting (`value: null`), dùng thêm:

```smali
shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
```

rồi ánh xạ kết quả về cách ROM đích biểu diễn setting không tồn tại.

`vC`, `vNs`, `vName`, `vValue` ở trên chỉ là ký hiệu giải thích, **không phải register literal để paste**.

---

## 15. Cached KeyStore2 entry — tùy chọn, thường nên bỏ qua

Hai patch KeyStore SPI ở mục 7 và 8 là luồng tích hợp tiêu chuẩn.

Chỉ dùng cached-entry hook khi bạn đã xác định đúng object kiểu:

```smali
Landroid/system/keystore2/KeyDescriptor;
```

Mẫu:

```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult

if-eqz vResult, :cond_kaorios_keystore_stock
return-object vResult

:cond_kaorios_keystore_stock
```

Package đúng là `android/system/keystore2`, không phải `android/security/keystore2`.

---

## 16. Tắt `FLAG_SECURE` — tùy chọn

Tính năng này dùng:

```smali
Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
```

Tùy ROM, phần triển khai có thể liên quan tới:

- `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z`;
- logic secure-state trong `WindowState` / `WindowStateAnimator`;
- `setSecureLocked(Z)V`.

Hãy dùng tài liệu riêng thay vì suy đoán patch từ trang này:

[`Disable_Secure_Flag.md`](Disable_Secure_Flag.md)

Các file tham khảo cũng có trong [`Template/Template_V2060`](../Template/Template_V2060).

---

# Phần C — Rebuild và test

## 17. Chỉ assemble lại những DEX đã sửa

Ví dụ Android 17:

```bash
java -jar smali-3.0.8.jar a -a 37 work/fw3 -o work/framework/classes3.dex
java -jar smali-3.0.8.jar a -a 37 work/sv1 -o work/services/classes.dex
```

Sau đó kiểm tra DEX đọc lại được:

```bash
java -jar baksmali-3.0.8.jar list classes work/framework/classes3.dex >/dev/null
java -jar baksmali-3.0.8.jar list classes work/services/classes.dex >/dev/null
```

Tìm hook thêm một lần cuối trong output smali:

```bash
rg -n 'Landroid/security/kaorios/KaoriosHook;->' work/fw3 work/sv1
```

Chỉ thay các DEX đã chỉnh sửa vào bản sao của JAR gốc. Giữ nguyên mọi entry khác trong JAR và toàn bộ DEX chưa đụng tới.

System framework JAR không cần `zipalign`.

---

## 18. Flash / cài đặt an toàn

Cách deploy JAR đã patch phụ thuộc hệ thống build ROM, recovery, Magisk/KernelSU overlay hay cách repack image của bạn.

Những nguyên tắc quan trọng:

1. Luôn giữ `framework.jar` và `services.jar` stock sạch để rollback.
2. Chỉ thay đúng đường dẫn hệ thống.
3. Không trộn JAR mới với optimized artifacts cũ được giữ thủ công nếu phương pháp deploy của bạn yêu cầu chúng đồng bộ.
4. Không xóa hàng loạt ART / dalvik cache bằng wildcard chỉ vì một guide nào đó bảo làm vậy.
5. Lần boot đầu sau khi đổi framework có thể lâu hơn bình thường.

Nếu bạn build ROM từ source, nên tích hợp thay đổi vào cây build và để build system tự sinh lại optimized artifacts.

---

## 19. Thứ tự patch khuyến nghị cho người mới

Không patch tất cả một lần.

1. Bắt đầu từ JAR stock sạch.
2. Chỉ thêm DEX Kaorios -> boot-test.
3. Patch `SystemServer.initSystemServer()` -> boot-test.
4. Patch `Instrumentation.newApplication()` và `hasSystemFeature()`.
5. Nếu là Android 17, patch các field `Build` theo [`notes-a17_VI.md`](notes-a17_VI.md) -> boot-test.
6. Patch `generateKeyPair()` và `engineGetCertificateChain()` -> test key generation / chain.
7. Thêm hide-dev và hide-app -> test riêng từng tính năng.
8. Thêm installer spoof, Settings filtering và `FLAG_SECURE` cuối cùng vì đây là phần phụ thuộc ROM nhiều nhất.

Làm theo thứ tự này giúp khoanh vùng bootloop dễ hơn rất nhiều.

---

## 20. Lỗi thường gặp

| Triệu chứng | Nguyên nhân có khả năng nhất | Cần kiểm tra |
|---|---|---|
| Bootloop ngay sau khi thay JAR | Smali sai, register sai, descriptor sai hoặc thay nhầm DEX | Disassemble lại DEX đã rebuild và xem verifier/logcat |
| `NoClassDefFoundError` / thiếu class Kaorios | DEX Kaorios chưa được thêm đúng hoặc flash nhầm JAR | Kiểm tra `classesN.dex` mới thực sự tồn tại trong `framework.jar` cuối |
| PIF / Photos có log hook nhưng `Build` không đổi trên Android 17 | Các field cần thiết trong `Build` vẫn còn `final` | Làm theo [`notes-a17_VI.md`](notes-a17_VI.md) và kiểm tra lại smali sau rebuild |
| Software GEN không chạy | Hook đặt quá muộn hoặc object register tạm sai | Đặt trước luồng stock `getSecurityLevel()` và kiểm tra register |
| Certificate chain không đổi | Truyền sai register vào `CertificateChainIfNeeded()` | Truyền đúng register đang giữ `Certificate[]` cuối |
| Hide-dev không chạy | Patch sai overload `getStringForUser` hoặc nhầm kiểu trả về | Target overload trả `String`; hook trả primitive `Z` |
| Hide-app ẩn sai app/caller | Dùng lại thứ tự tham số của patch cũ | Dùng `uid, resolver, targetPackageName, userId` |

---

## 21. Checklist cuối

Trước khi coi ROM đã hoàn tất, xác nhận:

- [ ] Bắt đầu từ `framework.jar` và `services.jar` stock sạch.
- [ ] DEX Kaorios được thêm thành `classesN.dex` tiếp theo, không thay DEX stock.
- [ ] `Instrumentation.newApplication()` gọi `initContext()` sau `Application.attach()`.
- [ ] `ApplicationPackageManager.hasSystemFeature()` dùng `Ljava/lang/Boolean;`.
- [ ] `generateKeyPair()` có thể trả về `KeyPair` từ Kaorios trước luồng hardware stock.
- [ ] `engineGetCertificateChain()` truyền đúng `Certificate[]` vào hook.
- [ ] Trên Android 17, các field `Build` cần thiết đã bỏ `final`, nhưng `SDK_INT` giữ nguyên.
- [ ] `SystemServer` gọi `initSystemServer()` đúng một lần.
- [ ] Mọi DEX đã sửa đều assemble và disassemble lại thành công.
- [ ] Core patch boot ổn trước khi thêm optional patch.

Nếu file stock sạch của ROM không khớp template tham khảo, hãy thích nghi patch theo control flow thực tế của ROM đích. Không thay nguyên class smali bằng class từ template.