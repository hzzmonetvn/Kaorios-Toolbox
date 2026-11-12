# Kaorios Toolbox 2.0.6.2 — Hướng dẫn patch

[English](Patch_Guide_2.0.6.2.md) | [CorePatch](CorePatch_VI.md) | [Secure Flag](Disable_Secure_Flag_VI.md)

Register dưới đây là ví dụ: dùng local trống, label riêng; khi tăng `.locals`/`.registers`, giữ đúng alias tham số và giới hạn mã hóa lệnh. Caller và payload phải cùng phiên bản.

## framework.jar

Import toàn bộ class của payload `classes.dex` vào framework, chia lại DEX nếu cần; mỗi class chỉ có một owner.

### Instrumentation
Sau `Application.attach(Context)` trong từng overload `newApplication`: `p1` cho overload static, `p3` cho overload instance.

```smali
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### ActivityThread.handleBindApplication
Ngay sau phép gán `mBoundApplication`; truyền đúng AppBindData (`v9` trong ví dụ).

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

### Settings$NameValueCache.getStringForUser
Đầu method `(ContentResolver, String, int)String`; cần local `v0`. Null tiếp tục stock, chuỗi khác null trả nguyên vẹn.

```smali
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0
    :kaorios_dev_stock
```

### ApplicationPackageManager.hasSystemFeature
Đầu method `(String, int)boolean`. Ví dụ `.locals 2` → `.locals 3`, local mới `v2`.

```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v2
    if-eqz v2, :kaorios_feature_stock
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    return v2
    :kaorios_feature_stock
```

### AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair
Đầu method `()KeyPair`. Ví dụ `.locals 2` → `.locals 3`, local mới `v2`; giữ stock sau label.

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v2
    if-eqz v2, :kaorios_generate_stock
    return-object v2
    :kaorios_generate_stock
```

### AndroidKeyStoreSpi.engineGetCertificateChain
Ngay trước return mảng đã điền, sau lần chèn leaf cuối; `v3` là mảng thực tế. Giữ nhánh trả null. Ba register vật lý phải ≤15 với snippet này.

```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

### AndroidKeyStoreSpi.engineGetCertificate
Nếu chưa gọi `engineGetCertificateChain`, chèn đầu method `(String)Certificate`; cần hai local `v0`, `v1`, giữ stock sau label.

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

## services.jar

### SystemServer.run
Ngay trước `Looper.loop()` chính cuối method; không nhân đôi lệnh loop.

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

### ComputerEngine.shouldFilterApplication
Đầu overload `(PackageStateInternal, int, ComponentName, int, int, boolean, boolean)boolean`; `p2` là callingUid, `p5` là userId. Overload `(PackageStateInternal, int, int)boolean` dùng `p3` thay `p5`.

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

Nếu register vượt 15, chuyển đối số sang local liên tiếp và dùng `/range`; dùng `move*/from16` hoặc `move*/16` phù hợp.

### ComputerEngine — installer source
Áp dụng cho từng API có trên ROM. Đầu method, trước `clearCallingIdentity()`, dành riêng `v14..v18` không bị stock ghi đè (ít nhất `.locals 19`):

```smali
    const/16 v14, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v15
    move/16 v16, p2
    move-object/16 v17, p1
```

`getInstallerPackageName(String, int)String`: thay return tên installer đã phân giải:

```smali
    move-object/16 v18, v2
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

`getInstallSourceInfo(String, int)InstallSourceInfo`: trước constructor, lọc đúng đối số installer (`v8` trong ví dụ); giữ constructor gốc:

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
```

## Build tùy chọn — Android 17

- Gỡ bỏ `final` và thiết lập giá trị khởi tạo hằng chuỗi thành `null` đối với: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
- Gỡ bỏ `final` khỏi trường kiểu nguyên thủy `TIME:J`.
- Gỡ bỏ `final` khỏi: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
- Giữ nguyên bản hoàn toàn trường `SDK_INT` và hàm khởi tạo tĩnh của lớp (`<clinit>`).

## Kiểm tra

Giữ JAR gốc để rollback. Assemble DEX đã sửa, đóng gói JAR riêng, chạy `unzip -t`, rồi disassemble lại đầu ra vào `recheck`. Chạy từ repo:

```bash
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/payload-smali
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/payload-smali
```

Không thêm hook SettingsProvider hoặc entry KeyStore2 cũ. CorePatch/Secure Flag theo guide riêng. Kiểm tra host không thay thế kiểm chứng boot/runtime trên ROM.
