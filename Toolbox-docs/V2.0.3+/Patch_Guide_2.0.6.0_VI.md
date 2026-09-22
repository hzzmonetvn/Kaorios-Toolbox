# Kaorios Toolbox Framework 2.0.6.0 — Android 17 / SDK 37

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Guide này được đồng bộ theo các script patch Android 17 hiện có trong `script/`.
Nếu cấu trúc method của ROM khác với dạng mà patcher mong đợi, các patcher chuyên dụng sẽ dừng lỗi thay vì đoán và chèn bừa.

> Luôn giữ file JAR/APK stock của chính ROM đích. Không copy nguyên class stock từ template của ROM khác sang.

## 1. Cách patch tự động khuyến nghị

Ưu tiên các artifact patcher:

```bash
# framework.jar: hook ActivityThread + thêm DEX framework Kaorios
script/patch-framework-a17-artifact.sh \
  --input framework.jar \
  --output framework-patched.jar \
  --kaorios-dex classes.dex \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37

# services.jar: ComputerEngine + SystemServer
script/patch-services-a17-artifact.sh \
  --input services.jar \
  --output services-patched.jar \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37

# SettingsProvider.apk: hook filterSettingsCall
# Chọn một trong hai: --unsigned-output hoặc key/cert platform.
script/patch-settingsprovider-a17-artifact.sh \
  --input SettingsProvider.apk \
  --output SettingsProvider-patched.apk \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37 \
  --unsigned-output
```

Các artifact script tự tìm DEX chứa class cần patch, không hardcode `classesN.dex`, chỉ build lại DEX bị sửa, kiểm tra hash của DEX không đụng tới, sau đó decompile lại artifact cuối để verify.

Nếu đã có thư mục Smali, có thể dùng tool all-in-one:

```bash
python script/kaorios_patcher_a17.py /duong/dan/toi/smali --mode 3 --no-delay
```

- `--mode 1`: patch hook
- `--mode 2`: patch field `Build` riêng cho Android 17
- `--mode 3`: patch cả hai

## 2. framework.jar

### 2.1 ActivityThread — khởi tạo theo process/app

**Class**

```smali
Landroid/app/ActivityThread;
```

**Method**

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Tìm đúng dòng:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Chèn ngay bên dưới:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Đây là anchor chính xác của `patch-activitythread-a17.py`.

---

### 2.2 Instrumentation — khởi tạo Context

**Class**

```smali
Landroid/app/Instrumentation;
```

Patch hai overload:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Trước `return-object` cuối:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Và:

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Trước `return-object` cuối:

```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

---

### 2.3 ApplicationPackageManager — spoof system feature

**Class**

```smali
Landroid/app/ApplicationPackageManager;
```

**Method**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Ngay dưới `.registers` hoặc `.locals`:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

Nếu hook trả `null`, method stock chạy tiếp.

---

### 2.4 AndroidKeyStoreKeyPairGeneratorSpi — software keypair

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Method**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Patcher tăng thêm một local/register rồi chèn:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

Nếu method dùng `.registers N`, patcher tăng thêm 1 register và dùng local mới.
Nếu dùng `.locals N`, patcher tăng locals thêm 1.

---

### 2.5 AndroidKeyStoreSpi — lọc certificate chain

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Method**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Patcher tìm lệnh ghi mảng cuối trước `return-object` cuối:

```smali
aput-object vB, vArray, vIndex
```

và chèn:

```smali
invoke-static {vArray}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vReturn
```

Trong đó `vReturn` là register được dùng bởi `return-object` cuối.

---

### 2.6 Patch field Build trên Android 17

Xem thêm [notes-a17_VI.md](notes-a17_VI.md).

Patcher hiện sửa các field String trong `Build.smali`:

```text
BRAND
BRAND_FOR_ATTESTATION
DEVICE
DEVICE_FOR_ATTESTATION
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MANUFACTURER_FOR_ATTESTATION
MODEL
MODEL_FOR_ATTESTATION
PRODUCT
PRODUCT_FOR_ATTESTATION
TAGS
TYPE
USER
```

Với các field này: bỏ `final` và thêm `= null`.

Với `TIME:J`: chỉ bỏ `final`.

Trong `Build$VERSION.smali`, bỏ `final` khỏi:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Giữ nguyên `SDK_INT`.

## 3. services.jar

### 3.1 ComputerEngine — ẩn danh sách app theo caller

**Class**

```smali
Lcom/android/server/pm/ComputerEngine;
```

Patcher ưu tiên overload A17 đầy đủ:

```smali
shouldFilterApplication(
    Lcom/android/server/pm/pkg/PackageStateInternal;
    I
    Landroid/content/ComponentName;
    I
    I
    Z
    Z
)Z
```

và fallback sang:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Logic được chèn tương đương:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook
if-eqz vHook, :cond_kaorios_ps_null

# overload 7 tham số: userId = p5
# overload 3 tham số: userId = p3
invoke-static {p2, vHook, pUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null
const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Patcher tự cấp thêm một local register thay vì đè lên register stock không chắc chắn.

---

### 3.2 SystemServer — khởi tạo service Kaorios

**Class**

```smali
Lcom/android/server/SystemServer;
```

**Method**

```smali
run()V
```

Method có thể là `private`, `public` hoặc có modifier khác. Patcher hiện match theo tên/signature, không khóa cứng vào visibility.

Tìm đúng một dòng:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Chèn ngay phía trước:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

Guide cũ dùng anchor trước `startOtherServices(...)`. Trên Android 17 hiện tại, hãy theo Python patcher và dùng anchor `Looper.loop()`.

## 4. SettingsProvider.apk

### SettingsProvider.call — lọc Bundle Settings theo caller

**Class**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Method**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

Patcher Python hiện tại **không** patch helper GET trả `String`. Nó patch trực tiếp method Binder-facing `call(...): Bundle`.

Trong method này, tìm call:

```smali
invoke-virtual {...}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
move-result v...
```

Ngay sau anchor đó, chèn:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

Hook phải nằm trước `Binder.clearCallingIdentity()` nếu method có call này ở phía sau.

Patcher tự tăng thêm một local register. Nếu hook trả `null`, logic stock của SettingsProvider chạy tiếp.

### Chữ ký APK

`patch-settingsprovider-a17-artifact.sh` có hai mode:

- `--unsigned-output`: repack APK không ký và xóa metadata chữ ký v1/JAR cũ trong `META-INF`.
- `--platform-key ... --platform-cert ...`: zipalign + ký APK.

Tùy chọn:

- `--verify-original-cert`: bắt buộc cert mới phải trùng signer của APK gốc.
- `--allow-mismatched-cert`: chủ động cho phép signer khác để test. Không được dùng cùng `--verify-original-cert`.

Nếu flash trực tiếp vào ROM, dùng đúng platform key/cert của ROM.

## 5. Verify

Các artifact pipeline kiểm tra:

- mỗi class mục tiêu chỉ thuộc đúng một owner DEX;
- hash SHA-256 của DEX không sửa phải giữ nguyên;
- DEX đã patch assemble lại được;
- artifact cuối unpack/decompile lại được;
- caller hook đúng cấu trúc;
- DEX framework Kaorios có đủ method hook mà bộ patch A17 gọi;
- có đủ các class Binder AdvancedPolicy cần thiết.

Verify cấu trúc pass vẫn không thay thế test boot/runtime trên ROM đích.

## 6. File tham khảo

- [Framework Smali template](../Template/Template_V2060/framework)
- [Services Smali template](../Template/Template_V2060/service)
- [Ghi chú Build Android 17](notes-a17_VI.md)
- [Disable FLAG_SECURE](Disable_Secure_Flag_VI.md)
- [CorePatch](CorePatch_VI.md)
