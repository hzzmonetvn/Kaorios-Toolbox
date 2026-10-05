# Kaorios Toolbox Framework 2.0.6.0 — Patch tay, Android 13–17

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

Guide này hướng dẫn tự sửa smali của ROM đích. Lệnh và mode của công cụ tự động nằm trong [guide patcher riêng](Patcher_Guide_2.0.6.0_VI.md).

## 1. Chuẩn bị file stock và payload

Giữ bản sạch của `framework.jar`, `services.jar`, `SettingsProvider.apk` từ đúng bản ROM đang dùng, kèm hash gốc. Làm trên bản copy. Sau OTA phải lấy lại bộ stock mới.

Lấy payload framework Kaorios đã phát hành, khớp Toolbox 2.0.6.0. Trích DEX và kiểm tra descriptor class/method thực trước khi chèn lệnh gọi. APK quản lý không thay thế payload framework. Giữ đủ dependency của payload, gồm các class AdvancedPolicy; chỉ import `KaoriosHook.smali` là thiếu.

### Chọn đúng file payload

Asset payload trên [release v2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0) mang tên `classes.dex`; APK `KaoriosToolbox-fix_update_sign.apk` là app quản lý. Không dùng `framework.jar` ROM hoặc JAR mẫu làm payload rồi import toàn bộ class Android của nó.

Trước khi import, mở DEX payload và kiểm tra descriptor của các method hook ở mục 5–7, cùng tám class có tên đầy đủ dưới đây:

```text
android/security/kaorios/settings/IAdvancedPolicyService
android/security/kaorios/settings/IAdvancedPolicyService$Stub
android/security/kaorios/settings/IAdvancedPolicyService$Stub$Proxy
android/security/kaorios/settings/AdvancedPolicyClient
android/security/kaorios/settings/AdvancedPolicyService
android/security/kaorios/settings/AdvancedPolicySnapshot
android/security/kaorios/settings/ServiceManagerBridge
android/security/kaorios/settings/SettingDecisionParcel
```

API danh sách app còn cần giữ tên `com.kousei.framework.KaoriosFramework$InstalledAppEntry` và `com.kousei.framework.KaoriosFramework$InstalledAppsSnapshot`, cùng các field của chúng. Chỉ giữ tên method chưa đủ: đổi tên type trả về vẫn làm sai descriptor mà APK gọi.

**Cập nhật release ngày 2026-10-05:** `classes.dex` đã được thay bằng payload build lại, kích thước 573,604 byte, SHA-256 `365280bec58e8c917a7f4b7aa15ebd462b9ba83b7f667e9ec96d5d57f5b0f6f1`. Đã kiểm tra 11 method hook, tám class AdvancedPolicy ở trên, hai type snapshot app và các reference framework trực tiếp từ APK quản lý đang phát hành. Payload có worker khởi tạo SystemServer. Đây là kiểm tra host/artifact; chưa xác nhận boot, HMA hoặc attestation trên máy thật.

Cần smali/baksmali và công cụ chỉnh archive. Nếu triển khai APK, chuẩn bị quy trình ký bằng platform key của ROM trước khi sửa. Đổi DEX làm chữ ký nội dung APK gốc mất hiệu lực.

[Mẫu theo phiên bản](../Template/Template_V2060/README.md) lấy từ MIUI/HyperOS, chỉ để đối chiếu. Chọn `a13/`–`a17/` khớp Android rồi so descriptor và luồng với ROM của mình. Register trên AOSP/Evolution X/OEM có thể khác.

---

## 2. Xác định DEX chứa class

Trích và decompile riêng từng DEX:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input
for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_$name"
done
rg -n '^\.class .*Landroid/app/ActivityThread;' work/framework
```

Làm tương tự với `services.jar`, `SettingsProvider.apk` và payload, mỗi loại một workspace riêng. Tìm trên mọi split. Ghi bảng descriptor class → archive → DEX gốc → đường dẫn smali. Không mặc định class nằm trong `classes.dex`.

Giữ manifest, resources và các entry không phải DEX. Không rebuild resources APK chỉ để sửa bytecode.

---

## 3. Import class: trùng thì replace, giữ class ROM

Import payload vào `framework.jar` theo **descriptor class** trên toàn bộ DEX split:

1. Lập danh sách descriptor gốc và payload từ dòng `.class`, không dựa riêng vào tên file.
2. Descriptor payload đã tồn tại thì replace class đó trong DEX đang chứa nó. Nếu có owner trùng khác, loại bản trùng.
3. Class payload mới thì thêm vào DEX framework còn đủ giới hạn method/type/reference. Nếu split vượt giới hạn DEX, phân bố lại các class mới bằng công cụ hỗ trợ multidex rồi kiểm tra khả năng resolve class.
4. Giữ mọi class gốc có descriptor không nằm trong payload.
5. Sửa class Android chứa hook của chính ROM này. Không thay nguyên `ActivityThread`, `ComputerEngine`, `SettingsProvider` bằng class mẫu.
6. Mỗi descriptor output phải có đúng một owner. Tập descriptor phải bằng hợp của gốc và payload; mọi class gốc không trùng phải giữ nguyên.

Ví dụ `KaoriosHook` đã nằm trong `classes6.dex` thì replace class đó bên trong `classes6.dex`, không thay cả split bằng DEX release. Thay nguyên split sẽ làm mất class ROM không liên quan. Import đủ payload một lần trong framework; services và provider gọi các class framework đó.

### Thao tác trong trình chỉnh DEX

Mở bản copy `framework.jar` gốc dạng archive, rồi mở các DEX split bằng chế độ xem multidex. Import **toàn bộ class từ mọi DEX payload**. Chọn replace descriptor trùng, add descriptor mới và giữ các class còn lại. Nếu công cụ chỉ sửa từng split, phải tìm descriptor trên cả archive trước để replace trong đúng DEX owner, tránh thêm bản trùng vào split đang mở. Save/export các entry DEX đã sửa về đúng tên gốc, mở lại archive cuối rồi tìm trên mọi split lần nữa.

Dùng cùng trình chỉnh để sửa method Android chứa hook bên dưới trong DEX owner gốc. Giữ backup archive ngoài file đang sửa. Hộp thoại import báo thành công chưa chứng minh đã đủ dependency hoặc đã hết owner trùng.

---

## 4. Tính register trước khi chèn hook

Method instance có `p0` là `this`. Parameter nằm ở các register vật lý cuối; `J`, `D` mỗi loại chiếm hai slot. Method static không có `this` ngầm. `.locals L` chỉ đếm local; `.registers R` đếm cả local và parameter.

```smali
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    # 9 locals: v0..v8; p0=v9, p1=v10, p2=v11, p3=v12
```

Thêm một local sẽ thành `.locals 10` (hoặc `.registers 14`); scratch mới là `v9`, parameter chuyển sang `v10..v13`. Trước khi tăng, đổi **operand parameter đang dùng** `v9..v12` thành `p0..p3`, gồm range và register trong debug metadata. Giữ operand local `v0..v8`. Không đổi chuỗi trong dấu nháy, label, tên field hoặc descriptor.

Ví dụ đổi operand trước/sau (đây chỉ là đoạn trích trong method, không thay cả method):

```smali
    # Before: .registers 13, p1 is physical v10.
    .registers 13
    move-object v0, v10
    const-string v1, "v10"
```

```smali
    # After: 10 locals + 4 parameter slots = 14 registers.
    .locals 10
    move-object v0, p1
    const-string v1, "v10"
    # v9 is now the fresh local; p1 is physical v11.
```

`v10` trong instruction đầu là alias parameter nên đổi thành `p1`; chuỗi `"v10"` giữ nguyên. Với method vốn dùng `.locals 9`, alias vật lý cũ vẫn giống bảng trên và vẫn phải xử lý.

Method đã dùng `.locals` vẫn bị dịch parameter khi tăng local. Kiểm tra từng lệnh dùng `pN`: register vật lý mới có thể vượt giới hạn opcode. `invoke-* {…}` thường nhận tối đa năm word register, mỗi register ở `v0..v15`. `/range` cần các đối số liên tiếp về vật lý. `move-result*`, `return*`, `if-eqz` cần register 8-bit; lệnh so sánh hai register có giới hạn chặt hơn. Chọn `move-object/from16`, `move-object/16`, `move/from16`, `move/16` phù hợp nguồn và đích.

| Instruction | Giới hạn register vật lý |
|---|---|
| `invoke-static {…}`, `invoke-interface {…}` | Mỗi đối số 0–15; tối đa 5 word |
| `invoke-*/range {… .. …}` | Register đầu 0–65535; tối đa 255 word liên tiếp |
| `move-result*`, `return*`, `if-eqz`, `const/16` | Register 0–255 |
| `move-object/from16` | Đích 0–255, nguồn 0–65535 |
| `move-object/16` | Cả hai register 0–65535 |
| `const/4`, `if-eq`, `iput-object` | Mỗi register trong encoding 0–15 |

Bảng trên là giới hạn encoding; mọi register được dùng vẫn phải nằm trong tổng register đã khai báo. Giá trị wide còn cần slot thứ hai hợp lệ.

Nguồn giới hạn opcode và quy tắc nhận kết quả: [đặc tả Dalvik của AOSP](https://source.android.com/docs/core/runtime/dalvik-bytecode). Khi shift parameter, kiểm tra cả `const/4`, `iput-object` và các lệnh stock khác, không chỉ `invoke`. Các block bên dưới là phần chèn/thay tại điểm đã nêu; comment `Original …` nghĩa là giữ tiếp code gốc, không xóa nó.

Range đi qua ranh giới local/parameter cũ sẽ đổi số đối số khi tăng local. Viết lại lời gọi bằng một block đối số liên tiếp đã kiểm tra, hoặc copy parameter lúc vào method để giữ các slot vật lý cũ rồi dùng chúng trong toàn bộ thân gốc. Không chỉ tăng `.locals` rồi giữ nguyên range.

Trong snippet dùng `v0`, `v0` phải là local thực (ít nhất một local), không phải alias của `p0` khi method có zero local. Nếu phải cấp thêm local, hoàn tất kiểm tra shift/encoding trước khi chèn hook.

Mỗi snippet dưới đây có giả định register riêng. Scratch phải chưa dùng hoặc đã hết giá trị sống tại điểm chèn trên mọi nhánh đi vào; chọn label chưa tồn tại. Chèn lệnh ngoài annotation, trước label entry gốc nếu hook chỉ được chạy lúc vào method. Không chuyển code qua ranh giới try/catch hay monitor khi chưa theo dõi luồng.

`invoke-*` và `move-result*` nhận kết quả phải liền nhau về lệnh thực thi. Dòng trống/debug không sinh instruction; chèn hook giữa cặp này sẽ làm hỏng bytecode.

---

## 5. Sửa framework.jar

### 5.1 Instrumentation: context app

Class `Landroid/app/Instrumentation;`, sửa cả hai overload:

- Static `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`: context là `p1`.
- Instance `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`: context là `p3` khi vào method.

Tìm lệnh `Application.attach(Context)` trên nhánh tạo app thành công. Chèn `initContext` ngay sau attach, dùng đúng operand Context đã đưa vào attach. Giữ nguyên register trả về app. Ví dụ overload static có app ở `v0`, context vẫn ở `p1`:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    return-object v0
```

Overload instance chỉ dùng `p3` nếu tại điểm đó vẫn là context; theo dõi alias nếu có. Nếu register vật lý vượt 15, dùng `invoke-static/range {p3 .. p3}`. Không chèn vào nhánh thoát do exception.

### 5.2 ActivityThread: khởi tạo process

Class `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

Tìm phép gán `mBoundApplication`. Theo dõi alias của `this` và `AppBindData` từ entry đến phép gán, rồi chèn hook **sau** lệnh ghi field, dùng cùng operand AppBindData. Ví dụ `v1` là this, `v9` là AppBindData:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không truyền receiver ActivityThread vào hook này. AppBindData ở register cao thì dùng `invoke-static/range {vN .. vN}` với register thực. Không cần thêm local.

### 5.3 ApplicationPackageManager: kết quả feature

Method `hasSystemFeature(Ljava/lang/String;I)Z` trong `Landroid/app/ApplicationPackageManager;`. Lúc vào method, `p1` là tên feature, `p2` là version. Chèn trước instruction gốc đầu tiên. Ví dụ giả định `v0` dùng được và register vật lý của parameter không vượt 15:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
    # Original first instruction and the complete stock body follow.
```

Boolean null thì chạy logic stock. Boolean khác null phải unbox; không trả object Boolean như primitive. Nếu parameter ở register cao, copy name/version vào hai scratch local liên tiếp rồi dùng `/range`.

### 5.4 AndroidKeyStoreKeyPairGeneratorSpi: tạo key

Method `generateKeyPair()Ljava/security/KeyPair;` trong `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`. Chèn ở entry trước instruction stock. Ví dụ giả định `v0` dùng được lúc vào method:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
    # Original stock body follows.
```

Receiver là generator (`p0`), không phải context. Null thì chạy toàn bộ nhánh tạo key gốc. Giữ cleanup và exception handling của ROM.

### 5.5 AndroidKeyStoreSpi: certificate chain

Method `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;` trong `Landroid/security/keystore2/AndroidKeyStoreSpi;`. Theo dõi nơi stock ghép leaf và CA thành mảng cuối. Lọc từng nhánh return chain hoàn chỉnh thành công; giữ nhánh null/lỗi gốc.

```smali
    # v3 contains the complete stock certificate array on this path.
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Thay `v3` bằng register mảng/return thực. `move-result-object` phải ghi đè đúng mảng sẽ trả về. Return register khác còn giữ mảng gốc sẽ bỏ mất chain đã sửa. Nếu cần, dùng lời gọi `/range` một register.

Tạo key và đọc chain là hai đường riêng. Đường `getCertificate()` đọc một certificate không được bao phủ bởi hook chain này. Cách chọn target và kiểm tra bằng key mới nằm trong [attestation guide](Attestation_Guide_2.0.6.0_VI.md).

---

## 6. Sửa services.jar

### 6.1 SystemServer: vòng đời service

Trong `Lcom/android/server/SystemServer;->run()V`, tìm `Looper.loop()V` chính sau bước khởi động service. Chèn đúng một hook ngay trước lời gọi đó:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

Không cần scratch. Không đặt trước `startOtherServices`, trước lúc provider/service khởi động, hoặc trong constructor. Dùng payload tương ứng có khởi tạo chuyển phần có thể chặn sang worker, để caller boot tiếp tục chạy. Vị trí gọi đúng không sửa được payload cũ chặn startup.

### 6.2 ComputerEngine: HMA ẩn danh sách app

Tìm overload `PackageStateInternal` mà các nhánh kiểm tra visibility của ROM thực sự đi qua:

- `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z`: `p1` package state, `p2` UID caller, `p5` user ID.
- `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z`: `p1` package state, `p2` UID caller, `p3` user ID.

Không nhầm overload nhận `SharedUserSetting`. Chèn tại entry trước stock check; giữ toàn bộ fallback gốc. Ví dụ overload bảy parameter, `v0` dùng được và tất cả operand invoke nằm trong 0..15:

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
    # Original visibility checks follow.
```

Với overload ba parameter, chỉ đổi operand user của hook thành `p3` sau khi xác minh signature. True nghĩa là **lọc/ẩn**, không phải cho phép. State/name null hoặc hook false thì tiếp tục logic stock. Truyền tên package đích, UID Binder caller gốc và đúng user; không thay bằng UID system-server.

Register cao thì dành block scratch liên tiếp `I, String, I`, copy UID/name/user bằng move đúng kiểu rồi gọi `/range`. Kiểm tra lại operand parameter của thân stock sau khi cấp local. Chèn vào overload không được caller đi qua sẽ không làm HMA hoạt động.

### 6.3 ComputerEngine: đọc nguồn cài đặt

Sửa cả hai API đọc nếu có: `getInstallerPackageName(String[, int])` và `getInstallSourceInfo(String[, int])`. Giữ lookup package, kiểm tra quyền và nhánh lỗi stock. Theo dõi chuỗi installer từ `InstallSource.mInstallerPackageName` (hoặc field tương ứng của ROM) đến return hoặc đối số **installing-package** trong constructor.

Hook nhận `(ContentResolver, callingUid, userId, targetPackage, stockInstaller)` và trả installer hiệu lực. Đường framework được hỗ trợ truyền resolver null. Capture UID caller, target/user ở entry trước khi stock ghi đè register. Overload chỉ nhận String thì lấy user bằng `UserHandle.getUserId(callingUid)`; overload `(String, int)` dùng đúng đối số user.

Ví dụ giả định lúc capture giá trị vẫn ở entry `p1/p2`, đã cấp an toàn `v10..v14`, chuỗi installer stock ở `v2`:

```smali
    # Entry capture: p1 = target package, p2 = user ID.
    # v10..v14 must be dedicated locals throughout the stock body.
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Giữ toàn bộ thân stock giữa block capture và các vị trí đọc bên dưới. Tại mỗi return chuỗi installer đã chứng minh, thay đúng `return-object v2` bằng:

```smali
    # Replace the stock return-object v2 at each proven installer return.
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Giữ UID/user/package đã capture trong suốt thân stock; đổi block nếu các slot đó còn sống. Với `getInstallSourceInfo`, lọc sau khi biết chuỗi installing stock và trước khi constructor dùng nó. Ghi String trả về vào đúng đối số installing. Giữ initiating/originating package, signing data, package source và các đối số khác. Không lọc cả object `InstallSourceInfo`, không lọc tên package không liên quan.

---

## 7. Sửa SettingsProvider.apk

Class `Lcom/android/providers/settings/SettingsProvider;`. Sửa đúng method dưới đây trong DEX chứa nó; giữ routing đọc/ghi và quyền stock của provider.

### 7.1 call(): Bundle spoof hoặc fallback stock

Descriptor: `call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;`. Entry: `p0` provider, `p1` method, `p2` tên setting, `p3` extras.

Tìm lệnh khởi tạo stock `getDeviceId()I`; nếu layout không có thì tìm `getRequestingUserId(Landroid/os/Bundle;)I`. Giữ lệnh gọi **liền với `move-result` gốc**. Chèn hook sau cả cặp, trước routing stock, khi `p1/p2` vẫn giữ method và tên setting. Ví dụ có chín local cũ, thêm an toàn scratch `v9`; `v4` vẫn là device ID stock:

```smali
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v4

    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :kaorios_settings_stock
    return-object v9
    :kaorios_settings_stock
    # Original instruction following the getDeviceId result continues here.
```

Layout requesting-user thì giữ `invoke-static {p3}, …getRequestingUserId(Bundle)I` và register nhận kết quả gốc, sau đó chèn cùng hook Bundle. Không thay `move-result` integer bằng `move-result-object`.

Bundle khác null thì return ngay; null thì chạy stock. Không gọi thêm `Settings.get*` hoặc gọi lại provider từ block chèn này. Không thay logic ghi stock hay trả Bundle rỗng cho mọi call.

Nếu `p1/p2` ở register cao, chúng là hai slot liên tiếp: dùng `invoke-static/range {p1 .. p2}`. Scratch nhận kết quả và register branch/return vẫn phải phù hợp opcode. Nếu không có điểm khởi tạo tương đương an toàn, theo dõi method OEM thay vì giả định anchor mẫu tồn tại.

**Mẫu lỗi boot đã gặp:** hook nằm giữa `invoke` stock và `move-result` integer có thể assemble thành công nhưng để lại instruction nhận kết quả sai. Ký lại APK hoặc bật CorePatch không sửa được chuỗi instruction này.

### 7.2 query(): giữ input query gốc

Descriptor: `query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;`.

Entry: `p1` URI, `p2` projection, `p3` selection, `p4` selectionArgs, `p5` sortOrder. Code stock đã tối ưu có thể ghi đè parameter. Cấp **ba local riêng**, chuẩn hóa alias parameter cũ và lưu URI/selection/selectionArgs trước instruction stock đầu tiên:

```smali
    # Example: original query had 5 locals. Allocate 3 more: .locals 8.
    move-object/from16 v5, p1
    move-object/from16 v6, p3
    move-object/from16 v7, p4
```

Mapping cụ thể: query instance này có sáu slot parameter. Nếu stock là `.registers 11` thì có năm local; alias cũ `v5..v10` tương ứng `p0..p5`. Đổi những operand alias đó trước, rồi chuyển thành `.locals 8` (tổng 14 register). Ba local mới `v5..v7` không còn là parameter; parameter mới nằm ở `v8..v13`.

Giữ `v5..v7` không bị ghi trong toàn bộ thân gốc. Ngay trước **mọi** `return-object`, lọc Cursor stock với input đã lưu rồi return kết quả hook. Ví dụ sau tăng local, `p0` là `v8` vật lý nên tất cả operand vẫn vừa lời gọi thường:

```smali
    # p0 holds the stock Cursor on this example's return path.
    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0
```

Dùng đúng register return của từng nhánh, gồm nhánh stock trả null. Không lấy `p1/p3/p4` đã bị ghi đè làm input query. Nếu return ở register cao không vừa invoke, copy Cursor/URI/selection/selectionArgs vào block bốn slot riêng liên tiếp rồi dùng `/range`. Overload query khác phải theo dõi delegation; không dán mapping parameter này vào overload Bundle.

---

## 8. Sửa field Build tùy chọn cho Android 17

Chỉ áp dụng với profile Android 17 cần field Build có thể thay đổi để spoof. Giữ phần khởi tạo `<clinit>` của ROM.

Trong `Landroid/os/Build;`, xóa `final`, đặt initializer String thành `null` cho:

`BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.

```smali
    # Before:
.field public static final BRAND:Ljava/lang/String; = "example"
# After:
.field public static BRAND:Ljava/lang/String; = null
```

Với `TIME:J`, chỉ xóa `final`. Trong `Landroid/os/Build$VERSION;`, chỉ xóa `final` ở `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Giữ `SDK_INT` và field không liên quan. Không copy khai báo field Android 17 sang Android 13–16.

---

## 9. Assemble và đóng gói artifact đã sửa

Assemble từng cây smali đã đổi về **đúng tên entry DEX gốc**, rồi replace các entry đó trong bản copy archive stock. Ví dụ input `classes2.dex` tương thích assembler API 34:

```bash
mkdir -p work/framework/output work/framework/recheck/input
smali a --api 34 work/framework/smali_classes2 \
    -o work/framework/output/classes2.dex
cp framework.jar work/framework/output/framework.jar
(cd work/framework/output && zip framework.jar classes2.dex)
unzip -p work/framework/output/framework.jar classes2.dex \
    > work/framework/recheck/input/classes2.dex
cmp work/framework/output/classes2.dex work/framework/recheck/input/classes2.dex
baksmali d work/framework/recheck/input/classes2.dex \
    -o work/framework/recheck/smali_classes2
```

Dùng `zip` replace entry trực tiếp, không dùng `zip -u`: tùy chọn `-u` phụ thuộc timestamp và có thể giữ DEX stock nếu entry JAR có thời gian mới hơn file build. `cmp` kiểm tra byte của DEX đã build với DEX trích từ **JAR cuối**, rồi mới decompile bản trích đó. Workspace recheck phải mới/rỗng để không lẫn class cũ.

Chọn assembler API theo format/opcode DEX input và toolchain hỗ trợ, không copy số SDK của ROM. Kiểm tra header DEX trước/sau. Không ép format container DEX mới chỉ vì ROM là Android 17. Trong lần kiểm tra artifact ROM đã gửi, framework/services dùng API 34, provider dùng API 29; đó là kết quả cho artifact ấy, không phải mặc định mọi ROM.

Làm tương tự cho mọi split đã sửa, giữ hash DEX không sửa. Kiểm tra danh sách entry ZIP cuối: không trùng tên entry, không mất split, không lồng nhầm thư mục `work/`.

Với `SettingsProvider.apk`, giữ manifest/resources, ký qua quy trình build/platform signing của ROM rồi kiểm tra bằng `apksigner verify` của SDK. Copy `META-INF` hoặc APK Signing Block gốc không làm nội dung đã sửa hợp lệ. Artifact unsigned để test host không phải APK triển khai được. Overlay system có digest sai chỉ dùng khi đã xác minh riêng nhánh trusted-system scan của đúng ROM; guide patch tay chung không thể mặc định có bypass đó.

Sau ký, kiểm tra riêng tính hợp lệ chữ ký và signer:

```bash
apksigner verify --verbose --print-certs SettingsProvider.apk.orig
apksigner verify --verbose --print-certs SettingsProvider-signed.apk
```

Lệnh verify thành công chỉ xác minh chữ ký của APK đó. So signer certificate/lineage với bản stock và yêu cầu platform/shared UID của ROM; ký bằng key khác vẫn có thể verify nhưng không được ROM chấp nhận. Thực hiện zipalign trước khi ký, không sửa ZIP sau ký. Xem [tài liệu apksigner](https://developer.android.com/tools/apksigner).

---

## 10. Kiểm tra bytecode cuối bằng tay

Trích và decompile lại **output đã đóng gói**, không chỉ xem workspace trước assemble. Kiểm tra:

1. Method payload được hook gọi tồn tại với đúng descriptor; đủ dependency, mỗi class có một owner.
2. Cả hai overload Instrumentation gọi sau attach, truyền Context thực; ActivityThread truyền AppBindData sau phép gán `mBoundApplication`.
3. Mọi lệnh nhận kết quả theo sau producer, đúng loại primitive/object/wide, kết quả được branch/return thực sự sử dụng.
4. Hook nullable có nhánh về logic stock nguyên vẹn. Parameter stock không đổi danh tính sau tăng local; range không thêm đối số.
5. SystemServer khởi tạo một lần ngay trước loop chính. HMA nằm trên nhánh visibility được dùng, truyền đúng UID caller, target name và user.
6. API nguồn cài đặt lọc chuỗi installing tại return/constructor thực. Query provider capture input gốc và lọc mọi return Cursor.
7. Danh sách descriptor đúng kế hoạch import, hash DEX không sửa khớp stock, chữ ký provider xác minh với signer dự kiến của ROM.

Assemble thành công kiểm tra syntax/encoding, chưa kiểm tra hết quy tắc type/control-flow của ART. Decompile lại xác nhận nội dung đã đóng gói; cả hai chưa chứng minh máy boot được. Ghi riêng kết quả host, artifact và thiết bị.

---

## 11. Triển khai, khoanh vùng bootloop và test tính năng

Chỉ triển khai artifact build cho đúng ROM. Module phải mount framework/services và provider vào đúng đường dẫn stock, đúng owner và SELinux label. Không cài provider bằng `pm install`; chuẩn bị cách khôi phục trước lần reboot đầu.

Test payload framework và hook framework/services với provider stock trước. Khi boot được mới thêm provider đã patch và ký đúng. Sau đó test mở Toolbox, Settings theo app, HMA, nguồn cài đặt. Chỉ thêm FLAG_SECURE/CorePatch sau khi tích hợp core hoạt động.

Lấy lỗi boot đầu tiên có thể thu được:

```bash
adb logcat -b all -v threadtime > boot.log
# Run in a separate terminal after the system responds:
adb shell getprop sys.boot_completed
```

Nếu SettingsProvider gây bootloop, disable module overlay hoặc khôi phục đầy đủ bộ artifact stock để máy lên lại. Với module ID `kaorios_rom_hzz`, tạo file `disable` trong từng thư mục đang tồn tại `/data/adb/modules/kaorios_rom_hzz/` và `/data/adb/modules_update/kaorios_rom_hzz/` bằng root/recovery rồi reboot. Recovery cần truy cập được phân vùng data. Không xóa dữ liệu Settings để bù cho method bị hỏng.

Sau khôi phục, tìm `VerifyError`, `ClassNotFoundException`/`NoSuchMethodError`, lỗi chữ ký hoặc SELinux denial đầu tiên. Kiểm tra cặp invoke/result, register và payload trước khi đổi chính sách ký/SELinux. Nếu framework/services boot với provider stock nhưng lỗi khi thêm provider patch thì khoanh vùng được phần tích hợp provider; chưa xác định nguyên nhân cụ thể nếu thiếu log.

Profile `hzz` đã có báo cáo bootloop và lỗi invoke/result provider được xác nhận. Artifact sửa đã qua kiểm tra; chưa xác minh boot trên máy thật. Với HMA, chọn **app caller** và template chứa app đích cần ẩn, force-stop caller rồi test lại. Attestation cần apply target/mode và tạo key mới theo [attestation guide](Attestation_Guide_2.0.6.0_VI.md).

### Process provider và SELinux domain

Đọc manifest thực: `android:process` của provider ưu tiên hơn process application; mặc định là package name, tên bắt đầu `:name` thì tương đối theo package. Profile đã gửi dùng process chia sẻ `system`, không phải `system_server`. Chỉ tìm theo package name có thể bỏ sót process.

Khớp tên đầu tiên kết thúc bằng NUL trong `/proc/<pid>/cmdline`, rồi đọc `/proc/<pid>/attr/current`. Dùng domain quan sát được của đúng ROM. Không đoán `system_app` hay bật SELinux permissive. Hash file PASS không xác nhận đúng process/domain hoặc quyền Binder runtime.

---

## 12. Patch tùy chọn

Ẩn trạng thái developer/ADB: xem overload `Settings$NameValueCache.getStringForUser(...)` trả String của đúng ROM. Mẫu `framework/Settings$NameValueCache.smali` theo phiên bản có entry hook `shouldHideDevStatusFromNameValueCache(ContentResolver, String, int)Z`: true trả `"0"`, false chạy stock. Xác minh operand resolver/name/user và scratch trước khi dùng; giữ logic ghi nguyên vẹn.

Với descriptor instance `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`, entry `p1/p2/p3` là resolver/name/user. Khi `v0` dùng được, chèn trước instruction stock đầu tiên:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
    # Original stock body follows.
```

Range chứa đúng ba slot parameter. Không áp dụng vào overload khác hoặc tăng local mà bỏ qua kiểm tra lệnh gốc.

Phần tùy chọn có [guide FLAG_SECURE](Disable_Secure_Flag_VI.md) và [guide CorePatch](CorePatch_VI.md) riêng. Cả hai không sửa bytecode SettingsProvider sai.
