# Kaorios Toolbox Framework 2.0.6.0 — Manual Guide

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**


> Luôn giữ JAR stock. Không thay DEX stock và không copy nguyên cả class template sang ROM khác.

## 1. `framework.jar`

### A. Khởi tạo cho mỗi app

**Class:** `Landroid/app/Instrumentation;`  
**Smali mẫu:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

Chèn sau `Application.attach()` và trước lệnh return ở mọi overload thực sự có trong ROM:

```smali
# newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

# newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### B. Hook system feature

**Class:** `Landroid/app/ApplicationPackageManager;`  
**Smali mẫu:** [`ApplicationPackageManager.smali`](../Template/Template_V2060/framework/ApplicationPackageManager.smali)  
**Method:** `hasSystemFeature(Ljava/lang/String;I)Z`

Chèn gần đầu method:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

### C. Hook tạo software key

**Class:** `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`  
**Smali mẫu:** [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)  
**Method:** `generateKeyPair()Ljava/security/KeyPair;`

Chèn ở đầu method, trước code tạo key stock:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

`vX` phải là object local còn trống. `v14` chỉ đúng với template Android 17 tham khảo.

### D. Hook certificate chain

**Class:** `Landroid/security/keystore2/AndroidKeyStoreSpi;`  
**Smali mẫu:** [`AndroidKeyStoreSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreSpi.smali)  
**Method:** `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`

Trước lệnh return cuối, truyền `Certificate[]` cuối cùng qua Kaorios:

```smali
invoke-static {vChain}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vChain
return-object vChain
```

`vChain` là register thật đang giữ `Certificate[]` cuối cùng.

## 2. `services.jar`

**Class:** `Lcom/android/server/SystemServer;`  
**Smali mẫu:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

Chèn một lần gần đầu `run()V`. Với ROM có layout khác, chèn ngay trước lệnh `startOtherServices(...)` có sẵn.

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

## Lưu ý

- Android 17 / SDK 37 cần làm thêm [patch Build bắt buộc](notes-a17_VI.md).
- Bám theo method descriptor và register của ROM bạn; ví dụ không thể dùng nguyên số register cho mọi ROM.
- `initContext()` bắt buộc nằm **sau** `Application.attach()`.
- Cài cả hai JAR đã patch rồi boot-test trước khi thêm patch tùy chọn.
- Nếu bootloop: khôi phục JAR stock trước; sau đó kiểm tra số DEX, vị trí hook và register tạm.

## 3. Patch bổ sung

Các patch dưới đây là tùy chọn. Chỉ thêm tính năng cần dùng sau khi patch Core boot ổn định.

### Ẩn Developer options / trạng thái ADB

**Class:** `Landroid/provider/Settings$NameValueCache;`  
**Smali mẫu:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)  
**Method:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`

Chèn gần đầu method:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Chỉ dùng overload trả về `String`; không paste vào overload trả về `Pair`.

### Ẩn app đã cài theo caller

Patch method lọc Package Manager của đúng ROM đích. Tham khảo Android 17: `AppsFilterBase.shouldFilterApplication(...)`.  
**Smali mẫu:** [`AppsFilterBase.smali`](../Template/Template_V2060/service/AppsFilterBase.smali)

```smali
# callingUid, null resolver, target package name, userId
invoke-static {vCallingUid, vNull, vTargetPackage, vUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result vResult
if-eqz vResult, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0

:cond_kaorios_hide_stock
```

Thứ tự đối số cố định: `callingUid, resolver, targetPackageName, userId`. Tự xác định register thật của ROM bạn; template chỉ để đối chiếu.

### Giả lập nguồn cài đặt (Soon)

**Class tham khảo:** `Lcom/android/server/pm/ComputerEngine;`  
**Smali mẫu:** [`ComputerEngine.smali`](../Template/Template_V2060/service/ComputerEngine.smali)  
**Method:** `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`

Sau khi ROM lấy được installer stock, truyền giá trị đó qua hook:

```smali
const/4 vNull, 0x0
invoke-static {vNull, vCallingUid, p2, p1, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
return-object vInstaller
```

Trước khi áp dụng, cần xác định calling UID, user ID, package được hỏi và installer stock trong method của ROM đích.

### Lọc giá trị Settings (Soon)

Ở điểm đọc Settings phù hợp với ROM, truyền namespace, key và value stock qua hook:

```smali
const/4 vNull, 0x0
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Với cấu hình xóa (`value: null`), dùng `shouldRemoveSetting(...)` và làm theo cách ROM đích biểu diễn setting không tồn tại.

### Tắt `FLAG_SECURE`

Làm theo [guide Disable Secure Flag tiếng Việt](Disable_Secure_Flag_VI.md) riêng. Không thêm patch này nếu không thật sự cần.

### DSV / Disable Signature Verification

Với patch xác minh chữ ký trên Android 17, xem [guide CorePatch DSV](CorePatch_VI.md) riêng. Phần này độc lập với Kaorios và chỉ dùng khi ROM đích thực sự cần.

Thư mục smali tham khảo: [`Template/Template_V2060`](../Template/Template_V2060)

