# Kaorios Toolbox Framework 2.0.6.0

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**


> Giữ nguyên các file JAR stock. Không thay thế DEX stock hoặc sao chép toàn bộ class từ template sang một ROM khác.

## 1. `framework.jar`

### A. Khởi tạo cho từng ứng dụng

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Smali mẫu:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

**Method:**
```smali
 newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Trước dòng:
```smali
return-object xY
    .end method
```

Thêm:
```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Method:**
```smali
 newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Trước dòng:
```smali
return-object xY
    .end method
```

Thêm:
```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

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

Thêm đoạn code sau ngay bên dưới `.registers X`:
```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

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

Thêm đoạn code sau ngay bên dưới `.registers X`:
```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

Trong method này, cần chú ý đến `.registers X`.

- Tăng số lượng register hiện tại thêm `1`
- Thay `vX` bằng số register tại vị trí `registers - 2`

Ví dụ:

- Nếu method ban đầu sử dụng `15` registers
- Đổi thành `16` registers
- Sau đó đổi `vX` thành `v14`

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

Trước lệnh return cuối cùng, truyền `Certificate[]` cuối cùng qua Kaorios:

Tìm đoạn:

```smali
const/4 vA, 0x0
aput-object vB, vC, vA
return-object vD
```

Bên dưới dòng:
```smali
const/4 vA, 0x0
aput-object vB, vC, vA
```

Thêm:

```smali
invoke-static {vC}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vD
# return-object vD
```

#### Lưu ý

`move-result-object vD` là giá trị được trả về bởi `return-object vD`.

Ngoài ra, trong `invoke-static {vC}`, register mảng `vC` phải là cùng register được sử dụng trong `aput-object vB, vC, vA`.

#### Ví dụ

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

---

## 2. `services.jar`

**Class:**
```smali
Lcom/android/server/SystemServer;
```

**Smali mẫu:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

Trước dòng:
```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Thêm:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

---

## Ghi chú

- Android 17 / SDK 37 cũng yêu cầu [patch các field của Build](notes-a17.md).

## 3. Các patch bổ sung (thử nghiệm)

Các patch này là tùy chọn. Chỉ thêm tính năng bạn cần sau khi patch cốt lõi đã khởi động thành công.

### Ẩn trạng thái Tùy chọn nhà phát triển / ADB

**Class:** `Landroid/provider/Settings$NameValueCache;`  
**Smali mẫu:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)  
**Method:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`

Thêm đoạn code sau ngay bên dưới `.registers X`:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Chỉ sử dụng overload trả về `String`; không chèn đoạn này vào overload trả về `Pair`.

### Ẩn ứng dụng đã cài đặt theo caller

Patch method lọc của Package Manager được ROM đích sử dụng. Tham chiếu trên Android 17: `AppsFilterBase.shouldFilterApplication(...)`.  
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

Thứ tự tham số là cố định: `callingUid, resolver, targetPackageName, userId`. Hãy xác định các register thực tế trong ROM của bạn; template chỉ dùng để tham khảo.

### Giả mạo nguồn cài đặt (Sắp có)

**Class tham chiếu:** `Lcom/android/server/pm/ComputerEngine;`  
**Smali mẫu:** [`ComputerEngine.smali`](../Template/Template_V2060/service/ComputerEngine.smali)  
**Method:** `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`

Sau khi giá trị installer stock được xác định, truyền nó qua:

```smali
const/4 vNull, 0x0
invoke-static {vNull, vCallingUid, p2, p1, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
return-object vInstaller
```

Hãy xác định `calling UID`, `user ID`, package đang được truy vấn và giá trị installer stock trước khi điều chỉnh đoạn code này cho ROM của bạn.

### Lọc giá trị Settings theo app gọi

Patch này chỉ thay giá trị trả về cho app đang đọc Settings; không ghi hay thay
đổi setting thật. Hỗ trợ đúng ba tên bảng: `global`, `secure` và `system`.

**Vị trí patch:** dùng đường GET phía server của `SettingsProvider`, khi Binder
vẫn giữ caller gốc. Không chèn vào cache phía client như
`Settings$NameValueCache`, sau `clearCallingIdentity()`, hoặc method trả về
`Bundle`/object `Setting` thay vì `String` cuối cùng.

Tìm điểm ngay trước khi provider trả về `String` stock. `vNamespace` là tên
bảng, `vName` là key và `vValue` là giá trị gốc. `vNull` là một local register
còn trống, đã gán null.

```smali
# Xử lý rule xóa trước. Chỉ dùng khi ROM biểu diễn setting String không tồn tại
# bằng null.
const/4 vNull, 0x0
invoke-static {vNull, vNamespace, vName}, Landroid/security/kaorios/KaoriosHook;->shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
move-result vRemove
if-eqz vRemove, :cond_kaorios_setting_value
const/4 vValue, 0x0
return-object vValue

:cond_kaorios_setting_value
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
return-object vValue
```

Tự đổi tên register và cách return “không có setting” theo ROM đích. Nếu method
còn cleanup sau khi tạo `vValue`, giữ nguyên cleanup và chỉ chèn hai hook trước
lệnh return thật.

#### Cấu hình trong Toolbox

Bật **tính năng nâng cao**, sau đó thêm entry trong Toolbox. Dữ liệu dùng format
version 2, tách từng app theo bảng:

```json
{
  "version": 2,
  "apps": {
    "com.example.app": {
      "secure": { "android_id": "0123456789abcdef" },
      "global": { "example_key": "1" },
      "system": { "example_key": "value" }
    }
  }
}
```

Framework sẽ fail-open về giá trị stock khi Advanced tắt, tên bảng không thuộc
ba bảng trên, caller là system/Toolbox, UID caller có nhiều package, hoặc không
có entry khớp. Giá trị spoof theo app luôn là chuỗi; xóa key chỉ do rule Settings
của HMA cung cấp và phải đi qua nhánh `shouldRemoveSetting(...)` ở trên.

Hãy test một app có cấu hình, một app không cấu hình, cả ba bảng và setting thiếu
trước khi phát hành. Không dùng hook này để vượt quyền hoặc thay đổi access check
của SettingsProvider.

### Vô hiệu hóa `FLAG_SECURE`

[Hướng dẫn Disable Secure Flag](Disable_Secure_Flag.md).

### Vô hiệu hóa xác minh chữ ký

[Hướng dẫn CorePatch](CorePatch.md). (Có thể khác nhau tùy ROM)

Thư mục smali tham chiếu: [`Template/Template_V2060`](../Template/Template_V2060)
