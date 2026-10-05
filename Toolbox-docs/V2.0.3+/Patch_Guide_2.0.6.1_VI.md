# Kaorios Toolbox — Hướng dẫn patch tay 2.0.6.1 (Android 13–17)

[English](Patch_Guide_2.0.6.1.md)

## Chuẩn bị

Cần trình chỉnh DEX/smali và ba file gốc từ **đúng ROM đang dùng**:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`

Giữ bản sao để khôi phục nếu máy không boot.

Tải [classes.dex 2.0.6.1](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex). APK quản lý dùng bản [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0).

Mở từng file, tìm class trên **tất cả DEX** (`classes.dex`, `classes2.dex`…). [Smali mẫu](../Template/Template_V2060/README.md) có thư mục `a13`–`a17`; chọn đúng Android. Các số register trong guide là ví dụ, phải đối chiếu với method của ROM.

### Cách đọc các đoạn chèn

- Đoạn dùng `v0` cần ít nhất một local; đoạn dùng `v0`, `v1` cần hai local. Không dùng register đang giữ giá trị mà code gốc còn cần.
- Không chèn giữa `invoke-*` và `move-result*` của nó.
- Khi chèn ở đầu method, đặt ngoài `.annotation` và trước label/code gốc. Không xóa thân method gốc.
- Nếu cần tăng local, xem ví dụ register ở mục SettingsProvider trước khi sửa.

## `framework.jar`

### 1. Import payload

1. Mở các DEX của `framework.jar` bằng chế độ multidex.
2. Import **toàn bộ class** từ `classes.dex` 2.0.6.1.
3. Class trùng tên đầy đủ thì **replace class đó trong DEX đang chứa nó**; class mới thì add. Giữ các class ROM còn lại.
4. Kiểm tra mỗi class chỉ xuất hiện một lần trên toàn bộ DEX. Nếu DEX đầy, dùng công cụ hỗ trợ multidex để thêm class mới.

Ví dụ: `KaoriosHook` nằm trong `classes6.dex` thì replace class bên trong `classes6.dex`, **không thay cả file DEX**. Chỉ import payload vào framework; không import lại vào services hay provider.

### 2. Khởi tạo Context

**Class:**

```smali
Landroid/app/Instrumentation;
```

**Smali mẫu (Android 17):** [Instrumentation.smali](../Template/Template_V2060/a17/framework/Instrumentation.smali)

**Method:**

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Tìm lệnh `Application.attach(Context)`. Thêm ngay sau nó, dùng cùng register Context. Ví dụ Context là `p1`:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Method:**

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Làm tương tự cho overload này. Context lúc vào method là `p3`; dùng register thực đang truyền vào `attach`. Nếu là `p3`, thêm:

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### 3. Khởi tạo process app

**Class:**

```smali
Landroid/app/ActivityThread;
```

**Smali mẫu (Android 17):** [ActivityThread.smali](../Template/Template_V2060/a17/framework/ActivityThread.smali)

**Method:**

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Tìm phép gán `mBoundApplication`. Thêm hook ngay sau đó, truyền register ở **đầu lệnh `iput-object`**. Ví dụ:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

### 4. Lọc system feature

**Class:**

```smali
Landroid/app/ApplicationPackageManager;
```

**Smali mẫu (Android 17):** [ApplicationPackageManager.smali](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali)

**Method:**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Thêm ngay sau `.registers` hoặc `.locals`, trước lệnh gốc đầu tiên. Giữ code gốc bên dưới label cuối:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

Nếu `p1`, `p2` nằm trên register vật lý 15, đổi lời gọi hook thành `invoke-static/range {p1 .. p2}`.

### 5. Tạo key

**Class:**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Smali mẫu (Android 17):** [AndroidKeyStoreKeyPairGeneratorSpi.smali](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)

**Method:**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Thêm ngay sau `.registers` hoặc `.locals`, trước lệnh gốc đầu tiên. Giữ code gốc bên dưới label cuối:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

### 6. Đọc certificate

**Class:**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Smali mẫu (Android 17):** [AndroidKeyStoreSpi.smali](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali)

**Method:**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Tìm `return-object` trả mảng certificate đã ghép đủ leaf và CA. Thêm hook trước return. Ví dụ mảng nằm ở `v3`:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Thay cả ba chỗ `v3` bằng register mảng thực. Sửa từng nhánh trả chain hoàn chỉnh; giữ nhánh lỗi/null.

**Method:**

```smali
engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
```

Thêm ngay sau `.registers` hoặc `.locals`, trước lệnh gốc đầu tiên. Giữ code gốc bên dưới label cuối:

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

Đoạn này dùng **hai local `v0`, `v1`**, để certificate đơn khớp phần tử đầu của chain.

## `services.jar`

### 1. Khởi tạo SystemServer

**Class:**

```smali
Lcom/android/server/SystemServer;
```

**Smali mẫu (Android 17):** [SystemServer.smali](../Template/Template_V2060/a17/service/SystemServer.smali)

**Method:**

```smali
run()V
```

Tìm `Looper.loop()V` chính ở cuối phần khởi động service. Thêm ngay trước nó:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

Chỉ thêm một lần tại vị trí này.

### 2. HMA — ẩn danh sách app

**Class:**

```smali
Lcom/android/server/pm/ComputerEngine;
```

**Smali mẫu (Android 17):** [ComputerEngine.smali](../Template/Template_V2060/a17/service/ComputerEngine.smali)

**Method:**

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

Thêm ngay sau `.registers` hoặc `.locals`, trước lệnh gốc đầu tiên. Giữ code gốc bên dưới label cuối:

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

Nếu ROM dùng overload dưới đây cho kiểm tra visibility, chèn vào overload đó và đổi `p5` trong hook thành `p3`:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Không chọn overload nhận `SharedUserSetting`. Hook phải nằm trong method mà ROM thực sự gọi. Lời gọi thường chỉ nhận register vật lý 0–15; nếu vượt giới hạn, đưa UID, tên package, user vào ba local liên tiếp rồi gọi `/range`.

### 3. Lọc tên app cài đặt

Trong cùng class `ComputerEngine`, sửa `getInstallerPackageName` và `getInstallSourceInfo` nếu có. Ví dụ dưới đây dành cho overload nhận `(String, int)`: `p1` là package đích, `p2` là user.

Dành **năm local liên tiếp** chưa dùng, ví dụ `v10..v14`. Lưu thông tin ngay đầu method:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Giữ `v10..v13` không bị ghi đè trong thân gốc. Với overload chỉ nhận String, thay `move/16 v12, p2` bằng:

```smali
    invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v12
```

Trong `getInstallerPackageName`, tìm return trả tên installer. Ví dụ đang là `return-object v2`, thay bằng:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Trong `getInstallSourceInfo`, chèn cùng hook sau khi đọc `mInstallerPackageName`, trước constructor `InstallSourceInfo`. Dùng kết quả hook cho đối số **installing package**, không thêm `return-object v2`. Giữ các đối số khác. Thay register ví dụ bằng register của ROM.

## `SettingsProvider.apk`

**Class:**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Smali mẫu (Android 17):** [SettingsProvider.smali](../Template/Template_V2060/a17/settingsprovider/SettingsProvider.smali)

### Cấp thêm local trước khi sửa

Không chỉ tăng `.registers`: register parameter sẽ dịch vị trí. Ví dụ `call()` có `.registers 13`: chín local `v0..v8`, còn `v9..v12` là `p0..p3`.

1. Trong code gốc, đổi **operand parameter** `v9`, `v10`, `v11`, `v12` thành `p0`, `p1`, `p2`, `p3`. Không đổi chuỗi, label hay tên field.
2. Đổi `.registers 13` thành `.locals 10`.
3. Dùng `v9` làm local mới. Kiểm tra các lệnh dùng parameter và `/range` vẫn hợp lệ sau khi dịch register.

Nếu method có số register khác, tính theo method đó; không dán các số trên. Lời gọi thường dùng tối đa năm register vật lý 0–15; `/range` cần đối số liên tiếp. Range đi qua ranh giới local/parameter cũ phải viết lại khi tăng local.

### 1. `call()`

**Method:**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

Tìm cặp lệnh `getDeviceId()I` và `move-result`. **Giữ cả hai**, thêm hook ngay sau `move-result`. Ví dụ đã cấp local mới `v9` như trên:

```smali
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v4

    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :kaorios_settings_stock
    return-object v9
    :kaorios_settings_stock
```

Nếu ROM không có `getDeviceId`, tìm cặp `getRequestingUserId(Bundle)I` / `move-result`, thêm cùng hook sau cả cặp khi `p1`, `p2` vẫn giữ method và tên setting. Giữ register nhận integer gốc. **Chèn giữa invoke và move-result có thể gây bootloop.**

### 2. `query()`

**Method:**

```smali
query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
```

Cần ba local mới để lưu input. Ví dụ method gốc có `.registers 11` (năm local):

1. Đổi operand parameter gốc `v5..v10` thành `p0..p5` theo cách trên.
2. Đổi `.registers 11` thành `.locals 8`.
3. Thêm ngay đầu method:

```smali
    move-object/from16 v5, p1
    move-object/from16 v6, p3
    move-object/from16 v7, p4
```

Giữ `v5..v7` không bị ghi đè. Tìm **từng** `return-object`, thêm hook ngay trước return. Ví dụ Cursor trả về đang ở `p0`:

```smali
    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0
```

Thay `p0` trong cả ba dòng bằng register Cursor thực của nhánh đó. Chỉ áp dụng cho đúng overload trên; không dùng input parameter đã bị code gốc ghi đè.

## Patch tùy chọn

### 1. Ẩn trạng thái developer/ADB

**Class:**

```smali
Landroid/provider/Settings$NameValueCache;
```

**Smali mẫu (Android 17):** [Settings$NameValueCache.smali](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali)

**Method:**

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Thêm ngay sau `.registers` hoặc `.locals`, trước lệnh gốc đầu tiên. Giữ code gốc bên dưới label cuối:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

### 2. Field Build trên Android 17

Chỉ sửa nếu cần spoof field Build trên Android 17. Trong `Landroid/os/Build;`, xóa `final`, đặt initializer String thành `null`. Ví dụ:

Tìm:

```smali
.field public static final BRAND:Ljava/lang/String; = "example"
```

Thay bằng:

```smali
.field public static BRAND:Ljava/lang/String; = null
```

Làm tương tự với:

`BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.

Với `TIME:J`, chỉ xóa `final`. Trong `Landroid/os/Build$VERSION;`, chỉ xóa `final` ở `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Giữ `SDK_INT` và code `<clinit>` gốc.

### 3. Secure Flag và CorePatch

[Disable Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md)

## Lưu file và kiểm tra

1. Assemble/export DEX đã sửa, lưu lại đúng tên entry trong JAR/APK. Giữ các DEX chưa sửa, manifest và resources.
2. Mở lại **file đã lưu**, kiểm tra đủ class payload, không trùng class và các hook nằm đúng vị trí. Kiểm tra `move-result*` đi ngay sau lời gọi tương ứng.
3. Với `SettingsProvider.apk`, ký bằng platform key/quy trình ký của ROM. Key khác có thể bị từ chối vì shared UID. Không sửa APK sau khi ký.

Test framework/services với **SettingsProvider gốc** trước. Khi boot được, mới thêm provider đã sửa và ký đúng. Chuẩn bị cách disable module/khôi phục file gốc trước khi reboot. Assemble thành công chưa xác nhận máy boot được.

HMA: chọn app đọc danh sách cần lọc (caller), gán template chứa các app muốn ẩn, force-stop caller rồi thử lại.
