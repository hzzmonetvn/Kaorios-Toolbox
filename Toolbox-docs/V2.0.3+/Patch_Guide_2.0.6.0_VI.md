# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

> Giữ nguyên các file JAR/APK stock của ROM đích. Không thay DEX stock hoặc copy nguyên class từ template của ROM khác sang.

Guide này dùng chung cho Android 13, 14, 15, 16 và 17. Tên class/method có thể thay đổi giữa AOSP và ROM OEM, nên template chỉ dùng để tìm logic tương đương. Những điểm riêng của Android 17 được ghi chú ngay tại mục liên quan.

## 1. `framework.jar`

### A. Khởi tạo cho từng ứng dụng

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Smali mẫu:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

Patch hai method:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Trước `return-object` cuối, thêm:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Và:

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Trước `return-object` cuối, thêm:

```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Không cần tăng register vì chỉ dùng parameter register.

#### Android 17

Một số build Android 17 dùng thêm hook theo process trong:

```smali
Landroid/app/ActivityThread;
```

Method:

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Tìm:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Chèn ngay sau:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Chỉ thêm hook này nếu DEX Kaorios đang dùng có method `initActivityThread(Ljava/lang/Object;)V`.

---

### B. Hook các tính năng hệ thống

**Class:**
```smali
Landroid/app/ApplicationPackageManager;
```

**Smali mẫu:** [`ApplicationPackageManager.smali`](../Template/Template_V2060/framework/ApplicationPackageManager.smali)

**Method:**
```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Ngay dưới `.registers X` hoặc `.locals X`, thêm:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

Nếu hook trả `null`, code stock tiếp tục chạy.

Nếu label trên đã tồn tại trong method, đổi sang label khác chưa dùng.

---

### C. Hook quá trình tạo software key

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Smali mẫu:** [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)

**Method:**
```smali
generateKeyPair()Ljava/security/KeyPair;
```

Thêm ngay sau directive register/local:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

Nếu method dùng `.registers X`:

- tăng register thêm `1`;
- method này là instance method chỉ có `p0`, nên local mới là `v(registers_mới - 2)`.

Ví dụ:

```smali
.registers 15
```

đổi thành:

```smali
.registers 16
```

và dùng `v14`.

Nếu method dùng `.locals X`, tăng `.locals` thêm 1 và dùng local mới `vX`.

---

### D. Hook chuỗi chứng chỉ

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Smali mẫu:** [`AndroidKeyStoreSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreSpi.smali)

**Method:**
```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Trước `return-object` cuối, tìm lệnh `aput-object` cuối ghi vào mảng Certificate.

Ví dụ:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

return-object v3
```

Chèn:

```smali
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

Kết quả:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

Register truyền vào hook phải là register chứa mảng Certificate[]. `move-result-object` phải ghi vào register được return cuối.

---

## 2. `services.jar`

### A. Khởi tạo SystemServer

**Class:**
```smali
Lcom/android/server/SystemServer;
```

**Smali mẫu:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

Mục tiêu là gọi:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

một lần trong `SystemServer.run()V`, sau khi các service nền tảng đã được dựng nhưng trước khi main loop chạy vĩnh viễn.

### Android 13–16

Trên nhiều ROM, anchor phù hợp là ngay trước:

```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Ví dụ:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-direct {p0, vX}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Tên opcode/register có thể khác giữa ROM; quan trọng là đúng call `startOtherServices(...)`.

### Android 17

Patcher A17 hiện tại dùng anchor an toàn hơn trong `run()V`:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Chèn ngay trước:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-static {}, Landroid/os/Looper;->loop()V
```

Không cần tăng register.

---

## 3. Patch riêng Android 17

Android 17 / SDK 37 cần patch thêm các field trong `Build.smali` và `Build$VERSION.smali`.

Xem: [notes-a17_VI.md](notes-a17_VI.md).

Không áp dụng phần này cho Android 13–16 nếu framework của bạn không yêu cầu.

---

## 4. Các patch bổ sung

Chỉ thêm tính năng cần dùng sau khi patch cốt lõi đã boot ổn.

### A. Ẩn trạng thái Tùy chọn nhà phát triển / ADB

**Class:** `Landroid/provider/Settings$NameValueCache;`

**Smali mẫu:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)

**Method tham chiếu:**
```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Ngay dưới `.registers X` / `.locals X`, thêm:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Chỉ patch overload trả về `String`; không chèn vào overload trả về `Pair`.

---

### B. Ẩn ứng dụng đã cài đặt theo caller

Vị trí lọc app thay đổi theo Android version và ROM. Hãy patch method Package Manager thực sự quyết định package có bị filter khỏi caller hay không.

#### Android 13–16 / ROM dùng AppsFilter

Class thường gặp:

```smali
Lcom/android/server/pm/AppsFilterBase;
Lcom/android/server/pm/AppsFilterImpl;
```

Logic hook kiểu cũ:

```smali
# callingUid, resolver/null, targetPackageName, userId
invoke-static {vCallingUid, vResolver, vTargetPackage, vUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result vResult

if-eqz vResult, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0

:cond_kaorios_hide_stock
```

Phải xác định đúng register thật trên ROM đích.

#### Android 17 hiện tại

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

Patcher A17 ưu tiên:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

và fallback sang:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Hook A17 hiện dùng ABI:

```smali
shouldHideAppListForCaller(ILjava/lang/String;I)Z
```

Tức là truyền:

```text
callingUid, targetPackageName, userId
```

Ví dụ với overload IIZZ:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook
if-eqz vHook, :cond_kaorios_ps_null

invoke-static {p2, vHook, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null
const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Cần cấp thêm một local register cho `vHook`.

Không trộn ABI A13–16 và ABI A17. Kiểm tra đúng signature tồn tại trong DEX Kaorios đang dùng trước khi patch.

---

### C. Giả mạo nguồn cài đặt

Class/method thay đổi theo Android version và ROM. Điểm patch phải nằm sau khi Package Manager đã xác định installer stock nhưng trước khi trả giá trị cho caller.

Hook tham chiếu:

```smali
invoke-static {vResolver, vCallingUid, vUserId, vPackageName, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
```

Tự xác định:

- ContentResolver hoặc `null`;
- calling UID;
- user ID;
- package đang được query;
- installer stock.

Không copy register từ template sang ROM khác.

---

### D. Lọc / spoof Settings theo app gọi

Phần này khác rõ giữa implementation/framework cũ và patch A17 hiện tại.

#### Android 13–16 / framework dùng String hook

Patch đường GET phía server của `SettingsProvider` khi Binder caller identity vẫn còn nguyên.

Không đặt hook:

- trong client cache như `Settings$NameValueCache`;
- sau `Binder.clearCallingIdentity()`;
- ở method không trả giá trị Settings thật cho caller.

Với framework dùng hai hook:

```smali
shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
```

logic tham chiếu:

```smali
const/4 vNull, 0x0

invoke-static {vNull, vNamespace, vName}, Landroid/security/kaorios/KaoriosHook;->shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
move-result vRemove

if-eqz vRemove, :cond_kaorios_setting_value
const/4 vValue, 0x0
return-object vValue

:cond_kaorios_setting_value
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Sau đó giữ nguyên cleanup/return stock của ROM.

#### Android 17 hiện tại

Patcher A17 hiện patch:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

Method:

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

ABI hook:

```smali
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
```

Trong method `call(...)`, tìm:

```smali
Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
```

Nếu có `move-result`, đặt hook sau `move-result` đó nhưng trước `Binder.clearCallingIdentity()`.

Cấp thêm một local register `vHook`, rồi chèn:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

Nếu hook trả `null`, code stock chạy tiếp.

Nếu method dùng `.registers R`, method này có 4 parameter register (`p0..p3`):

```text
stock locals = R - 4
vHook = v(R - 4)
.locals mới = R - 4 + 1
```

Không dùng đoạn A17 này cho ROM/framework còn dùng ABI `filterSettingValue/shouldRemoveSetting`.

---

## 5. Kiểm tra sau patch

Trước khi build/flash:

- mỗi hook chỉ được chèn một lần trong method target;
- label mới không trùng label stock;
- register mới không đè parameter/local stock;
- signature gọi từ Smali phải tồn tại đúng trong DEX Kaorios;
- không đổi DEX stock không liên quan;
- Settings hook phải chạy khi Binder caller identity vẫn còn đúng;
- `SystemServer.initSystemServer()` chỉ gọi một lần.

Sau khi build:

1. assemble lại Smali;
2. decompile artifact vừa build để kiểm tra hook vẫn còn đúng;
3. boot ROM;
4. kiểm tra logcat/crash;
5. test riêng từng tính năng trước khi phát hành.

Android 13–17 và ROM OEM có thể thay đổi method/register giữa các bản cập nhật, nên luôn đối chiếu logic chứ không copy register cứng.

---

## 6. Tài liệu khác

- [Android 17 Build patch](notes-a17_VI.md)
- [Disable Secure Flag](Disable_Secure_Flag_VI.md)
- [CorePatch](CorePatch_VI.md)
- [Template Smali](../Template/Template_V2060)
