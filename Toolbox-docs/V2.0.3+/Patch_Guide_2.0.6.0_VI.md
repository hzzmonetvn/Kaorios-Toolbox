# Hướng dẫn patch Kaorios Toolbox Framework 2.0.6.0

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Tài liệu này mô tả quy trình tích hợp DEX framework 2.0.6.0 vào ROM Android 12–17 và vá call site smali. Mẫu register đã đối chiếu với HyperOS Android 17 (API 37); ROM khác phải tìm class/method theo descriptor, không đoán số DEX hay số dòng.

- Mẫu smali HyperOS Android 17: [`Template/Template_V2060`](../Template/Template_V2060)
- Ảnh đối chiếu DEX trên Android 17: [`notes-a17.md`](notes-a17.md)

## 1. Cảnh báo bắt buộc

- Backup `framework.jar`, `services.jar`, VDEX/ODEX và boot image đang chạy được.
- Android 17 dùng DEX 040: chỉ dùng smali/baksmali 3.x. Không đổi header `040` thành `039` cho bản flash.
- Tên và descriptor phân biệt hoa/thường. `OnGetKeyEntry` có `O` hoa; `CertificateChainIfNeeded` không phải `getCertificateChain`.
- Không giả định class nằm ở `classes3.dex`/`classes7.dex`; luôn tìm trên ROM đích.
- Không để hai bản `Landroid/security/kaorios/*` hoặc `Lcom/kousei/framework/*` trong boot classpath.
- Không tăng `.registers` rồi giữ tham số viết bằng `vN` mà không tính lại. Ưu tiên `p0..pN`, local đang trống hoặc tăng `.locals`.
- Patch từng nhóm, boot-test từng nhóm. Sai một descriptor trong `SystemServer` có thể bootloop.

## 2. Artifact từ GitHub Build

Workflow `Build APK and DEX` xuất:

```text
KaoriosToolbox-release.apk
KaoriosFramework-release.apk
classes.dex
SHA256SUMS
```

```bash
sha256sum -c SHA256SUMS
java -jar baksmali-3.0.9-fat-release.jar list classes classes.dex \
  | grep -E 'Landroid/security/kaorios/KaoriosHook;|Lcom/kousei/framework/KaoriosFramework;'
```

`classes.dex` là DEX framework cần nhập vào `framework.jar`. Không lấy DEX từ Toolbox APK.

## 3. Khảo sát ROM đích

```bash
mkdir -p work/framework work/services
unzip -q framework.jar -d work/framework
unzip -q services.jar -d work/services

java -jar baksmali-3.0.9-fat-release.jar disassemble \
  work/framework/classes3.dex --api 37 --output work/fw3
java -jar baksmali-3.0.9-fat-release.jar disassemble \
  work/services/classes.dex --api 37 --output work/sv1
```

Lặp với mọi `classes*.dex`, rồi tìm class:

```bash
rg -l '^\.class .*Landroid/app/Instrumentation;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreSpi;' work/fw*
rg -l '^\.class .*Lcom/android/server/SystemServer;' work/sv*
rg -l 'Landroid/security/kaorios/KaoriosHook;' work/fw* work/sv*
```

HyperOS A17 đã xác nhận: `SystemServer` ở `services/classes.dex`; Keystore SPI và `Build` ở `framework/classes3.dex`; Kaorios cũ ở `framework/classes7.dex`. Đây chỉ là tham chiếu.

## 4. Nhập DEX không tạo class trùng

ROM sạch: đổi artifact `classes.dex` thành số DEX kế tiếp chưa tồn tại, ví dụ `classes8.dex`, rồi thêm vào `framework.jar`.

ROM đã có Kaorios:

- Nếu DEX cũ chỉ chứa Kaorios/dependency của nó: thay toàn bộ entry đó bằng artifact mới, giữ nguyên tên entry.
- Nếu DEX cũ dùng chung với class hệ thống: xóa hai cây `android/security/kaorios/` và `com/kousei/framework/` khỏi smali DEX cũ, assemble lại, sau đó thêm artifact mới bằng số DEX kế tiếp.
- Tuyệt đối không append DEX mới khi class cũ vẫn còn.

## 5. Descriptor chuẩn 2.0.6.0

| Chức năng | Chữ ký smali chính xác |
|---|---|
| Init app | `initContext(Landroid/content/Context;)V` |
| Init system_server | `initSystemServer()V` |
| Feature spoof | `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` |
| Software GEN | `initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;` |
| Hack chain | `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` |
| Cached entry, tùy chọn | `OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;` |
| Hide dev | `shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Hide app caller-aware | `shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Installer spoof | `filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Settings value | `filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Remove setting | `shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z` |
| Bỏ secure flag | `isSecureFlag()Z` |

## 6. Patch lõi trong framework.jar

### 6.1 `Instrumentation.newApplication`

Bắt buộc cho PIF/game props/Photos/TFT. Chèn sau `Application.attach()` và trước return.

Method static:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

Method instance:

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

Không gọi trước `attach()`.

### 6.2 `ApplicationPackageManager.hasSystemFeature`

Chèn đầu `hasSystemFeature(Ljava/lang/String;I)Z`. `null` nghĩa là chạy stock; `Boolean` khác null là override:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
:cond_kaorios_feature_stock
```

Phải là `Ljava/lang/Boolean;`, không phải primitive `Z`.

### 6.3 `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair`

Chèn ngay đầu method, trước code stock gọi `getSecurityLevel()`:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14
if-eqz v14, :cond_kaorios_gen_stock
return-object v14
:cond_kaorios_gen_stock
```

`v14` chỉ đúng với mẫu A17 `.registers 16`; ROM khác phải chọn object local trống. Hook tự skip `OmkTeeCheck`, `omk_attestation_key`, `omk_challenge_probe`.

### 6.4 `AndroidKeyStoreSpi.engineGetCertificateChain`

Method:

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Tìm mảng chain cuối, sau khi leaf được gắn index 0 và trước return:

```smali
aput-object v2, v3, v4
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
return-object v3
```

Không gọi hook bằng `{p0,p1}`. Nếu có nhiều `return-object`, wrap từng nhánh chain hợp lệ hoặc gom về common return.

### 6.5 Bỏ `final` khỏi Build fields trên Android 17

```smali
# trước
.field public static final whitelist BRAND:Ljava/lang/String;
# sau
.field public static whitelist BRAND:Ljava/lang/String;
```

Danh sách tối thiểu cho Photos/PIF phổ biến:

```text
Build:
  BRAND DEVICE FINGERPRINT HARDWARE ID MANUFACTURER MODEL PRODUCT
  TAGS TIME TYPE USER

Build$VERSION:
  RELEASE RELEASE_OR_CODENAME RELEASE_OR_PREVIEW_DISPLAY
  SECURITY_PATCH DEVICE_INITIAL_SDK_INT
```

Nếu profile ghi thêm `DISPLAY`, `HOST`, `INCREMENTAL`, `SDK` hoặc `*_FOR_ATTESTATION`, field đó cũng phải bỏ `final`. Không sửa `SDK_INT` nếu không thật sự cần.

Editor có thể sinh dạng sau; đây là hợp lệ vì `<clinit>` vẫn gán giá trị thật:

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
```

Không tự thêm/xóa `= null`; việc bắt buộc là bỏ `final`.

## 7. Patch lõi trong services.jar

### `SystemServer.initSystemServer`

Trong method boot services, chèn ngay trước call `startOtherServices(...)`:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Register của `startOtherServices` tùy ROM; chỉ vị trí tương đối là cố định. Hook khởi tạo OMK và probe giới hạn challenge TEE.

## 8. Patch tính năng tùy chọn

### 8.1 Hide developer status

Chỉ áp dụng khi `Settings$NameValueCache` có descriptor trả `String`:

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0
:cond_kaorios_dev_stock
```

Hook trả primitive `Z`, không trả `Boolean`; method mẫu trả `String`, không phải `Pair`. Descriptor khác thì không paste block này.

### 8.2 Hide app caller-aware

Mẫu HyperOS A17:

```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```

`p2=callingUid`, `p4=targetPkgSetting`, `p5=userId`:

```smali
move/from16 v0, p2
move-object/from16 v1, p4
if-eqz v1, :cond_kaorios_hide_stock
:try_start_kaorios_hide
invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
move/from16 v4, p5
invoke-static {v0, v3, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0
:try_end_kaorios_hide
.catch Ljava/lang/Throwable; {:try_start_kaorios_hide .. :try_end_kaorios_hide} :catch_kaorios_hide
:catch_kaorios_hide
:cond_kaorios_hide_stock
```

Argument bắt buộc theo thứ tự `{uid, resolver, targetPackage, userId}`. Guide cũ truyền `{resolver, uid, ...}` là sai descriptor.

### 8.3 Spoof installation source

Mẫu `ComputerEngine.getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`: sau khi installer stock nằm ở `v2`, calling UID ở `v0`, userId ở `p2`:

```smali
:try_start_kaorios_installer
const/4 v5, 0x0
invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_end_kaorios_installer
.catch Ljava/lang/Throwable; {:try_start_kaorios_installer .. :try_end_kaorios_installer} :catch_kaorios_installer
return-object v2
```

ROM không có `p2 userId` phải tính bằng `UserHandle.getUserId(callingUid)`.

### 8.4 Settings replacement — ROM-specific

Chỉ patch sau khi xác định namespace, key và value string tại common return path:

```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Nếu JSON dùng `value:null`, gọi thêm `shouldRemoveSetting(...)Z` rồi chuyển sang representation “missing” đúng của ROM. Không paste vào mọi nhánh `GET_*`.

### 8.5 Cached `KeyStore2` path — không bật mặc định

Đường SPI mục 6.3/6.4 là đường đã kiểm chứng. Chỉ patch khi biết chính xác register `Landroid/system/keystore2/KeyDescriptor;`:

```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult
if-eqz vResult, :cond_kaorios_keystore_stock
return-object vResult
:cond_kaorios_keystore_stock
```

Type đúng là `android/system/keystore2`, không phải `android/security/keystore2`.

### 8.6 Bỏ FLAG_SECURE

Gọi `isSecureFlag()Z`. Nếu true: `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z` trả `1`; `WindowState[Animator].isSecureLocked()Z` trả `0`; `setSecureLocked(Z)V` có thể return sớm. Không đảo giá trị hai method đầu.

## 9. Assemble và đóng JAR

```bash
java -jar smali-3.0.9-fat-release.jar assemble work/fw3 \
  --api 37 --output work/framework/classes3.dex
java -jar smali-3.0.9-fat-release.jar assemble work/sv1 \
  --api 37 --output work/services/classes.dex

java -jar baksmali-3.0.9-fat-release.jar list classes work/framework/classes3.dex >/dev/null
java -jar baksmali-3.0.9-fat-release.jar list classes work/services/classes.dex >/dev/null
rg -n 'KaoriosHook;->' work/fw3 work/sv1
```

Update đúng entry DEX vào bản JAR gốc; không làm mất resource/file ngoài DEX. System JAR không cần zipalign. Nếu có source ROM, ưu tiên tích hợp vào build tree để build system sinh lại JAR/VDEX.

## 10. Flash, cache và rollback

An toàn nhất là build lại image. Nếu test bằng overlay/module:

1. Giữ bản gốc restore được từ recovery.
2. Overlay đúng `/system/framework/framework.jar` và `services.jar`.
3. Chỉ xử lý VDEX/ODEX tương ứng đã xác định; không xóa dalvik-cache bằng glob rộng.
4. `sync`, reboot và chờ dexopt; boot đầu có thể lâu.

Nếu treo logo, rollback cả JAR và VDEX/ODEX theo cùng một bộ, không trộn JAR mới với oat cũ.

## 11. Cấu hình runtime

Boolean nên ghi `1/0`. `kaorios_hide_app_work`, `kaorios_hide_dev_work`, `kaorios_secure_flag_work` là cờ chẩn đoán do hook tự ghi, không phải công tắc bật.

```bash
# Keybox GEN mọi app
adb shell settings put global kaorios_keybox_enabled 1
adb shell settings put global kaorios_keybox_apply_all 1
adb shell settings put global kaorios_keybox_apply_all_mode gen

# Photos
adb shell settings put global kaorios_spoof_photos 1
adb shell am force-stop com.google.android.apps.photos

# BIDV: ẩn dev và làm caller không thấy app khác
adb shell settings put global kaorios_hide_devlist '{"vn.com.bidv.mobilebanking":{"hidedev":true,"hideapp":true}}'
adb shell settings put global kaorios_time "$(date +%s)000"
adb shell am force-stop vn.com.bidv.mobilebanking
```

Sau khi ghi Settings trực tiếp, bump `kaorios_time` hoặc restart process để cache framework đọc dữ liệu mới.

## 12. Checklist xác minh

### Static

- DEX artifact chứa `KaoriosHook` và `KaoriosFramework`.
- Boot JAR cuối không còn class Kaorios cũ/trùng.
- Mọi `invoke-static` khớp bảng descriptor mục 5.
- Build fields cần spoof đã mất `final`; field không liên quan giữ nguyên.
- DEX rebuilt disassemble lại được bằng smali 3.x.

### Runtime

```bash
adb shell getprop sys.boot_completed
adb shell settings get global kaorios_hide_dev_work
adb shell settings get global kaorios_hide_app_work
adb shell settings get global kaorios_secure_flag_work
adb logcat -v threadtime -s KaoriosHook KaoriosOmkService OmkRootOfTrust KaoriosCertificateGenerator KaoriosCertificateHacker
```

- Chỉ test hide app sau `sys.boot_completed=1`.
- Working flag chỉ thành `1` khi call site thật sự chạy.
- Test `gen`, `leaf`, `auto` riêng; test GMS/Store/Photos sau force-stop.
- Caller `hideapp=true` vẫn phải thấy chính nó nhưng không thấy target khác.

## 13. Lỗi thường gặp

| Triệu chứng | Nguyên nhân thường gặp | Kiểm tra |
|---|---|---|
| Bootloop | Sai register/descriptor hoặc DEX lỗi | Restore services trước, disassemble DEX rebuilt, xem verifier log |
| Toolbox không thấy framework | DEX chưa vào boot classpath, class trùng, oat cũ | Tìm class trong JAR cuối và đồng bộ VDEX/ODEX |
| GEN không chạy | Hook đặt sau `getSecurityLevel`, keybox off/rỗng | Kiểm tra đầu `generateKeyPair`, Settings và log OMK |
| LEAF không đổi | Wrap sai chain register/bỏ sót return | Xác định `Certificate[]` cuối trước return |
| PIF/Photos log chạy nhưng field không đổi | Field vẫn `final` | So sánh `Build.smali` sau rebuild |
| Hide-dev không chạy | Patch nhầm overload/sai `Boolean` và `Z` | Method đích phải trả `String`, hook trả `Z` |
| Hide-app lọc chính caller | Dùng hook cũ/truyền sai arg | Descriptor phải bắt đầu `I`; thứ tự uid,resolver,target,user |
| `*_work` vẫn 0 | Call site chưa được kích hoạt | Mở app/action tương ứng rồi đọc lại flag |

## 14. Thứ tự patch khuyến nghị

1. Nhập DEX, xử lý class trùng, boot thử.
2. Patch `SystemServer`, boot thử.
3. Patch `Instrumentation`, Build fields và `hasSystemFeature`, test PIF/Photos.
4. Patch hai call site Keystore SPI, test `gen/leaf/auto`.
5. Patch hide-dev/hide-app bằng app phụ.
6. Patch installer/settings/secure flag sau cùng vì phụ thuộc ROM nhiều nhất.

Không patch tất cả rồi flash một lần; khi bootloop sẽ không khoanh được call site sai.


