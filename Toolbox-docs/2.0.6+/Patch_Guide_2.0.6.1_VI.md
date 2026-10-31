# Kaorios Toolbox 2.0.6.1 — Patch ROM bằng tay (Android 13–17)

[English](Patch_Guide_2.0.6.1.md) | [Patcher tự động](Patcher_Guide_2.0.6.1_VI.md) | [Trạng thái và giới hạn Secure Flag](Disable_Secure_Flag_VI.md)

**Cảnh báo bootloop:** recipe Kaorios cũ (guide 2.0.6.0 và asset 2.0.6.1 ban đầu) patch `SettingsProvider.apk` để gọi các method `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) mà `classes.dex` 2.0.6.1 hiện tại không còn định nghĩa. System process sẽ ném `NoSuchMethodError`, nhiều khả năng gây bootloop. Nếu `SettingsProvider.apk` của ROM này từng được patch bằng recipe Kaorios cũ, khôi phục `SettingsProvider.apk` stock của cùng build ROM **trước khi** import `classes.dex` 2.0.6.1 hiện tại. Không dùng lại file provider đã patch trước đây.

**Sửa gì:** bản sao `framework.jar` và `services.jar` **cùng build ROM được phép sửa**. Giữ stock nguyên bản và SHA-256 riêng ngoài workspace; chuẩn bị cách khôi phục trước khi thay đổi trên thiết bị. Dùng editor multidex và công cụ smali tương thích DEX đầu vào. Giữ nguyên `SettingsProvider.apk`. Không dùng đường dẫn stock làm output.

**Tìm class trước:** liệt kê mọi `classes*.dex` trong hai JAR, disassemble từng split riêng, tìm **đúng một DEX** chứa class và method theo chữ ký dưới đây. Chỉ sửa split owner đó. Snippet bên dưới mô tả logic chèn, **không phải class để chép đè ROM**. Tìm owner từ ROM thật; không mặc định payload nằm ở `classes6.dex`. Dừng nếu owner trùng, thiếu method cần thiết hoặc luồng ROM khác ví dụ.

**Trước khi chèn:** kiểm tra `.locals`/`.registers`, alias `pN`/`vN` và cấp đủ local trống. Nếu thêm locals khiến parameter dịch vị trí, chuyển alias `vN` cũ của parameter sang `pN` *trước* khi tăng số rồi kiểm tra mọi lệnh stock còn mã hóa được. `invoke {…}` thường chỉ dùng register vật lý ≤15; `/range` cần operand liên tiếp. `move-result` phải ngay sau `invoke`. Hook đầu method đặt sau metadata `.param`/`.annotation` và **trước label/lệnh stock đầu tiên**. Dùng nhãn fallback chưa có trong method. Dòng stock trong ví dụ chỉ là **mốc vị trí**, không chèn lặp. Nếu không chứng minh được các điều kiện này, dừng thay vì chép snippet nguyên xi.

**Đã bỏ hook Keystore (2026-10-31):** guide này không còn patch `AndroidKeyStoreKeyPairGeneratorSpi` hay `AndroidKeyStoreSpi`. Source hiện tại định nghĩa các helper đó là stub — `CertificateChainIfNeeded` trả lại đúng chain đầu vào, `initGenerateSoftwareKeyPair`, `OnGetKeyEntry`, `generateKey` trả `null`, `Remove` rỗng — nên recipe §2.4/§2.5 cũ vẫn assemble và vẫn verify được, nhưng mọi lời gọi chèn vào đều trả giá trị stock.

Asset `classes.dex` của release v2.0.6.1 đã được thay ngày 2026-10-31 bằng bản build từ source hiện tại, nên giờ khớp với guide này: `CertificateChainIfNeeded` trả lại đúng chain đầu vào ở cả hai overload và đường Keystore là stock. Asset cũ (SHA-256 `94848e18…`, 858.636 byte) publish trước lần gỡ đó và có rewrite certificate chain; nếu bản bạn đang giữ mang hash đó thì đó là bản cũ — bỏ đi và tải lại. Xác minh hash trước khi import.

**Payload:** mọi hook bên dưới đều resolve tới public static method trong bản build từ source hiện tại (`classes.dex`, 91.160 byte, SHA-256: `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`), cũng chính là artifact mà release v2.0.6.1 phát hành. Xác minh hash của đúng DEX đã import và đối chiếu descriptor callee với payload đó trước khi flash.

**ROM stock hoặc đã patch:** dùng source public hiện tại cho hướng dẫn này. Với bản đã patch, kiểm kê mọi DEX và giữ class/hook OEM ngoài phạm vi; không reset cả class hoặc chèn hook lần hai. Patcher smali nhận diện hook cũ đã qua verify; `--update` chỉ dành cho cập nhật được hỗ trợ, không ép layout lạ. Nếu hook cũ không rõ, khôi phục file liên quan từ đúng ROM stock rồi làm lại. Luôn khôi phục SettingsProvider cũ đã patch như cảnh báo trên.

**Điều kiện toolchain:** Android 13–17 là lựa chọn layout hook, không bảo đảm hỗ trợ mọi DEX. Với trường hợp DEX 040 đã cung cấp, script dựng artifact dùng `--api 37 --smali-api 34`; API phân tích đích và assemble tách riêng vì smali 3.0.8 từ chối assemble bằng API 37 (`dexVersion must be within [0, 999]`). Điều này không xác nhận tương thích DEX 041/container hay CompactDex. Kiểm tra định dạng đầu vào và khả năng công cụ; không hỗ trợ thì dừng. Không sửa magic/header DEX để giả định dạng.

## 1. Import payload — `framework.jar`

Lấy một payload DEX và kiểm tra SHA-256. Bản build từ source hiện tại và [asset v2.0.6.1](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex) là cùng một artifact: `classes.dex`, 91.160 byte, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, giữ nguyên class Keystore stock. Kiểm bằng `sha256sum`. APK quản lý dùng bản stable [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0). Archive patcher [kaorios-patcher-2.0.6.1.zip](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/kaorios-patcher-2.0.6.1.zip) được đính kèm cùng release (SHA-256 `af833879dede9ca87afb07d70bccb59d8673f4bcac9155e585a89f31695f5dea`); cũng có thể tự dựng từ checkout source public đã review bằng `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` tại gốc repo public.

Kiểm kê **mọi class payload trên mọi DEX đầu vào**. Với từng descriptor chính xác của payload mới, chỉ thay class đó trong owner DEX cũ; payload cũ có thể nằm ở nhiều owner. Descriptor thật sự mới thì thêm vào split phù hợp. Dừng nếu owner trùng. Không xóa cả namespace `android/security/kaorios`: phải giữ class OEM không nằm trong payload mới. Không chép payload `classes.dex` đè lên cả DEX stock còn chứa class ROM khác. Dựng lại mọi DEX owner đã sửa. Xác nhận mỗi class payload xuất hiện đúng một lần và class stock còn lại nguyên vẹn. Class obfuscate cũ không khớp descriptor mới không tự bị xóa; dọn chúng không an toàn nếu chưa xác minh ownership. Chỉ import payload vào `framework.jar`; `services.jar` giữ nguyên các class ROM của nó. Import không tự chèn ROM hook.

## 2. Hook trong `framework.jar`

### 2.1 Context — `Instrumentation`

**Class:** `Landroid/app/Instrumentation;`.

**Methods:** `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` **và** `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`.

**Chèn:** sau `Application.attach(Context)` gốc trên mỗi đường trả app đã attach, dùng **chính register Context** của lời gọi attach. Với overload thứ nhất static dùng `p1`, overload thứ hai instance dùng `p3` (chỉ khi ROM thực tế đúng vậy):

```smali
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Dùng `/range {pN .. pN}` nếu Context nằm ở register vật lý >15. Giữ `attach`/`return` gốc; không chèn giữa `invoke` và `move-result`. Vị trí patch tay này và vị trí trước return của patcher là **hai lựa chọn thay thế**, không chèn cả hai.

### 2.2 Khởi tạo process — `ActivityThread`

**Class:** `Landroid/app/ActivityThread;`. **Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

**Chèn:** ngay sau phép gán stock cho `mBoundApplication`; truyền operand **đầu tiên** của `iput-object` (AppBindData), không truyền `this`. Ví dụ nếu là `v9`:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không lặp `iput-object`; nếu operand >15 dùng `/range {reg .. reg}`. Xác nhận payload đã import có overload nhận `Ljava/lang/Object;`.

### 2.3 Hook system feature đã gỡ (2026-10-31)

Công thức §2.3 trước đây patch `Landroid/app/ApplicationPackageManager;` → `hasSystemFeature(Ljava/lang/String;I)Z`. Không chèn nữa. `KaoriosHooks.hasSystemFeature` luôn trả `null`, nên lời gọi được chèn là passthrough chắc chắn: không thay đổi gì, nhưng vẫn tốn một register local và có thể buộc đổi sang `invoke-static/range` mà vô ích.

Facade `KaoriosHook.hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` **vẫn còn trong payload** và phải giữ nguyên. ROM đã patch bởi công thức Kaorios cũ vẫn gọi method này; xóa nó sẽ làm `ApplicationPackageManager` ném `NoSuchMethodError` trong mọi tiến trình app. Để nguyên facade, và để nguyên method stock chưa patch. Không có control UI nào cho hook này và cũng không có nguồn cấu hình feature-set, nên không có gì để cấu hình.

## 3. Hook trong `services.jar`

### 3.1 Khởi tạo server — `SystemServer`

**Class:** `Lcom/android/server/SystemServer;`. **Method:** `run()V`.

**Chèn:** ngay **trước** `Looper.loop()V` *chính* ở cuối khởi động service:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

`Looper.loop()` là dòng stock có sẵn; không thêm lần hai hoặc chọn nhầm loop khác.

### 3.2 HMA visibility — `ComputerEngine`

**Class:** `Lcom/android/server/pm/ComputerEngine;`.

**Method:** `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z`, hoặc overload `(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` **thực sự được ROM gọi**.

**Chèn:** đầu method, cần local trống `v0`. Chữ ký đầu dùng `p2` là UID caller, `p5` là user:

```smali
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
```

Với overload 3 tham số, dùng **`p3` thay `p5`**. Nếu operand của invoke thường >15, dùng `/range` với **ba local trống liên tiếp** `(UID caller, package name, user)`; `invoke-interface/range {p1 .. p1}` nếu cần. Không đổi lời gọi ba operand thành `/range` mà chưa sắp register. Ví dụ nếu local cũ kết thúc ở `v19` và đã cấp riêng `v20..v22`:

```smali
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v21
    if-eqz v21, :kaorios_visibility_stock
    move/16 v20, p2
    move/16 v22, p5
    invoke-static/range {v20 .. v22}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v20
    if-eqz v20, :kaorios_visibility_stock
    const/16 v20, 0x1
    return v20
    :kaorios_visibility_stock
```

Ví dụ này tăng `.locals 20` thành `.locals 23` **sau** khi xử lý alias tham số cũ và kiểm tra mọi operand stock. Đừng dùng khi ROM có register khác mà chưa tính lại. Không patch overload `SharedUserSetting` không liên quan. Package null/hook false thì đi tiếp stock.

### 3.3 Tên installer (có điều kiện) — `ComputerEngine`

**Methods:** `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` và `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;` (một số ROM dùng overload chỉ nhận String). Chỉ cần bước này nếu ROM thật **dùng những API đọc này**. Mode 1 tự thử patch một cặp chữ ký/layout được hỗ trợ; từ chối cặp chỉ có một method; overload khác có thể vẫn chưa patch. Không đoán từ tên method tương tự hoặc API vắng mặt.

**Ở đầu mỗi method:** dành riêng **năm local mới liên tiếp** `(resolver=null, UID caller, user ID, package đích, tên installer)`. Ví dụ `v10..v14` cho chữ ký `(String,int)`:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Lấy UID caller **trước** `clearCallingIdentity()`. Với overload chỉ nhận String, thay `move/16 v12, p2` bằng `invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I` và `move-result v12` sát nó. Giữ `v10..v13` không bị stock ghi đè tới điểm dùng hook.

**Trong `getInstallerPackageName`:** tìm return stock của **tên installer thật** sau nhánh visibility/null. Nếu là `return-object v2`, chỉ thay return đó bằng:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

**Trong `getInstallSourceInfo`:** lần theo `mInstallerPackageName` tới đối số **installing-package** của constructor. Đặt hook **ngay trước** `InstallSourceInfo.<init>` sau khi stock xác định tên, chỉ thay operand đó bằng kết quả. Nếu method này có năm local riêng `v14..v18` và đối số installer là `v8` (mẫu A17):

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

Dòng constructor là **stock**, không thêm lại. Ví dụ chỉ đúng nếu `v14..v17` đã được khởi tạo ngay trong method này và không bị đổi. Nếu constructor, nguồn tên hoặc local của ROM khác/không chứng minh được an toàn thì dừng; giữ nguyên nhánh null/lỗi.

## 4. Trạng thái developer/ADB và bước tùy chọn

- **Trạng thái developer/ADB:** `framework.jar` → `Landroid/provider/Settings$NameValueCache;` → `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`. Chèn đầu method, cần local trống `v0`:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` là key; key null/hook false thì theo stock. Patcher mode 1 và pipeline artifact framework hiện tại có guard đầu method này. Policy helper chỉ ẩn `adb_enabled`, `adb_wifi_enabled` và `development_settings_enabled`; chỉ đổi giá trị được báo, **không tắt ADB thật**. Đây **không phải** sửa `SettingsProvider.apk`.

- **Build spoof Android 17:** Trong `framework.jar`, `Landroid/os/Build;`: bỏ `final` và đặt String initializer `null` cho `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`; chỉ bỏ `final` của `TIME:J`. Với `Landroid/os/Build$VERSION;`, chỉ bỏ `final` của `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Giữ nguyên `SDK_INT` và `<clinit>`. Ví dụ `.field public static final BRAND:Ljava/lang/String; = "OEM"` → `.field public static BRAND:Ljava/lang/String; = null`. Mode 2 tự sửa những field này, không thêm các hook khác.
- [Secure Flag](Disable_Secure_Flag_VI.md) chỉ có hướng dẫn giới hạn, chưa có recipe `captureDisplay` chung; [CorePatch](CorePatch_VI.md) có guide riêng. Mode 1 không tự thêm hai phần này.
- **Kaorios Helper** là [module Zygisk cài riêng](https://github.com/hzzmonetvn/KaoriosHelper), **không phải** hook trong framework/services hay script dựng artifact. Module giữ ROM stock; **không bật HMA Helper cùng hook HMA đã patch ROM**. Cách cài/kiểm tra runtime nằm trong README đó.

## 5. Dựng và kiểm tra *JAR đã lưu*

1. Assemble **từng owner split đã sửa**, gồm split thêm payload. Tạo output khác stock, chỉ thay đúng entry `classes*.dex` trong bản sao JAR stock; giữ nguyên DEX chưa sửa và entry khác. Không chép class template hoặc payload DEX đè DEX stock còn class khác.
2. Mở lại **JAR output đã lưu** vào thư mục mới rỗng. So DEX đã assemble với DEX đóng gói, hash split chưa sửa và entry khác với stock. Disassemble DEX **trích từ JAR cuối**; kiểm tra mỗi class payload có một owner, class ROM còn nguyên, đúng method, vị trí hook, fallback, register và `move-result` kề invoke trên mọi nhánh đã sửa.
3. Kiểm tra chữ ký facade chính xác bằng `python3 -I script/verify-payload-abi.py <saved-output-smali-root> --payload-smali <payload-disassembled-root>` cho cả cây framework và services trích từ JAR đã lưu. Thiếu callee là lỗi chặn: không flash. Bước này kiểm chữ ký facade public static, không chứng minh logic hay toàn bộ liên kết dependency. Chạy [verifier framework/services/SystemServer](Patcher_Guide_2.0.6.1_VI.md#5-kiểm-tra-jar-đã-lưu) phù hợp, kiểm đủ ba caller framework bắt buộc kể cả khi dùng `--caller-only`; tự xem installer/tùy chọn ngoài vùng verifier và mọi giả định runtime. Ghi rõ phần thực sự đã kiểm. Nếu lỗi, bỏ workspace dở và làm lại từ stock sạch. Test host **không** chứng minh ROM boot hay tính năng hoạt động trên máy; ký/flash/sửa thiết bị cần được cho phép riêng và có cách khôi phục.

Ba caller framework bắt buộc là `ActivityThread`, `Instrumentation` và `Settings$NameValueCache`. `ApplicationPackageManager` không được patch: facade `hasSystemFeature` vẫn tồn tại trong payload để tương thích với ROM đã patch trước đó, nhưng source hiện tại trả `null`, nên không có gì để chèn. `AndroidKeyStoreSpi` và `AndroidKeyStoreKeyPairGeneratorSpi` không còn bắt buộc hay được patch: source hiện tại giữ cả hai class theo hành vi Android stock.
