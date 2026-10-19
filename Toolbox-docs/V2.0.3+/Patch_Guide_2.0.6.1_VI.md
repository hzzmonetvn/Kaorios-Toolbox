# Kaorios Toolbox 2.0.6.1 — Patch ROM bằng tay (Android 13–17)

[English](Patch_Guide_2.0.6.1.md) | [Patcher tự động](Patcher_Guide_2.0.6.1_VI.md) | [Trạng thái và giới hạn Secure Flag](Disable_Secure_Flag_VI.md) | [Trạng thái patch Google Flags](Google_Flags_VI.md)

**Cảnh báo bootloop:** recipe Kaorios cũ (guide 2.0.6.0 và asset 2.0.6.1 ban đầu) patch `SettingsProvider.apk` để gọi các method `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) mà `classes.dex` 2.0.6.1 hiện tại không còn định nghĩa. System process sẽ ném `NoSuchMethodError`, nhiều khả năng gây bootloop. Nếu `SettingsProvider.apk` của ROM này từng được patch bằng recipe Kaorios cũ, khôi phục `SettingsProvider.apk` stock của cùng build ROM **trước khi** import `classes.dex` 2.0.6.1 hiện tại. Không dùng lại file provider đã patch trước đây.

**Sửa gì:** bản sao `framework.jar` và `services.jar` **cùng build ROM được phép sửa**. Giữ stock nguyên bản và SHA-256 riêng ngoài workspace; chuẩn bị cách khôi phục trước khi thay đổi trên thiết bị. Dùng editor multidex và công cụ smali tương thích DEX đầu vào. Giữ nguyên `SettingsProvider.apk`. Không dùng đường dẫn stock làm output.

**Tìm class trước:** liệt kê mọi `classes*.dex` trong hai JAR, disassemble từng split riêng, tìm **đúng một DEX** chứa class và method theo chữ ký dưới đây. Chỉ sửa split owner đó. [Template theo Android](../Template/Template_V2060/README.md) là mẫu logic, **không phải class để chép đè ROM**. Dừng nếu owner trùng, thiếu method cần thiết hoặc luồng ROM khác ví dụ.

**Trước khi chèn:** kiểm tra `.locals`/`.registers`, alias `pN`/`vN` và cấp đủ local trống. Nếu thêm locals khiến parameter dịch vị trí, chuyển alias `vN` cũ của parameter sang `pN` *trước* khi tăng số rồi kiểm tra mọi lệnh stock còn mã hóa được. `invoke {…}` thường chỉ dùng register vật lý ≤15; `/range` cần operand liên tiếp. `move-result` phải ngay sau `invoke`. Hook đầu method đặt sau metadata `.param`/`.annotation` và **trước label/lệnh stock đầu tiên**. Dùng nhãn fallback chưa có trong method. Dòng stock trong ví dụ chỉ là **mốc vị trí**, không chèn lặp. Nếu không chứng minh được các điều kiện này, dừng thay vì chép snippet nguyên xi.

**Ranh giới payload:** Guide này bao phủ các hook được liệt kê với **payload pre-release 2.0.6.1 hiện tại** và không cài caller query-result Phenotype vào ROM, dù DEX thay thế có helper gọi được. Xem [trạng thái patch Google Flags](Google_Flags_VI.md) để biết bằng chứng cần có trước khi patch tính năng đó. Kiểm tra checksum release hiện tại; không dùng DEX chưa xác minh hoặc coi kết quả là bản patch ROM Google Flags đã hỗ trợ.

## 1. Import payload — `framework.jar`

Lấy [payload DEX pre-release 2.0.6.1 hiện tại](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex) và kiểm tra SHA-256 (`168b6da5706f32a35513818bce7f68cf3454c41478e23ed4706dc8e1e87e9330`); APK quản lý dùng bản stable [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0). DEX tải trước đó từ cùng URL có byte khác. Archive patcher tương ứng là [kaorios-patcher-2.0.6.1.zip](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/kaorios-patcher-2.0.6.1.zip) (SHA-256: `58ed595bf1789502e387e87b806dd418297bdb78a71bbc87adcb04fad1f17597`). Kiểm kê **mọi class payload**. Trong bản sao framework JAR, nếu descriptor đã có thì thay **class trong owner DEX cũ**; class mới thì thêm vào split phù hợp. Không chép payload `classes.dex` đè lên cả DEX stock còn chứa class ROM khác. Xác nhận mỗi class payload xuất hiện đúng một lần và class stock còn lại nguyên vẹn. Chỉ import payload vào `framework.jar`; `services.jar` giữ nguyên các class ROM của nó. Import không tự chèn ROM hook.

## 2. Hook trong `framework.jar`

### 2.1 Context — `Instrumentation`

**Class:** `Landroid/app/Instrumentation;` ([mẫu A17](../Template/Template_V2060/a17/framework/Instrumentation.smali)).

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

**Class:** `Landroid/app/ActivityThread;` ([mẫu A17](../Template/Template_V2060/a17/framework/ActivityThread.smali)). **Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

**Chèn:** ngay sau phép gán stock cho `mBoundApplication`; truyền operand **đầu tiên** của `iput-object` (AppBindData), không truyền `this`. Ví dụ nếu là `v9`:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không lặp `iput-object`; nếu operand >15 dùng `/range {reg .. reg}`. Xác nhận payload đã import có overload nhận `Ljava/lang/Object;`.

### 2.3 System feature / Unlock GMS Feature — `ApplicationPackageManager`

**Class:** `Landroid/app/ApplicationPackageManager;` ([mẫu A17](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali)). **Method:** `hasSystemFeature(Ljava/lang/String;I)Z`.

**Chèn:** đầu method, với local trống `v0`:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

Nếu `p1`/`p2` >15 thì lời gọi đầu dùng `invoke-static/range {p1 .. p2}` (chỉ khi hai register liền nhau); kiểm tra cả lệnh khác. Hook trả `null` thì chạy code stock, còn `false` là kết quả cụ thể. Đây là **hook truy vấn system feature liên quan Unlock GMS Feature**, không chứng minh mọi chức năng GMS/hoạt động trên thiết bị.

### 2.4 Tạo key — `AndroidKeyStoreKeyPairGeneratorSpi`

**Class:** `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;` ([mẫu A17](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)). **Method:** `generateKeyPair()Ljava/security/KeyPair;`.

**Chèn:** đầu method, cần local trống `v0`:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

Hook trả null thì tiếp tục đường tạo key stock.

### 2.5 Certificate chain — `AndroidKeyStoreSpi`

**Class:** `Landroid/security/keystore2/AndroidKeyStoreSpi;` ([mẫu A17](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali)).

**Method A:** `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`.

**Chèn:** ngay trước mỗi `return-object` stock trả **mảng đầy đủ leaf + CA**, sau khi đã gắn leaf cuối. Nếu mảng là `v3`, thay riêng return đó bằng:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Thay cả ba `v3` bằng register mảng thật; nếu >15 dùng `invoke-static/range {vN .. vN}`. Không chèn vào đường null/lỗi hoặc giữa vòng lặp tạo mảng.

**Method B:** `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`.

**Chèn:** đầu method, cần **hai local** trống `v0`, `v1`:

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

Chain null/rỗng tiếp tục method stock.

## 3. Hook trong `services.jar`

### 3.1 Khởi tạo server — `SystemServer`

**Class:** `Lcom/android/server/SystemServer;` ([mẫu A17](../Template/Template_V2060/a17/service/SystemServer.smali)). **Method:** `run()V`.

**Chèn:** ngay **trước** `Looper.loop()V` *chính* ở cuối khởi động service:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

`Looper.loop()` là dòng stock có sẵn; không thêm lần hai hoặc chọn nhầm loop khác.

### 3.2 HMA visibility — `ComputerEngine`

**Class:** `Lcom/android/server/pm/ComputerEngine;` ([mẫu A17](../Template/Template_V2060/a17/service/ComputerEngine.smali)).

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

## 4. Bước tùy chọn

- **Trạng thái developer/ADB:** `framework.jar` → `Landroid/provider/Settings$NameValueCache;` → `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;` ([mẫu A17](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali)). Chèn đầu method, cần local trống `v0`:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` là key; key null/hook false thì theo stock. Đây **không phải** sửa `SettingsProvider.apk` hay target mode 1.

- **Build spoof Android 17:** Trong `framework.jar`, `Landroid/os/Build;`: bỏ `final` và đặt String initializer `null` cho `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`; chỉ bỏ `final` của `TIME:J`. Với `Landroid/os/Build$VERSION;`, chỉ bỏ `final` của `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Giữ nguyên `SDK_INT` và `<clinit>`. Ví dụ `.field public static final BRAND:Ljava/lang/String; = "OEM"` → `.field public static BRAND:Ljava/lang/String; = null`. Mode 2 tự sửa những field này, không thêm các hook khác.
- [Secure Flag](Disable_Secure_Flag_VI.md) chỉ có hướng dẫn giới hạn, chưa có recipe `captureDisplay` chung; [CorePatch](CorePatch_VI.md) có guide riêng. Mode 1 không tự thêm hai phần này.
- **Kaorios Helper** là [module Zygisk cài riêng](../../Kaorios-Helper/README.md), **không phải** hook trong framework/services hay script dựng artifact. Module giữ ROM stock; **không bật HMA Helper cùng hook HMA đã patch ROM**. Cách cài/kiểm tra runtime nằm trong README đó.

## 5. Dựng và kiểm tra *JAR đã lưu*

1. Assemble **từng owner split đã sửa**, gồm split thêm payload. Tạo output khác stock, chỉ thay đúng entry `classes*.dex` trong bản sao JAR stock; giữ nguyên DEX chưa sửa và entry khác. Không chép class template hoặc payload DEX đè DEX stock còn class khác.
2. Mở lại **JAR output đã lưu** vào thư mục mới rỗng. So DEX đã assemble với DEX đóng gói, hash split chưa sửa và entry khác với stock. Disassemble DEX **trích từ JAR cuối**; kiểm tra mỗi class payload có một owner, class ROM còn nguyên, đúng method, vị trí hook, fallback, register và `move-result` kề invoke trên mọi nhánh đã sửa.
3. Chạy [verifier framework/services/SystemServer](Patcher_Guide_2.0.6.1_VI.md#5-kiểm-tra-jar-đã-lưu) phù hợp, tự xem Instrumentation, system feature/Unlock GMS Feature, Keystore, installer/tùy chọn ngoài vùng verifier. Ghi rõ phần thực sự đã kiểm. Nếu lỗi, bỏ workspace dở và làm lại từ stock sạch. Test host **không** chứng minh ROM boot hay tính năng hoạt động trên máy; ký/flash/sửa thiết bị cần được cho phép riêng và có cách khôi phục.
