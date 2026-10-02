# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Guide này bám theo patcher public hiện tại trong repository.

> [!IMPORTANT]
> Luôn bắt đầu từ file stock sạch của đúng ROM đích. Không copy nguyên class hoặc nguyên DEX từ ROM khác. Các file trong `Toolbox-docs/Template/Template_V2060` chỉ dùng để tham chiếu.

## 1. Cần chuẩn bị gì

Lấy từ ROM đích và giữ bản sạch của:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`

Nên backup:

```text
framework.jar.orig
services.jar.orig
SettingsProvider.apk.orig
```

Cần có smali/baksmali hoạt động bình thường.

Patcher chính đang được duy trì là:

```text
script/kaorios_patcher.py
```

`script/kaorios_patcher_a17.py` chỉ là launcher tương thích để lệnh cũ không bị hỏng.

---

## 2. Chọn đúng mode

| Android | Dùng | Ý nghĩa |
|---|---|---|
| 13 | `--android-version 13 --mode 1` | Patch hook Kaorios |
| 14 | `--android-version 14 --mode 1` | Patch hook Kaorios |
| 15 | `--android-version 15 --mode 1` | Patch hook Kaorios |
| 16 | `--android-version 16 --mode 1` | Patch hook Kaorios |
| 17 | `--android-version 17 --mode 1` | Chỉ patch hook |
| 17 | `--android-version 17 --mode 2` | Chỉ patch Build spoof |
| 17 | `--android-version 17 --mode 3` | Hook + Build spoof |

Android 13–16 dùng mode 1.

Mode 2/3 có Build patch riêng Android 17 nên patcher sẽ từ chối nếu dùng cho Android 13–16.

Lệnh chung:

```bash
python3 script/kaorios_patcher.py <thu_muc_smali_hoac_file> \
  --android-version <13|14|15|16|17> \
  --mode <1|2|3> \
  --no-delay
```

`--no-delay` chỉ tắt hiệu ứng gõ chữ trong terminal.

---

## 3. Decompile từng DEX riêng

Đừng mặc định class cần patch nằm trong `classes.dex`.

Ví dụ với `framework.jar`:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input

for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_$name"
done
```

Làm tương tự cho:

```text
work/services/
work/settingsprovider/
```

Có thể sẽ có:

```text
smali_classes/
smali_classes2/
smali_classes3/
```

Phải tìm target trên tất cả các cây đó.

---

## 4. Chạy auto patcher

### Android 13–16

Chạy mode 1 trên từng workspace có target Kaorios:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 16 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 16 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/settingsprovider --android-version 16 --mode 1 --no-delay
```

Đổi `16` thành đúng Android version của ROM.

### Android 17

Patch hook trước:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 17 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/settingsprovider --android-version 17 --mode 1 --no-delay
```

Sau đó patch field Build trong workspace framework:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 2 --no-delay
```

Nếu workspace framework chứa cả target hook lẫn `Build.smali` / `Build$VERSION.smali`, có thể dùng mode 3 thay cho hai lệnh framework ở trên:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 3 --no-delay
```

`services` và `SettingsProvider` vẫn chạy mode 1 riêng.

### Mode 1 hiện patch những file nào

Patcher hiện nhận các target:

```text
ActivityThread.smali
Instrumentation.smali
ApplicationPackageManager.smali
AndroidKeyStoreKeyPairGeneratorSpi.smali
AndroidKeyStoreSpi.smali

ComputerEngine.smali
SystemServer.smali

SettingsProvider.smali
```

Class thật có thể nằm ở bất kỳ `classes*.dex` nào.

Một số script phụ vẫn có `a17` trong tên vì lý do tương thích lịch sử. Support được quyết định bởi method/layout + verifier, không phải chỉ vì tên file có `a17`.

---

## 5. Đọc kết quả patcher

| Kết quả | Nghĩa |
|---|---|
| `PATCHED` | File đã được sửa và verifier cấu trúc đã qua. |
| `ALREADY_PATCHED` | Hook đúng đã có sẵn và verifier xác nhận hợp lệ. |
| `UNSUPPORTED_LAYOUT` | Layout ROM chưa được nhận diện an toàn. Không ép patch. |
| `FAILED` | Patch hoặc verifier lỗi. Khôi phục file stock đang làm rồi xem lỗi. |
| Không tìm thấy target | Sai thư mục, class nằm ở DEX khác hoặc archive đó không có target. |

Patcher chạy fail-closed: layout register/control-flow lạ sẽ bị từ chối thay vì đoán mò.

> [!WARNING]
> Nếu patch cả thư mục có nhiều target, file xử lý trước có thể đã được ghi ra trước khi file sau báo lỗi. Vì vậy luôn làm trên bản copy.

---

## 6. Bản đồ hook chính

Phần này chỉ giúp hiểu patcher đang tìm gì. Không dùng nó để bỏ qua verifier.

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

## 7. Build patch riêng Android 17

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

## 8. Build lại đúng DEX đã sửa

Sau khi patch một cây smali, assemble nó về đúng tên DEX ban đầu.

Ví dụ:

```bash
mkdir -p work/framework/output
smali a --api 29 work/framework/smali_classes2 \
  -o work/framework/output/classes2.dex
```

Chọn assembler API phù hợp với input DEX/toolchain. Assembler API dùng để chọn format/opcode, không phải Android version của ROM.

Sau đó chỉ thay đúng DEX vừa build vào bản copy của archive stock.

Không thay các `classes*.dex` chưa đụng tới.

Với `SettingsProvider.apk`, giữ nguyên manifest/resources và dùng quy trình build/sign của ROM. Nếu cài trực tiếp lên máy thì cần đúng platform signing setup.

---

## 9. Decompile lại và verify

Verifier chạy trước lúc lưu chưa đủ; DEX sau khi assemble cũng phải kiểm tra lại.

Decompile artifact vừa build rồi chạy:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck --caller-only
python3 script/verify-services-a17-hooks.py work/services/recheck
python3 script/verify-systemserver-a17-hooks.py work/services/recheck
python3 script/verify-settingsprovider-a17-hooks.py work/settingsprovider/recheck
```

Nếu framework cuối đã có Kaorios framework DEX + đầy đủ AdvancedPolicy classes, chạy full verifier không có `--caller-only`:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck
```

Verifier PASS chỉ chứng minh cấu trúc hook đúng. Nó chưa chứng minh ROM boot được trên máy thật.

---

## 10. Boot-test theo thứ tự này

Đừng nhét tất cả patch tùy chọn vào ngay từ đầu.

Nên test theo thứ tự:

1. boot với core hook của framework/services/SettingsProvider;
2. xem logcat có crash framework/system_server không;
3. mở Toolbox;
4. test Play Integrity / keybox;
5. test ẩn app;
6. test spoof Settings theo app;
7. test installer source;
8. sau khi core ổn mới thêm FLAG_SECURE/CorePatch.

Nếu bootloop, khôi phục archive stock trước rồi kiểm tra:

- build/thay nhầm DEX;
- class thật nằm ở `classes*.dex` khác;
- layout OEM không được hỗ trợ;
- manual edit ghi đè register;
- thiếu Kaorios framework DEX/class;
- SettingsProvider ký sai key.

---

## 11. Patch tùy chọn

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

## 12. Khi patcher báo UNSUPPORTED_LAYOUT

Không lấy snippet gần giống nhất rồi ép vào ROM.

Làm theo thứ tự:

1. khôi phục file smali stock;
2. kiểm tra đúng method descriptor;
3. xem `.registers` / `.locals`;
4. xác định parameter register và return path thật;
5. chỉ dùng Template để đối chiếu logic;
6. cập nhật patcher/verifier cho layout đó trước khi dùng trong build phát hành.

An toàn hơn nhiều so với copy số register của ROM khác.

---

## 13. Helper build artifact Android 17

Android 17 có thêm các pipeline build artifact đầy đủ:

```text
script/patch-framework-a17-artifact.sh
script/patch-services-a17-artifact.sh
script/patch-settingsprovider-a17-artifact.sh
```

Chúng tự tìm owner DEX, chỉ rebuild DEX đã sửa, kiểm tra hash các DEX còn lại và chạy lại verifier.

Chỉ dùng khi đã hiểu input smali/baksmali của script; với `SettingsProvider.apk` cài trực tiếp còn phải xử lý đúng platform signing.

---

## Bản ngắn gọn

Phần lớn người dùng chỉ cần nhớ:

```text
1. Lấy framework.jar / services.jar / SettingsProvider.apk stock sạch
2. Decompile riêng từng classes*.dex
3. Android 13–16: mode 1
4. Android 17: mode 1 + mode 2, hoặc mode 3 cho cây framework
5. Build lại đúng DEX đã sửa
6. Thay DEX đó vào bản copy archive stock
7. Decompile lại + chạy verifier
8. Boot-test trước khi thêm patch tùy chọn
```
