# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

[English](Patch_Guide_2.0.6.0.md) | **Tiếng Việt**

> Giữ nguyên các file JAR/APK stock của ROM đích. Không thay DEX stock hoặc copy nguyên class từ template của ROM khác sang.

Guide này dùng chung cho Android 13, 14, 15, 16 và 17. Tên class/method có thể thay đổi giữa AOSP và ROM OEM, nên template chỉ dùng để tìm logic tương đương. Những điểm riêng của Android 17 được ghi chú ngay tại mục liên quan.

> [!WARNING]
> Register trong snippet chỉ là ví dụ. `vScratch`, `vHook`, `vX` và `<cursor_reg>` là placeholder, phải đổi thành register hợp lệ của ROM đích. Xác định giá trị và liveness thực tế của cả `v0` trước khi sửa; không ghi đè register stock còn dùng trên nhánh fallback.

## Bắt đầu từ file stock sạch của ROM đích

Sao lưu `framework.jar.orig`, `services.jar.orig`, `SettingsProvider.apk.orig` trước khi sửa. Luôn dùng file sạch từ đúng ROM đích. Không copy sample `tmp/fw/` vào ROM, không copy nguyên class Template từ ROM khác, và tránh dùng framework đã patch tùy tiện. Nếu chỉnh sửa cũ xung đột, khôi phục source sạch rồi patch lại.

## Workspace Multi-DEX

Class đích có thể ở `classes2.dex`, `classes3.dex` hoặc split khác thay vì `classes.dex`. Disassemble từng DEX vào cây riêng:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input
for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_${name}"
done
```

Kết quả là `work/framework/smali_classes`, `work/framework/smali_classes2`, ... Dùng tương tự `work/services/` và `work/settingsprovider/` cho hai archive còn lại. Tìm class trên mọi cây smali của workspace; không ghi đè dataset `tmp/fw/`.

Kiểm chứng raw ngày **2026-10-01**: 15 archive, 48 DEX, 25 full-Dex roundtrip và 50 class auto-target PASS; cả 15 originals không đổi. Xem [ma trận và dữ liệu JSON](Sample_Compatibility_2.0.6.0.md). Input A17 đã có năm hook và payload cũ; `ALREADY_PATCHED` không phải chèn mới. Không dùng sample hoặc payload cũ để triển khai. Số register trong ví dụ số chỉ thuộc sample; `vScratch`, `vHook`, `vCursor`, `vSavedUri` và tên `v...` bằng chữ là **ký hiệu pseudocode**, phải thay bằng register đã resolve trên ROM đích. ABI hiện tại phải khớp DEX đang triển khai, kể cả khi patch sample A13–A16.

## Included Framework Samples

`tmp/fw/**` chứa sample/reference framework từ một số thế hệ Android/HyperOS. Mỗi sample có `framework.jar`, `services.jar`, `SettingsProvider.apk`. Dataset giúp xem class tồn tại, method descriptor, control flow, register layout, nghiên cứu tương thích và phát triển/test patcher.

Sample không phải file để flash, framework chuẩn, replacement cho ROM của bạn, bằng chứng mọi ROM cùng Android giống nhau hay runtime dependency. Các quan sát dưới đây chỉ áp dụng **trong sample đi kèm**; class presence không chứng minh feature được hỗ trợ đầy đủ.

| Target | A13 sample | A14 sample | A15 sample | A16 sample | A17 sample |
|---|---|---|---|---|---|
| ActivityThread / handleBindApplication | FOUND | FOUND | FOUND | FOUND | FOUND |
| Instrumentation / both newApplication overloads | FOUND | FOUND | FOUND | FOUND | FOUND |
| ApplicationPackageManager / hasSystemFeature(String,int) | FOUND | FOUND | FOUND | FOUND | FOUND |
| AndroidKeyStoreKeyPairGeneratorSpi / generateKeyPair | FOUND | FOUND | FOUND | FOUND | FOUND |
| AndroidKeyStoreSpi / engineGetCertificateChain | FOUND | FOUND | FOUND | FOUND | FOUND |
| Build | FOUND | FOUND | FOUND | FOUND | FOUND |
| Build$VERSION | FOUND | FOUND | FOUND | FOUND | FOUND |
| SystemServer / run | FOUND | FOUND | FOUND | FOUND | FOUND |
| ComputerEngine | FOUND | FOUND | FOUND | FOUND | FOUND |
| AppsFilterBase | FOUND | FOUND | FOUND | FOUND | FOUND |
| AppsFilterImpl | FOUND | FOUND | FOUND | FOUND | FOUND |
| IPackageManagerBase | FOUND | FOUND | FOUND | FOUND | FOUND |
| PackageManagerService | FOUND | FOUND | FOUND | FOUND | FOUND |
| PackageManagerService$IPackageManagerImpl | FOUND | FOUND | FOUND | FOUND | FOUND |
| InstallSourceInfo | FOUND | FOUND | FOUND | FOUND | FOUND |
| SettingsProvider / call + query | FOUND | FOUND | FOUND | FOUND | FOUND |
| ComputerEngine / PackageStateInternal IIZZ overload | DIFFERENT LAYOUT | DIFFERENT LAYOUT | FOUND | FOUND | FOUND |
| SettingsProvider.call / getDeviceId() anchor | NOT FOUND | NOT FOUND | NOT FOUND | NOT FOUND | FOUND |
| SettingsProvider.call / getRequestingUserId(Bundle) anchor | FOUND | FOUND | FOUND | FOUND | FOUND |

`FOUND` là đã tìm thấy class/method được ghi ở row. `NOT FOUND` là không có target cụ thể đó. `DIFFERENT LAYOUT` là có class nhưng descriptor đang so sánh khác; `NOT APPLICABLE` dùng khi target không liên quan (không có ô nào cần trạng thái này trong matrix).

### Included sample observations

- **MIUI 14 / Android 13 (`miui14-a13`)**: trong sample đi kèm, `newApplication(Class,Context)` là static, Context `p1`; overload ClassLoader là instance, Context `p3`. ComputerEngine có overload PackageStateInternal `II` và ComponentName `II`, chưa có `IIZZ`. SettingsProvider.call dùng `getRequestingUserId(Bundle)`; query có `.registers 10`, 7 return-object.
- **HyperOS 1 / Android 14 (`os1-a14`)**: trong sample đi kèm, mapping Instrumentation và anchor SettingsProvider như A13; ComputerEngine thêm ComponentName `IIZ`, chưa có `IIZZ`. Query có `.registers 10`, 7 return-object.
- **HyperOS 2 / Android 15 (`os2-a15`)**: trong sample đi kèm, ComputerEngine có `IIZZ`; SettingsProvider.call vẫn dùng `getRequestingUserId(Bundle)`. Query có `.registers 11`, 7 return-object.
- **HyperOS 3 / Android 16 (`os3-a16`)**: trong sample đi kèm, ComputerEngine có `IIZZ`; call vẫn dùng `getRequestingUserId(Bundle)`. Query có `.registers 10`, 7 return-object.
- **HyperOS 4 / Android 17 (`os4-a17`)**: trong sample đi kèm, call có cả hai anchor, patcher ưu tiên `getDeviceId()`; ComputerEngine có `IIZZ`. Query có `.registers 11`, 8 return-object và lời gọi `getDeviceId()`.

Trong cả 5 sample, hai overload Instrumentation có một return-object mỗi method; KeyStore SPI có hai nhánh null và một nhánh trả mảng đã điền (register `v3`, `.registers 11`). `SystemServer.run()` có cả `startOtherServices(...)` và `Looper.loop()`; register count khác nhau. AppsFilterBase có `shouldFilterApplication(...)` và `shouldFilterApplicationUsingCache(III)Z`; AppsFilterImpl tồn tại nhưng không tự khai báo hai method này. Phải kiểm tra method inherited và descriptor thực tế. Đây là quan sát source của 15 archive qua baksmali trên mọi DEX split, không phải CI oracle hay kiểm chứng runtime/device.

## Auto-patcher

```bash
python3 script/kaorios_patcher_a17.py work/framework --mode 1 --no-delay
# General CLI:
python3 script/kaorios_patcher_a17.py <target_dir_or_file> --mode {1,2,3} [--no-delay]
```

Mode `1` chèn hooks; mode `2` patch Build spoof A17 (`Build` và `Build$VERSION`); mode `3` thực hiện cả hai. `--no-delay` tắt hiệu ứng gõ chữ. Quét workspace smali của framework, services và SettingsProvider tương ứng; tên A17 không đảm bảo mọi layout OEM được hỗ trợ.

Patcher kiểm tra register/control-flow được hỗ trợ và verify cấu trúc hook trước khi lưu; không chạy smali assembler. Một file không thuộc target của mode sẽ báo không nằm trong danh sách mục tiêu và không thành công; thư mục không có target cũng thất bại. CLI không in một status literal riêng cho file ngoài target. Exit `0` nghĩa là xử lý bắt buộc trong ngữ cảnh CLI đã thành công; exit `1` nghĩa là lỗi, unsupported hoặc không có target áp dụng. Patch trên cây làm việc có backup: file thành công trước đó có thể đã được lưu khi một file khác thất bại.

## 1. `framework.jar`

### A. Khởi tạo cho từng ứng dụng

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Smali mẫu:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

Với cả hai overload, mỗi `return-object` trên đường trả về được hỗ trợ phải có `initContext()` ngay trước nó. Patcher verify mọi đường return; không chỉ patch return cuối theo thứ tự văn bản:

1. `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`
   Trong cả năm sample đi kèm, method này **static**, `.registers 3`: `p0=Class=v1`, `p1=Context=v2`, một return. Hook:
   ```smali
   invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```
   Nếu ROM đích có variant instance, resolve lại: `p0=this`, `p1=Class`, `p2=Context`; truyền `p2`, không copy mapping static.

2. `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
   Trong virtual instance method, `p0` là `this`, `p1` là `ClassLoader`, `p2` là `String`, và `p3` là `Context`:
   ```smali
   invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```

Nếu chỉ số vật lý của parameter register vượt quá 15 (do số `.locals` lớn), dùng `invoke-static/range {pN .. pN}`. Không cần cấp thêm register.

#### ActivityThread: alias entry đã xác minh

Trong cả năm sample, method là `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`. Entry copy `this` và AppBindData sang local; literal `iput-object p1,p0` không có. Patcher chứng minh alias từ entry, từ chối alias bị ghi đè hoặc back edge không an toàn, rồi chèn ngay sau assignment mBoundApplication vào receiver đúng.

| Sample | .registers | AppBindData / this alias |
|---|---:|---|
| A13 | 35 | v2 / v1 |
| A14 | 35 | v10 / v9 |
| A15 | 38 | v10 / v9 |
| A16 | 32 | v9 / v1 |
| A17 | 39 | v9 / v1 |

Ví dụ **chỉ thuộc A13 sample**:

```smali
iput-object v2, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
invoke-static {v2}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Không tăng locals. Truyền alias AppBindData thật; nếu chỉ số vật lý >15, dùng range một register sau khi chứng minh alias. DEX triển khai phải export đúng Object ABI này.

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

#### An toàn cấp phát Register trong Smali & Scratch Register

`hasSystemFeature(String, int)` là một virtual instance method có 3 parameter register: `p0` (`this`), `p1` (`String`), và `p2` (`int`).

> [!WARNING]
> **TUYỆT ĐỐI KHÔNG tái sử dụng hoặc ghi đè `v0`!**
> Logic gốc của ROM phụ thuộc vào các register như `v0` được bảo toàn nguyên vẹn. Khi hook trả về `null` (fallback về logic stock), việc ghi đè `v0` sẽ gây crash hoặc hỏng trạng thái hệ thống. Bắt buộc phải cấp phát một register tạm riêng (`vScratch`).

**Các bước cấp phát Register:**
1. **Chuẩn hóa Parameter Aliases:**
   Nếu method sử dụng `.registers R`, các parameter `p0..p2` được ánh xạ vật lý vào `v(R-3)..v(R-1)`. Bất kỳ lệnh stock nào tham chiếu các parameter này qua `vN` phải được đổi sang `pN` trước khi mở rộng directive registers để tránh ghi đè sai giá trị parameter.
   Quy tắc này cũng áp dụng với `.locals`: với `.locals 2`, `p0=v2`, `p1=v3`, `p2=v4`; sau khi tăng thành `.locals 3`, `p1=v4`, nên `v3` cũ không còn là `p1`. Chuẩn hóa mọi alias parameter stock trước khi tăng locals.
2. **Mở rộng Directive Register thêm 1:**
   - Nếu dùng `.locals L`: đổi thành `.locals L+1`. Register tạm mới là `vL`.
   - Nếu dùng `.registers R`: đổi thành `.registers R+1`. Register tạm mới là `v(R-3)`.
3. **Giới hạn khoảng Dalvik Format 35c vs. 3rc (Register > 15):**
   - Dalvik Format 35c (`invoke-static {p1, p2}`) chỉ hỗ trợ register 4-bit (`0..15`).
   - Nếu `p1 > 15` hoặc `p2 > 15`, dùng Format 3rc: `invoke-static/range {p1 .. p2}`.
   - Nếu `vScratch > 15`, dùng `invoke-virtual/range {vScratch .. vScratch}` cho `booleanValue()`.

**Chèn Hook:**
Ngay dưới directive register đã cập nhật, thêm:

```smali
    # Format 35c (registers <= 15) hoặc Format 3rc (/range khi > 15)
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object vScratch

    if-eqz vScratch, :cond_kaorios_feature_stock
    invoke-virtual {vScratch}, Ljava/lang/Boolean;->booleanValue()Z
    move-result vScratch
    return vScratch

:cond_kaorios_feature_stock
```

Khi hook trả về `null`, code stock tiếp tục thực thi với toàn bộ các register gốc còn nguyên vẹn.

Đổi tên nhãn khác nếu method target đã tồn tại `:cond_kaorios_feature_stock`.

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

`generateKeyPair()` là virtual method có 1 parameter register: `p0` (`this`).

**Cấp phát Register:**
- Tăng `.locals L` lên `.locals L+1` (scratch local mới là `vL`), hoặc `.registers R` lên `.registers R+1` (chuẩn hóa `v(R-1)` thành `p0`, scratch local là `v(R-1)`).
- Nếu `p0 > 15`, dùng `invoke-static/range {p0 .. p0}`.

**Chèn Hook:**
Ngay sau directive register/local, thêm:

```smali
    invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object vScratch

    if-eqz vScratch, :cond_kaorios_gen_stock
    return-object vScratch

:cond_kaorios_gen_stock
```

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

`engineGetCertificateChain` là virtual method: `p0` (`this`), `p1` (`String alias`).

Tìm một nhánh lá trả mảng đã điền: `aput-object` ghi vào register mảng X, tiếp theo chỉ có dòng trống hoặc directive debug được layout đã verify cho phép (`.line`, `.local`, `.end local`, `.restart local`), rồi `return-object X`. Chèn hook X ngay trước return đó, move-result-object vào chính X. Không chọn lệnh ghi mảng theo thứ tự văn bản; phải xác minh luồng mảng và nhánh return.

> [!IMPORTANT]
> **Lý Do Chỉ Hook Tại Nhánh Lá (Leaf-Path Placement):**  
> `engineGetCertificateChain` chứa các nhánh thoát trả về null sớm (khi `KeyEntryResponse` null hoặc mảng byte certificate null) và đúng một nhánh trả về mảng chứng chỉ đã điền đầy đủ (`caList`). Tuyệt đối **không** được hook vào các nhánh return null này. Việc hook vào nhánh null sẽ truyền `null` vào hook hoặc trả về mảng giả lập khi không có chứng chỉ tồn tại, phá vỡ logic fallback mặc định và gây lỗi `NullPointerException` cho client gọi Keystore. Hook `KaoriosHook.CertificateChainIfNeeded` phải được đặt chính xác tại nhánh lá chứa mảng đã điền, ngay sau khi certificate lá được gán vào mảng qua `aput-object` và trước lệnh `return-object`. Giữ nguyên các nhánh trả null sớm; không hook vòng lặp trung gian. Layout mơ hồ: `UNSUPPORTED_LAYOUT`.

Ví dụ:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

return-object v3
```

Chèn:

```smali
# Nếu array_reg <= 15:
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
# Hoặc nếu array_reg > 15:
# invoke-static/range {v3 .. v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

Register truyền vào hook phải là register chứa mảng Certificate[]. Kết quả `move-result-object` phải được ghi vào register dùng cho lệnh `return-object` cuối.

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

### Anchor thực tế trong sample

Cả năm `run()V` đã tạo system context trước `startOtherServices(...)`, rồi tới `Looper.loop()V`. Patcher ưu tiên loop anchor; hook mới A13–A16 ở ngay trước loop. Hook có sẵn trong A17 nằm trước startOtherServices và được verifier chấp nhận. Fallback startOtherServices chỉ dùng khi layout tương ứng được xác minh; không chọn anchor chỉ từ nhãn Android.

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
invoke-static {}, Landroid/os/Looper;->loop()V
```

Không cần scratch. Giữ nguyên try/catch boundaries; full-Dex roundtrip của run đã PASS, nhưng bootstrap Binder trên thiết bị vẫn cần test.

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

#### AppsFilter: đường reference

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

Phải xác định đúng register thật trên ROM đích. Trong cả năm sample, AppsFilterImpl kế thừa AppsFilterLocked rồi AppsFilterBase; đường production được roundtrip là ComputerEngine: II ở A13/A14, IIZZ ở A15–A17. Snippet AppsFilter/direct-cache chỉ là reference, chưa được auto-patch hoặc chứng nhận runtime.

#### Đường ComputerEngine hiện tại trong sample đi kèm

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

ABI hiện tại dùng cho cả năm sample:

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

Bật Advanced Features rồi chỉnh rule của caller trong Hide Features. `hideInstallationSource` báo Play Store cho ứng dụng thường đã cài mà caller truy vấn. `hideSystemInstallationSource` tùy chọn trả null cho ứng dụng hệ thống; nếu tắt thì giữ stock. `excludeTargetInstallationSource` giữ nguồn cài đặt của chính caller. Tắt tùy chọn cha không xóa giá trị con. Policy installer áp dụng cho các target đã cài được caller truy vấn, độc lập danh sách target/template dùng để ẩn app. Caller manager, target không xác định và lỗi runtime giữ stock; tắt Advanced cũng giữ stock. Shared UID có thể kích hoạt policy từ bất kỳ rule hợp lệ của package trong UID, trừ UID chứa manager.

Trong sample A17 đi kèm, patch cả `ComputerEngine.getInstallerPackageName(String,int)String` và `ComputerEngine.getInstallSourceInfo(String,int)InstallSourceInfo`. API thứ hai chỉ lọc argument installing package khi dựng kết quả, bao phủ `getInstallingPackageName()`. Giữ nguyên initiating/originating package, update owner, package source, dữ liệu cài đặt và giao dịch PackageInstaller. Xem [bảng sample và checklist thiết bị](Sample_Compatibility_2.0.6.0.md) để biết descriptor A13–A16 và phạm vi chính xác.

```sh
python script/patch-installer-source.py /path/to/ComputerEngine.smali
python script/patch-installer-source.py /path/to/ComputerEngine.smali --verify-only
```

Mode 1/3 của patcher chính và pipeline services cũng patch installer khi có method API tương ứng. Phải nhận diện được cả hai API; layout thiếu một phần hoặc không rõ bị từ chối trước khi lưu. Fixture chỉ có visibility không chứng minh installer đã được patch. Verifier kiểm tra nguồn installer stock, Binder UID gốc, target/user, thay giá trị kết quả và đủ các đường return/constructor liên quan. Copy parameter giữ register vật lý stock, scratch liên tiếp dùng `/range` an toàn. Resolver null là chủ ý của hook snapshot hiện tại. Assemble, decompile lại và verify DEX trước khi tích hợp ROM. Probe Settings không chứng minh hook installer hoạt động.

---

### D. Lọc / spoof Settings theo app gọi

Phần này khác rõ giữa implementation/framework cũ và patch A17 hiện tại.

#### Hook String hai bước của framework cũ

`shouldRemoveSetting(ContentResolver,String,String)` rồi `filterSettingValue(ContentResolver,String,String,String)` là ABI tương thích đã deprecated. Hai bước phải nhận cùng namespace/name và Binder caller gốc trên cùng provider thread. Không chèn trực tiếp vào method trả `SettingsState$Setting` hoặc Bundle. Các getGlobal/getSecure/getSystemSetting đã inspect trả SettingsState$Setting nên String hook trực tiếp là NOT_APPLICABLE trong cả năm sample. Với DEX hiện tại, layout call/query của các sample này khớp strategy modern bên dưới. Xem [kiểm chứng sample](Sample_Compatibility_2.0.6.0.md); không ép hook legacy vào A17.

#### Strategy call/query hiện tại trong cả năm sample

Patcher A17 hiện patch:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

#### 1. Method: `call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;`

ABI hook:

```smali
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
```

`call(...)` là instance method: `p0=this`, `p1=method`, `p2=name`, `p3=args`. Patcher tìm anchor ngữ nghĩa an toàn theo thứ tự:

1. `getDeviceId()I`: có trong call của sample A17, ưu tiên khi nhận diện layout an toàn.
2. `getRequestingUserId(Landroid/os/Bundle;)I`: fallback trong sample A13–A16, cũng có ở A17. Không coi anchor là bảo đảm theo phiên bản.

> [!IMPORTANT]
> **Bảo Toàn Định Danh Người Gọi (Caller Identity Preservation):**  
> Hook bắt buộc phải được chèn SAU anchor và lệnh `move-result` đi kèm, nhưng phải đứng nghiêm ngặt TRƯỚC `Binder.clearCallingIdentity()`. Việc đặt hook trước `clearCallingIdentity()` đảm bảo rằng danh tính Binder thực tế của package gọi (`Binder.getCallingUid()` và `Binder.getCallingPid()`) vẫn được giữ nguyên vẹn, điều kiện bắt buộc để bộ lọc package và spoofing cài đặt hoạt động chính xác theo từng caller. Không suy ra anchor chỉ từ phiên bản Android. Patcher chuẩn hóa alias vật lý của parameter trước khi tăng locals, rồi cấp register scratch mới `vHook`.

Dùng `invoke-static {p1, p2}` khi chỉ số vật lý của cả hai <=15; nếu cao hơn, dùng `invoke-static/range {p1 .. p2}` vì hai argument liên tiếp. Ví dụ layout thấp:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

Nếu hook trả `null`, code stock chạy tiếp.

**Cảnh báo nguy cơ Parameter Alias trong `.registers`:**
Đối với method dùng `.registers R` thay vì `.locals L`, các parameter register (`p0..pN`) được ánh xạ vật lý vào các register cuối `v(R-P)..v(R-1)`. Khi tăng số register hoặc locals, các lệnh gốc sử dụng tên bí danh vật lý `vN` sẽ bị lệch (trỏ vào local thay vì parameter). Patcher tự động chuẩn hóa toàn bộ bí danh parameter `vN -> pN` trước khi mở rộng directive registers.

Nếu method dùng `.registers R`, method này có 4 parameter register (`p0..p3`):

```text
stock locals = R - 4
vHook = v(R - 4)
.locals mới = R - 4 + 1
```

#### 2. Method: `query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;`

Trong cả năm query thật, stock code tái sử dụng p1/p3/p4 cho projection/table/name/boolean tạm. **Không truyền trực tiếp p1,p3,p4 ở return.** Trước khi tăng locals, canonicalize mọi alias parameter; cấp ba local mới rồi lưu URI/selection/args gốc tại entry, trước stock instructions.

Ký hiệu pseudocode: stock locals=L; vSavedUri=vL, vSavedSelection=v(L+1), vSavedArgs=v(L+2); locals mới=L+3.

```smali
move-object/from16 vSavedUri, p1
move-object/from16 vSavedSelection, p3
move-object/from16 vSavedArgs, p4
# ... stock body; p-register có thể đã bị tái sử dụng ...
invoke-static {vCursor, vSavedUri, vSavedSelection, vSavedArgs}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object vCursor
return-object vCursor
```

Mọi return được hỗ trợ phải dùng đúng cursor register của stock và ba bản lưu không bị ghi đè. R10 có p1/p3/p4=v5/v7/v8: tăng thành .locals 7, lưu v4/v5/v6. R11 có p1/p3/p4=v6/v8/v9: tăng thành .locals 8, lưu v5/v6/v7. Đây là số sample, không phải số để copy sang ROM khác. Số return là 7/7/7/7/8; cả full DEX đã roundtrip. Hook cũ không lưu args bị verifier từ chối; quay về input sạch trước khi patch lại.

Patcher vẫn giới hạn bảo thủ format 35c: p1/p3/p4 sau growth và cursor return phải <=15. Lỗi `register exceeds format 35c limit (> 15)` (hoặc `return register ... exceeds format 35c limit (> 15)`) là UNSUPPORTED_LAYOUT. Cursor cùng saved args không được bảo đảm liên tiếp/đúng thứ tự; không đổi thẳng sang invoke-static/range khi chưa move đủ bốn argument vào scratch liên tiếp và verify layout mới. Không ép patch.

Try/catch, clearCallingIdentity hoặc invoke-range cắt qua ranh giới local/parameter không được hỗ trợ thì fail closed. Không patch chỉ return cuối. Trong cả năm call/query sample không có identity clear/restore; yêu cầu giữ caller vẫn áp dụng khi gặp layout khác. Assembly không thay thế kiểm chứng kiểu/nguồn argument; runtime Binder/SELinux còn cần thiết bị.

#### 3. Yêu cầu SELinux cho AdvancedPolicy Service

Service `AdvancedPolicyService` hoạt động như một system Binder service có tên `kaorios_advanced_policy`. Để SettingsProvider và system_server tương tác thông suốt, SELinux policy của ROM cần thỏa mãn:
1. **Service Type**: `kaorios_advanced_policy_service` được khai báo là `service_manager_type`.
2. **service_contexts**: Ánh xạ chính xác `kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0` không bị trùng lặp xung đột.
3. **system_server**: Cho phép `service_manager { add find }` đối với `kaorios_advanced_policy_service`.
4. **Domain của SettingsProvider** (thường là `system_app`): Cho phép `service_manager { find }` đối với `kaorios_advanced_policy_service`.
5. **Binder Call**: Cho phép `binder { call }` giữa domain của SettingsProvider và `system_server`.
6. **Manager runtime status**: Domain thực tế của Toolbox cũng cần service_manager find và Binder call tới system_server. Không suy ra permission từ static sample; xác minh domain/policy trên thiết bị.

Sử dụng tool kiểm tra: `script/check-advanced-policy-sepolicy.sh` hoặc `script/check-advanced-policy-sepolicy.py`.

#### 4. Bắt buộc chạy Verifier sau patch

Toàn bộ file smali sau khi patch phải vượt qua verifier tương ứng trước khi đóng gói DEX:
- Framework: `verify-framework-a17-hooks.py`
- Services (`ComputerEngine`): `verify-services-a17-hooks.py`
- SystemServer: `verify-systemserver-a17-hooks.py`
- SettingsProvider: `verify-settingsprovider-a17-hooks.py`

Không build hoặc flash artifact nếu bất kỳ verifier nào trả về mã lỗi non-zero.

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

## Rebuild và tích hợp ROM

Dùng toolchain pinned trong [sample report](Sample_Compatibility_2.0.6.0.md): smali/baksmali/dexlib2/util 3.0.8, JCommander 1.64. Full framework có hidden-API flags nên không dùng API mặc định 15. Với tool này, input DEX 039 dùng assembler API 29, DEX 040 dùng API 34 để giữ format gốc; API >=35 có lỗi writer DEX 041. Xác nhận output tồn tại, magic giữ nguyên, re-disassemble và verify full DEX; không sửa binary header để che lỗi. Chọn API assembler là chọn format/opcode, không phải đổi Android/SDK của ROM.


1. Assemble mỗi cây smali đã sửa thành đúng DEX tương ứng, ví dụ cho input DEX 039: `smali a --api 29 work/framework/smali_classes2 -o work/framework/output/classes2.dex` (tạo thư mục output trước).
2. Thay chỉ các `classes*.dex` tương ứng trong bản sao archive đích.
3. Bảo toàn mọi nội dung archive còn lại.
4. Verify archive, kiểm tra entry và DEX vừa thay.
5. Có thể disassemble DEX rebuilt và chạy lại verifier hook; assembler và verifier cấu trúc kiểm tra các phần khác nhau.
6. Tích hợp theo quy trình build/packaging riêng của ROM; không dùng quy trình ký APK người dùng thông thường cho `framework.jar`, `services.jar` hoặc `SettingsProvider.apk`.

## Bảng troubleshooting

| Trạng thái / tình huống | Ý nghĩa / xử lý |
|---|---|
| PATCHED | File được sửa và verifier cấu trúc đã qua. |
| ALREADY_PATCHED | Verifier cuối đầy đủ xác nhận cấu trúc mong muốn; không chỉ tìm thấy tên hook. |
| UNSUPPORTED_LAYOUT | Có target nhưng chưa nhận diện layout an toàn; khôi phục stock và inspect layout. |
| FAILED | Lỗi nội bộ hoặc verifier; xem lỗi và khôi phục file làm việc nếu cần. |
| No target found | Sai thư mục, layout Android/OEM khác, class ở DEX khác hoặc target không liên quan; tìm trên mọi split. |
| High-register query | SettingsProvider.query không encode an toàn được argument không liên tiếp; UNSUPPORTED_LAYOUT, không ép /range. |

CLI có thể hiển thị thông báo tiếng Việt như `ĐÃ ĐƯỢC PATCH TỪ TRƯỚC (Verifier PASS)` hoặc `UNSUPPORTED LAYOUT` thay cho enum nguyên văn. Verifier qua không chứng minh boot/runtime/device.

## Advanced Settings runtime

Saved request là ý định người dùng (`kaorios_advanced_features`). Settings capability là khả năng truy cập hook qua nonce Global/Secure/System, độc lập với master flag. Policy active là snapshot thực tế trong system_server đã sẵn sàng và `enabled=true`. Effective Settings cần cả ba, cùng generation acknowledgement; probe PASS hoặc ghi preference thành công chưa đủ.

### Startup, toggle và retry

Saved OFF không bắt buộc probe/status lúc startup. Saved ON kiểm tra cả ba namespace và đọc status policy qua Binder: hook không khả dụng, service chưa sẵn sàng, snapshot disabled hoặc generation cũ khiến Settings spoof inactive; không xoá ý định ON. Switch thể hiện saved request, card Settings spoof thể hiện runtime hiệu lực và lý do disabled.

Toggle ON probe trước khi ghi; probe không đạt thì không ghi. Total failure giữ OFF; partial write giữ ý định ON nhưng chưa xác nhận propagation. Sau lần ghi thành công, chỉ báo Settings runtime active khi snapshot enabled đã ACK epoch mới. Toggle OFF cập nhật saved request ngay khi valueWritten=true, dù snapshot tạm thời vẫn ON. Runtime chỉ được xác nhận đã tắt khi snapshot system_server sẵn sàng báo enabled=false và ACK generation. Status không khả dụng sau lần ghi ON hoặc OFF không đồng nghĩa propagation thành công; giữ warning và cho phép kiểm tra lại. Không polling; **Kiểm tra lại Settings runtime** đọc lại generation và snapshot, kèm probe Settings khi saved ON, không ghi flag hay ép service refresh. Saved OFF không có ACK pending thì không hiện Retry và không đọc runtime; card inactive hướng dẫn bật Advanced Features trong Cài đặt. Retry có thể khôi phục hiệu lực sau khi status thực tế xác nhận policy đã active.

### Runtime policy acknowledgement

Status read-only của Binder service hiện có chỉ trả readiness, enabled và generation đang giữ trong snapshot, không trả rule hoặc spoof value và không đọc/ghi Settings trong getter. Cho phép root/system hoặc UID riêng của manager package đang ở snapshot (hỗ trợ package ngẫu nhiên); manager share UID với app khác bị từ chối. ROM cần cho phép manager domain tìm service và gọi Binder; không mở quyền đọc policy cho mọi app. Service không có, API cũ, IPC/SELinux bị từ chối hoặc lỗi đều là unavailable; không dùng snapshot cục bộ để giả làm system_server state.

Generation là token `kaorios_time` của snapshot. Client so với epoch đã đọc sau lần ghi: token số bằng hoặc mới hơn mới ACK; nếu epoch write thất bại, cần snapshot generation mới hơn baseline lấy trước lần ghi trước khi bỏ propagation warning, cho cả ON và OFF. Sau ACK, lần kiểm tra tiếp theo so với epoch hiện tại như bình thường. Nếu token không thể đọc/so sánh thì vẫn uncertain. Status query không gây refresh; observer service chịu trách nhiệm tải snapshot.

### Các capability domain khác

Probe Settings không xác nhận package visibility hoặc installer hooks. Hide Features dùng master desired để cấu hình rule, hiển thị package hook **chưa kiểm chứng**; installer giữ cảnh báo cần verified ROM hooks riêng. Không cài package thử, đổi install source hoặc ghi HMA config để probe. Target thường đã cài nhưng stock installer null vẫn có thể trả `com.android.vending` theo rule caller; early null InstallSourceInfo và target không tồn tại giữ stock. Chỉ installing package field được lọc.

Xem [sample evidence và checklist thiết bị](Sample_Compatibility_2.0.6.0.md). Settings và Installer roadmap vẫn PARTIAL / NEEDS_DEVICE_TEST.
