# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

## 1. Bản đồ hook chính

### `framework.jar`

#### Khởi tạo app

Class:

```smali
Landroid/app/Instrumentation;
```

Method:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Hook được chèn:

```smali
Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Tham chiếu: [Instrumentation.smali](../Template/Template_V2060/framework/Instrumentation.smali).

#### Khởi tạo process

Class:

```smali
Landroid/app/ActivityThread;
```

Method:

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Patcher xác minh alias thật của `this` và `AppBindData` trước khi chèn:

```smali
Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không copy cứng `p0/p1` từ ROM khác.

#### Spoof system feature

Class:

```smali
Landroid/app/ApplicationPackageManager;
```

Method:

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
```

Tham chiếu: [ApplicationPackageManager.smali](../Template/Template_V2060/framework/ApplicationPackageManager.smali).

#### Tạo software key

Class:

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

Method:

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
```

Tham chiếu: [AndroidKeyStoreKeyPairGeneratorSpi.smali](../Template/Template_V2060/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali).

#### Certificate chain

Class:

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

Method:

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
```

Tham chiếu: [AndroidKeyStoreSpi.smali](../Template/Template_V2060/framework/AndroidKeyStoreSpi.smali).

### `services.jar`

#### Khởi tạo SystemServer

Class:

```smali
Lcom/android/server/SystemServer;
```

Method:

```smali
run()V
```

Patcher hiện chèn:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

ngay trước lệnh `Looper.loop()V` duy nhất đã được verifier xác nhận.

Tham chiếu: [SystemServer.smali](../Template/Template_V2060/service/SystemServer.smali).

#### Ẩn app / nguồn cài đặt

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

Patcher tìm layout `shouldFilterApplication(...)` được hỗ trợ.

Nếu ROM có đủ installer API được nhận diện, patcher ComputerEngine cũng patch + verify phần lọc installer source. Layout installer thiếu một phần hoặc lạ sẽ bị từ chối.

### `SettingsProvider.apk`

Class:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

Patcher hiện xử lý:

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

và nếu ROM có:

```smali
query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
```

Với `call()`, anchor an toàn hiện tại là:

- `getDeviceId()` nếu có;
- nếu không thì dùng `getRequestingUserId(Bundle)`.

Layout high-register hoặc control-flow không được hỗ trợ sẽ fail-closed.

---

## 2. Build patch riêng Android 17

Chỉ Android 17 dùng phần này.

### `Build.smali`

Với các field String sau, xóa `final` và đặt initializer thành `null`:

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

Riêng `TIME:J`, chỉ xóa `final`.

Tham chiếu: [Build.smali](../Template/Template_V2060/framework/Build.smali).

### `Build$VERSION.smali`

Xóa `final` khỏi:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Tham chiếu: [Build$VERSION.smali](../Template/Template_V2060/framework/Build$VERSION.smali).

Giữ nguyên `SDK_INT`.

Không xóa hàng loạt `final` khỏi toàn bộ Build. Chỉ sửa field bổ sung nếu profile riêng của m thực sự cần nó.


---

## 3. Patch tùy chọn

Không phải ROM nào cũng cần.

### Ẩn Developer options / ADB

Class:

```smali
Landroid/provider/Settings$NameValueCache;
```

Tham chiếu: [Settings$NameValueCache.smali](../Template/Template_V2060/framework/Settings$NameValueCache.smali).

Chỉ patch overload `getStringForUser(...)` trả về String phù hợp với ROM đích. Không copy cứng register từ ROM khác.

### Tắt FLAG_SECURE

Xem [Disable Secure Flag](Disable_Secure_Flag_VI.md).

### Disable Signature Verification / CorePatch

Xem [CorePatch](CorePatch_VI.md).

---
