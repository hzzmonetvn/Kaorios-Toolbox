# Kaorios Toolbox Framework 3.0.0

[English](Patch_Guide_3.0.0.md) | **Tiếng Việt**

> Giữ JAR stock và sao lưu trước khi patch. Không thay DEX framework stock hoặc
> copy nguyên class template của ROM khác.

## Chuẩn bị

1. Chỉ dùng `classes.dex` và Toolbox APK của release **3.0.0**.
2. Sao lưu `framework.jar` và `services.jar` gốc.
3. Ghép payload framework Kaorios theo quy trình ROM đang dùng, rồi chèn hook
   vào đúng method stock tương ứng.
4. Patch Core, boot-test thành công rồi mới thêm tính năng tùy chọn.

Android 17 / API 37 cần làm thêm [patch Build](../V2.0.3+/notes-a17_VI.md).

## 1. Patch Core

Core 3.0.0 không đổi so với 2.0.6.0. Làm bốn hook trong
[guide 2.0.6.0](../V2.0.3+/Patch_Guide_2.0.6.0_VI.md):

1. `Instrumentation.newApplication(...)` → `KaoriosHook.initContext(...)`
2. `ApplicationPackageManager.hasSystemFeature(...)` → `KaoriosHook.hasSystemFeature(...)`
3. `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair()` → `KaoriosHook.initGenerateSoftwareKeyPair(...)`
4. `AndroidKeyStoreSpi.engineGetCertificateChain(...)` → `KaoriosHook.CertificateChainIfNeeded(...)`

Trong `services.jar`, gọi `KaoriosHook.initSystemServer()` một lần trong
`SystemServer.run()`, trước khi ROM khởi động các service khác. Luôn dùng
descriptor và register của ROM đích; số register trong template chỉ là ví dụ.

## 2. Mới trong 3.0.0: giả lập định danh theo app

Toolbox tạo profile tái sử dụng rồi gán cho từng app. App có thể có override
từng trường; trường không nhập sẽ kế thừa giá trị profile.

| Kết quả API app nhìn thấy | Hook chèn ngay trước return stock |
|---|---|
| `Settings.Secure.ANDROID_ID` | `filterSettingValue(cr, "secure", "android_id", value)` |
| `Build.getSerial()` | `spoofHardwareSerial(value)` |
| Wi-Fi MAC / BSSID / SSID | `spoofWifiMac(value)` / `spoofWifiBssid(value)` / `spoofWifiSsid(value)` |
| Bluetooth address | `spoofBluetoothMac(value)` |
| `getImei(slot)` hoặc `getDeviceId(slot)` | `spoofImei(slot, value)` |
| SIM serial / số line-1 | `spoofSimSerial(slot, value)` / `spoofMobileNumber(slot, value)` |
| SIM operator / tên operator | `spoofSimOperator(slot, value)` / `spoofSimOperatorName(slot, value)` |
| subscription ID | `spoofSubscriptionId(slot, value)` |
| `MediaDrm.getPropertyByteArray("deviceUniqueId")` | `spoofMediaDrmDeviceId(name, value)` |

Mẫu chèn cho kết quả `String`, ngay trước return stock:

```smali
invoke-static {vValue}, Landroid/security/kaorios/KaoriosHook;->spoofHardwareSerial(Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
return-object vValue
```

Với API có slot, phải lấy đúng slot SIM vật lý trước. Không patch implementation
service Telephony, Wi-Fi hoặc DRM; chỉ patch đường return public của framework
mà app thực sự gọi.

`replaceDeniedResult` chỉ thay giá trị rỗng/placeholder. Không bắt hoặc thay
`SecurityException` của Android. MediaDrm chỉ áp dụng cho `deviceUniqueId`;
không patch session, provisioning, key hay security level.

## 3. Patch bổ sung có sẵn

Hide App, Hide Developer/ADB, lọc Settings, giả installer source, `FLAG_SECURE`
và DSV/CorePatch vẫn là tùy chọn. Chỉ thêm sau khi Core boot ổn. Xem
[guide 2.0.6.0](../V2.0.3+/Patch_Guide_2.0.6.0_VI.md) và
[guide CorePatch](../V2.0.3+/CorePatch_VI.md).

## 4. Kiểm tra trước khi phát hành

- Boot khi tắt tính năng và chưa gán app nào.
- Test app đã gán, chưa gán, hai slot SIM và giá trị placeholder.
- Xác nhận API bị từ chối quyền vẫn ném đúng `SecurityException` gốc.
- Nếu bootloop: khôi phục JAR stock, kiểm tra descriptor, register và vị trí hook.
