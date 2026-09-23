# Kaorios Toolbox Framework 2.0.6.0 — Hướng dẫn patch tay Android 17 / SDK 37

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Tài liệu này mô tả cách patch **thủ công bằng Smali** và được đồng bộ theo logic của các patcher Python trong thư mục `script/`.

> Luôn patch từ file stock của chính ROM đích. Không copy nguyên class từ template của ROM khác sang vì register, label, method overload và DEX layout có thể khác.

## 1. Chuẩn bị

Các artifact cần xử lý:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`
- DEX framework Kaorios tương thích với APK Toolbox đang dùng

Với mỗi JAR/APK:

1. Giải nén artifact.
2. Xác định `classes*.dex` nào chứa class cần patch.
3. Chỉ baksmali DEX đó.
4. Sửa đúng method được ghi bên dưới.
5. Assemble lại đúng DEX đã sửa.
6. Giữ nguyên các DEX stock còn lại.
7. Repack artifact.

Không hardcode rằng class nằm trong `classes.dex` hoặc `classes2.dex`; layout có thể khác giữa ROM.

### Thêm DEX Kaorios vào framework.jar

DEX Kaorios phải tồn tại trong `framework.jar` để các call site bên dưới resolve được `Landroid/security/kaorios/KaoriosHook;`.

Nếu ROM chưa có Kaorios DEX:

- giữ nguyên tất cả DEX stock;
- chọn slot `classesN.dex` tiếp theo chưa dùng;
- thêm DEX Kaorios vào slot đó.

Ví dụ nếu framework đang có:

```text
classes.dex
classes2.dex
classes3.dex
classes4.dex
```

thì thêm Kaorios DEX thành:

```text
classes5.dex
```

Không dùng DEX Kaorios để ghi đè DEX stock đang chứa `ActivityThread`, `Build` hoặc class hệ thống khác.

---

# 2. framework.jar

## 2.1 ActivityThread — hook khởi tạo process

**Class**

```smali
Landroid/app/ActivityThread;
```

**Method**

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Trong method này tìm đúng dòng:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Chèn ngay **sau** dòng đó:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Ví dụ:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không cần tăng register vì chỉ dùng `p1`.

Sau patch phải chỉ có **một** call `initActivityThread(Ljava/lang/Object;)V` trong method này.

---

## 2.2 Instrumentation — hook Context

**Class**

```smali
Landroid/app/Instrumentation;
```

Patch hai overload.

### Overload 1

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Tìm `return-object` cuối method và chèn ngay phía trước:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Ví dụ:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

return-object v0
```

### Overload 2

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Tìm `return-object` cuối method và chèn:

```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Không cần tăng register cho hai patch này.

---

## 2.3 ApplicationPackageManager — spoof system feature

**Class**

```smali
Landroid/app/ApplicationPackageManager;
```

**Method**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Ngay sau `.registers X` hoặc `.locals X`, chèn:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock

invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0

return v0

:cond_kaorios_feature_stock
```

Nếu hook trả `null`, code stock chạy tiếp từ label `:cond_kaorios_feature_stock`.

Patcher hiện dùng `v0`; không cần tăng register nếu method stock đã có ít nhất `v0`, như template hiện tại.

Nếu ROM của bạn đã dùng label `:cond_kaorios_feature_stock`, đổi tên label mới thành một tên chưa tồn tại trong method.

---

## 2.4 AndroidKeyStoreKeyPairGeneratorSpi — software key pair

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Method**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

### Nếu method dùng .registers

Ví dụ stock:

```smali
.registers 15
```

Tăng thêm 1:

```smali
.registers 16
```

Với instance method này chỉ có `p0`, register local mới sẽ là:

```text
vX = v(registers_mới - 2)
```

Ví dụ `.registers 16` thì dùng `v14`.

Chèn ngay sau directive register:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios_gen_stock

return-object v14

:cond_kaorios_gen_stock
```

### Nếu method dùng .locals

Ví dụ:

```smali
.locals 14
```

Đổi thành:

```smali
.locals 15
```

Local mới là `v14`.

Sau đó chèn cùng logic:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios_gen_stock
return-object v14

:cond_kaorios_gen_stock
```

Nếu label trên đã tồn tại, đổi sang label chưa dùng.

---

## 2.5 AndroidKeyStoreSpi — lọc certificate chain

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Method**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Tìm `return-object` cuối method.

Ngay trước nó, tìm lệnh `aput-object` cuối cùng tạo/ghi vào mảng certificate, ví dụ:

```smali
aput-object v2, v3, v4

return-object v3
```

Trong ví dụ này:

- mảng Certificate[] là `v3`;
- register return cuối là `v3`.

Chèn sau `aput-object` và trước `return-object`:

```smali
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

Kết quả:

```smali
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

Nếu register chứa mảng và register return khác nhau, truyền register mảng vào hook nhưng `move-result-object` vào register mà `return-object` cuối đang dùng.

---

## 2.6 Build.smali — Android 17

**Class**

```smali
Landroid/os/Build;
```

Với các String field sau, bỏ `final` và thêm `= null`:

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

Ví dụ:

**Trước**

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

**Sau**

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
```

Với:

```smali
TIME:J
```

chỉ bỏ `final`, không thêm `= null`.

**Trước**

```smali
.field public static final whitelist TIME:J
```

**Sau**

```smali
.field public static whitelist TIME:J
```

---

## 2.7 Build$VERSION.smali — Android 17

**Class**

```smali
Landroid/os/Build$VERSION;
```

Bỏ `final` khỏi đúng các field:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Không thêm `= null`.

Không sửa `SDK_INT`.

Xem thêm: [notes-a17_VI.md](notes-a17_VI.md).

---

# 3. services.jar

## 3.1 ComputerEngine — ẩn app theo caller

**Class**

```smali
Lcom/android/server/pm/ComputerEngine;
```

Patcher hiện ưu tiên overload:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

Nếu không có overload trên, fallback sang:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

### Bước 1 — cấp thêm một local register

#### Với overload IIZZ

Method là instance method và tổng parameter width là 8 register:

```text
p0 = this
p1 = PackageStateInternal
p2 = int
p3 = ComponentName
p4 = int
p5 = int
p6 = boolean
p7 = boolean
```

Nếu method dùng:

```smali
.locals N
```

đổi thành:

```smali
.locals N+1
```

và dùng local mới `vN` làm `vHook`.

Nếu method dùng:

```smali
.registers R
```

số local stock là:

```text
R - 8
```

Có thể đổi sang:

```text
.locals (R - 8 + 1)
```

và dùng:

```text
vHook = v(R - 8)
```

#### Với overload II

Parameter width là 4:

```text
p0 = this
p1 = PackageStateInternal
p2 = int
p3 = int
```

Nếu dùng `.registers R`:

```text
local stock = R - 4
vHook = v(R - 4)
.locals mới = R - 4 + 1
```

### Bước 2 — chèn hook ở đầu method

Sau phần `.registers/.locals`, `.param` và annotation đầu method, chèn:

#### Overload IIZZ

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

#### Overload II

Giống trên nhưng user id là `p3`:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook

if-eqz vHook, :cond_kaorios_ps_null

invoke-static {p2, vHook, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null

const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Thay toàn bộ `vHook` bằng local register thật đã cấp ở bước 1.

Không patch đồng thời cả hai overload nếu ROM đã có đúng overload IIZZ mà logic PackageManager thực tế đi qua; script chỉ chọn một target theo thứ tự ưu tiên trên.

---

## 3.2 SystemServer — init SystemServer hook

**Class**

```smali
Lcom/android/server/SystemServer;
```

**Method**

```smali
run()V
```

Visibility có thể là:

```smali
.method private run()V
```

hoặc modifier khác. Chỉ cần đúng tên/signature `run()V`.

Trong method tìm đúng một call:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Chèn ngay trước call đó:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-static {}, Landroid/os/Looper;->loop()V
```

Không cần tăng register.

> Guide cũ từng đặt hook trước `startOtherServices(...)`. Guide hiện tại theo đúng `patch-systemserver-a17.py`: đặt ngay trước `Looper.loop()`.

---

# 4. SettingsProvider.apk

## 4.1 SettingsProvider.call — spoof/filter Settings theo caller

**Class**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Method**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

Patcher hiện tại patch method trả về **Bundle**, không patch helper GET trả String.

### Bước 1 — cấp thêm một local register

Method này có parameter width = 4:

```text
p0 = this
p1 = method
p2 = name
p3 = args
```

Nếu dùng:

```smali
.locals N
```

đổi thành:

```smali
.locals N+1
```

và dùng local mới `vN` làm `vHook`.

Nếu dùng:

```smali
.registers R
```

thì:

```text
local stock = R - 4
vHook = v(R - 4)
.locals mới = R - 4 + 1
```

Có thể đổi directive từ `.registers R` sang `.locals ...` như patcher Python.

### Bước 2 — tìm anchor getDeviceId()

Trong chính method `call(...)`, tìm:

```smali
invoke-virtual {...}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
```

Nếu ngay sau có:

```smali
move-result vX
```

thì hook phải đặt **sau cả dòng move-result**.

Ví dụ stock:

```smali
invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
move-result v5
```

Chèn sau đó:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock

return-object vHook

:cond_kaorios_settings_stock
```

Thay `vHook` bằng local mới ở bước 1.

Hook phải nằm trước `Binder.clearCallingIdentity()` nếu call này xuất hiện về sau trong method.

Nếu hook trả `null`, code stock tiếp tục chạy.

### Ví dụ register

Nếu stock là:

```smali
.registers 12
```

vì method có 4 parameter register nên stock có 8 local:

```text
v0 ... v7
```

Đổi thành:

```smali
.locals 9
```

và dùng:

```text
vHook = v8
```

Sau patch:

```smali
.locals 9

...

invoke-virtual {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
move-result v5

invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v8

if-eqz v8, :cond_kaorios_settings_stock
return-object v8

:cond_kaorios_settings_stock

# code stock tiếp tục
```

---

## 4.2 Repack và chữ ký SettingsProvider.apk

Sau khi assemble lại DEX:

1. Thay đúng DEX đã sửa vào APK.
2. Xóa metadata chữ ký v1 cũ nếu có:
   - `META-INF/MANIFEST.MF`
   - `META-INF/*.SF`
   - `META-INF/*.RSA`
   - `META-INF/*.DSA`
   - `META-INF/*.EC`
3. Giữ các file `META-INF` khác không liên quan chữ ký.
4. Repack APK.
5. Zipalign.
6. Nếu flash trực tiếp vào ROM, ký lại bằng đúng platform key/cert của ROM.

Không dùng cert khác nếu ROM yêu cầu package này giữ platform signature.

---

# 5. Kiểm tra sau patch

## framework.jar

Kiểm tra `KaoriosHook.smali`/DEX Kaorios có đúng các method mà call site đang gọi:

```text
initActivityThread(Ljava/lang/Object;)V
initSystemServer()V
shouldHideAppListForCaller(ILjava/lang/String;I)Z
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
initContext(Landroid/content/Context;)V
hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
```

Mỗi signature phải tồn tại đúng một lần.

## services.jar

- `ComputerEngine` chỉ có một call `shouldHideAppListForCaller(...)` trong method target.
- `SystemServer.run()V` chỉ có một call `initSystemServer()V`.
- call `initSystemServer()V` nằm trước `Looper.loop()V`.

## SettingsProvider.apk

- method `call(...): Bundle` chỉ có một call `filterSettingsCall(...)`;
- hook nằm sau `getDeviceId()I`;
- nếu có `Binder.clearCallingIdentity()`, hook nằm trước nó;
- local register mới không đè register stock.

## Build

- chỉ các field trong danh sách ở trên bị bỏ `final`;
- `SDK_INT` giữ nguyên.

Sau khi repack, cần boot thử ROM và test runtime. Assemble thành công chỉ chứng minh Smali hợp lệ, không chứng minh mọi hook phù hợp với OEM implementation.

---

# 6. Template tham khảo

Chỉ dùng để đối chiếu vị trí/ý tưởng patch, không copy nguyên class sang ROM khác:

- [Framework template](../Template/Template_V2060/framework)
- [Services template](../Template/Template_V2060/service)
- [Android 17 Build notes](notes-a17_VI.md)
- [Disable FLAG_SECURE](Disable_Secure_Flag_VI.md)
- [CorePatch](CorePatch_VI.md)

Các script trong `script/` là nguồn tham chiếu cho anchor và register logic nếu cần đối chiếu thêm.
