# Kaorios Toolbox — Hướng dẫn patch tay 2.0.6.1 (Android 13–17)

[English](Patch_Guide_2.0.6.1.md) | [Quy trình cho agent](../agent.md) | [Hướng dẫn patcher](Patcher_Guide_2.0.6.1_VI.md)

Tài liệu này dành cho người đã biết đọc smali nhưng chưa từng ghép payload vào ROM. Bạn sẽ sửa **bản sao** `framework.jar` và `services.jar` của đúng build, import payload vào framework, chèn các hook vào method ROM đang dùng, rồi kiểm tra chính JAR đầu ra. Đây là **patch tay**, không phải lệnh cho patcher tự động. Không thay nguyên class/DEX ROM bằng template hoặc payload DEX. Giữ nguyên `SettingsProvider.apk` stock; bước Fake Settings trong tài liệu cũ đã bỏ.

## 1. Chuẩn bị và xác định phạm vi

Bạn cần công cụ xem/sửa DEX đa split, baksmali/smali hoặc công cụ tương đương, cùng các đầu vào sau:

- `framework.jar` và `services.jar` **stock từ cùng một build ROM**; giữ bản gốc không ghi được ở chỗ khác.
- [Payload `classes.dex` 2.0.6.1](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex). APK quản lý dùng bản [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0).
- Phiên bản Android 13–17, công cụ assemble tương thích input DEX, dung lượng workspace và **cách khôi phục đã thử nghiệm** trước bất kỳ thay đổi nào trên thiết bị.

Chỉ sửa bản sao ROM mà bạn được phép sửa. Ghi `sha256sum framework.jar services.jar` của bản stock và liệt kê mọi entry `classes*.dex` trong hai JAR. ROM cập nhật là build khác: lấy JAR stock mới, không tái sử dụng JAR đã patch. Đừng đặt JAR stock làm đường dẫn output.

Trước khi sửa, tìm **mọi DEX** (`classes.dex`, `classes2.dex`…) để lập bảng `class descriptor → JAR → tên DEX → method descriptor`. Tách từng DEX thành cây smali riêng và ghi owner của từng class đích. [Template a13–a17](../Template/Template_V2060/README.md) là ví dụ theo phiên bản Android, **không phải** class để thay vào ROM. Nếu không có method/overload tương ứng hoặc class xuất hiện hai lần, dừng để kiểm tra layout.

**Mốc đạt:** bản stock và hash còn nguyên; mỗi method cần sửa có đúng một owner DEX; đã xác định phạm vi hook. **Mốc dừng:** build không khớp, không tìm được method, owner mơ hồ hoặc chưa có đường khôi phục.

### Từ vựng smali dùng trong guide

| Từ | Nghĩa khi patch |
|---|---|
| Descriptor | Tên class/method kèm kiểu tham số và kiểu trả về, ví dụ `hasSystemFeature(Ljava/lang/String;I)Z`; chọn đúng toàn bộ chữ ký. |
| Overload | Cùng tên method nhưng tham số khác; `newApplication` bên dưới có hai overload cần xét riêng. |
| DEX split / owner | Entry `classes*.dex` chứa class; sửa và đóng gói lại đúng entry đó. |
| `.locals` / `.registers` | Số local / tổng register của method; `pN` chỉ tham số, `vN` chỉ vị trí vật lý. |
| Register vật lý | Sau `.locals L`, `p0` là `vL` ở instance method; static method bắt đầu bằng `p0` là tham số đầu tiên. |
| `/range` | Dạng `invoke-*` nhận một dải register vật lý liên tiếp, hữu ích khi operand vượt giới hạn dạng thường. |
| Stock fallback | Nhãn chuyển về code ROM gốc khi hook không trả kết quả áp dụng. |

### Quy tắc an toàn cho register và điểm chèn

1. Xác nhận method có `.locals` hay `.registers`, số tham số (kể cả `p0` của instance) và vị trí vật lý thực. `invoke-* {…}` dạng thường chỉ mã hóa operand 0–15; `/range {đầu .. cuối}` yêu cầu các đối số nằm liên tiếp. Kiểm tra giới hạn operand của **mọi lệnh**, không riêng `invoke`.
2. Khi phải tăng local, tìm các `vN` cũ đang là alias của parameter và đổi thành `pN` **trước** khi tăng frame. Sau đó soát lại mọi lệnh stock: parameter dịch lên có thể làm cả `invoke` cũ không còn mã hóa được. Nếu không chứng minh được layout sau đổi, dừng thay vì ép snippet chạy.
3. Các block ở đầu method dùng `v0`/`v1` cần ít nhất một/hai local thực và không được làm hỏng giá trị còn sống của code gốc. Với installer, cần năm local liên tiếp **riêng cho từng method**; chúng không được bị code stock ghi đè từ lúc lấy caller đến điểm dùng hook. Không chèn instruction giữa `invoke-*` và `move-result*` của nó.
4. Đặt đoạn đầu method sau `.locals`/`.registers`, `.param`/`.annotation` nếu có, nhưng **trước** label/lệnh gốc đầu tiên; chọn nhãn fallback chưa tồn tại trong method. Giữ nguyên đường trả về, nhánh lỗi và thân method stock. Nếu method có try/catch hoặc nhiều return, xem luồng điều khiển thực thay vì đoán từ template.

## 2. Import payload vào `framework.jar`

1. Mở tất cả DEX của bản sao `framework.jar` bằng công cụ có hỗ trợ multidex. Kiểm kê toàn bộ class của payload `classes.dex` 2.0.6.1.
2. Với descriptor đã có trong framework, **replace đúng class đó trong DEX owner cũ**. Với class mới, add vào split phù hợp hoặc split mới do công cụ multidex hỗ trợ. Không thay cả DEX stock chứa những class ROM khác.
3. Sau import, kiểm tra mỗi descriptor payload có đúng **một** owner trên tất cả split, các class ROM không nằm trong phạm vi thay thế vẫn còn. Không import payload sang `services.jar` hay `SettingsProvider.apk`.

Ví dụ nếu `Landroid/security/kaorios/KaoriosHook;` đã nằm trong `classes6.dex`, hãy thay **class** đó trong `classes6.dex` chứ không chép `classes.dex` của payload đè lên `classes6.dex`. Hook trong services vẫn gọi được class nằm trong framework. Import payload **không** tự động chèn hook vào các method ROM.

**Mốc đạt:** đủ class payload, không descriptor trùng, owner và các class stock còn lại đúng theo bảng đầu vào.

## 3. Chèn hook trong `framework.jar`

Các đoạn dưới đây là **lệnh cần chèn**, không phải method hoàn chỉnh. Dòng stock xuất hiện trong ví dụ chỉ để chỉ vị trí: **không thêm lần thứ hai**. Các số `vN` là ví dụ; thay theo ROM. Với hook có nhãn `:kaorios_*_stock`, để code ROM gốc tiếp tục ngay sau nhãn.

### 3.1. `Instrumentation` — khởi tạo Context

Class `Landroid/app/Instrumentation;`; [template Android 17](../Template/Template_V2060/a17/framework/Instrumentation.smali). Có **hai overload**:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Ở mỗi overload, tìm `Landroid/app/Application;->attach(Landroid/content/Context;)V`. Patch tay: chèn `initContext` **ngay sau `attach`**, dùng đúng register Context vừa truyền vào attach, trước `return-object` trên đường đó. Nếu có nhiều đường `attach`/return, soát từng đường ứng dụng được attach. Ví dụ thứ nhất là static (`p1` = Context); thứ hai là instance (`p3` = Context), nếu ROM vẫn dùng hai register đó:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Dùng `invoke-static/range {pN .. pN}` khi register vật lý của Context >15. **Phân biệt cách làm:** patch tay ở đây đặt hook sau `attach` để Context đã gắn với app; patcher tự động hiện đặt hook trước mỗi `return-object` của hai overload (đường return sau attach trong layout được hỗ trợ). Hai vị trí không phải chỉ dẫn để chèn **cả hai**; xác nhận mỗi đường tạo app có một hook, không chèn lặp.

**Kiểm tra:** mỗi overload cần thiết có đúng một hook trên mỗi đường trả app đã attach; `attach` và hook nhận cùng Context, kết quả `return-object` gốc vẫn còn.

### 3.2. `ActivityThread` — khởi tạo process app

Class `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`; [template Android 17](../Template/Template_V2060/a17/framework/ActivityThread.smali). Tìm phép gán field `mBoundApplication`; operand **đầu** của `iput-object` là object AppBindData cần truyền, không phải operand thứ hai (`this`). Chèn sau phép gán:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Nếu operand thực ở register vật lý >15, dùng `invoke-static/range {reg .. reg}`. **Kiểm tra:** hook trực tiếp sau phép gán đúng field, dùng operand đầu và đúng overload nhận `Ljava/lang/Object;`.

### 3.3. `ApplicationPackageManager` — system feature

Class `Landroid/app/ApplicationPackageManager;`, method `hasSystemFeature(Ljava/lang/String;I)Z`; [template Android 17](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali). Thêm tại đầu phần code thực thi:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

Nếu `p1` hoặc `p2` nằm trên register vật lý 15, đổi **lời gọi đầu** thành `invoke-static/range {p1 .. p2}`; hai parameter phải liên tiếp. `null` từ hook nghĩa là tiếp tục code stock, không phải `false`. `v0` cần một local. **Kiểm tra:** nhánh hook khác null trả Boolean, nhánh null chạy thân gốc.

### 3.4. `AndroidKeyStoreKeyPairGeneratorSpi` — tạo key

Class `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`, method `generateKeyPair()Ljava/security/KeyPair;`; [template Android 17](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali). Chèn đầu method:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

`v0` là local; `/range` dùng được cho một register. **Kiểm tra:** chỉ trả key từ hook khi khác null, còn null tiếp tục tạo key stock.

### 3.5. `AndroidKeyStoreSpi` — certificate chain và certificate đơn

Class `Landroid/security/keystore2/AndroidKeyStoreSpi;`; [template Android 17](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali). Trong `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`, tìm `return-object` của **mảng đã ghép đủ leaf và CA**, sau lệnh thêm leaf (`aput-object`) cuối. Chèn ngay trước return đó; giữ nguyên các nhánh lỗi/null. Ví dụ mảng nằm ở `v3`:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Thay **cả ba** `v3` bằng register mảng thực. Nếu mảng nằm ở register vật lý >15, lời gọi phải là `invoke-static/range {v20 .. v20}` (ví dụ mảng ở `v20`); vẫn `move-result-object v20` rồi `return-object v20`. Nếu ROM có nhiều đường trả mảng hoàn chỉnh, patch từng đường, không hook trong vòng lặp khi mảng chưa hoàn chỉnh.

Trong method `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`, chèn đầu method:

```smali
    invoke-virtual/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    move-result-object v0
    if-eqz v0, :kaorios_certificate_stock
    array-length v1, v0
    if-eqz v1, :kaorios_certificate_stock
    const/4 v1, 0x0
    aget-object v0, v0, v1
    return-object v0
    :kaorios_certificate_stock
```

Cần **hai local** `v0`, `v1`; method certificate đơn lấy phần tử đầu của chain nếu có, còn chain null/rỗng đi theo code stock. **Kiểm tra:** hook chain tiêu thụ kết quả (không bỏ qua `move-result-object`), không đổi nhánh null và mọi `move-result*` liền sau `invoke` của nó.

## 4. Chèn hook trong `services.jar`

Không import payload vào services. Tìm đúng owner DEX của mỗi class services rồi chỉ sửa method bên trong class đó.

### 4.1. `SystemServer` — khởi tạo server

Class `Lcom/android/server/SystemServer;`, method `run()V`; [template Android 17](../Template/Template_V2060/a17/service/SystemServer.smali). Tìm lệnh `Looper.loop()V` chính **cuối giai đoạn khởi động service**; thêm hook ngay trước nó:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

Dòng `Looper.loop()` là dòng stock, không nhân đôi. **Kiểm tra:** đúng một hook tại main loop, không phải một loop khác.

### 4.2. `ComputerEngine` — HMA / package visibility

Class `Lcom/android/server/pm/ComputerEngine;`; [template Android 17](../Template/Template_V2060/a17/service/ComputerEngine.smali). Tìm đường ROM thực sự dùng với method:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

Đầu method, sau metadata, chèn:

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
```

Ở overload này `p1` = PackageState, `p2` = UID caller, `p5` = user. Nếu ROM chuyển kiểm tra qua `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z`, dùng method đó và **`p3` thay `p5`** cho user. Không patch overload nhận `SharedUserSetting` và không tự động patch cả hai khi chưa chứng minh call path.

**Trường hợp register cao:** kiểm tra **từng operand** của cả `invoke-interface {p1}` và `invoke-static {p2, v0, p5}` (hoặc `p3`): nếu **bất kỳ operand nào** ở register vật lý >15, dạng gọi tương ứng ở trên không mã hóa được. `p1` vẫn có thể ≤15 trong khi `p2` hoặc `p5` >15. Chỉ đổi `invoke-interface {p1}` thành `invoke-interface/range {p1 .. p1}` **khi chính `p1` >15**; nếu không, giữ dạng thường. Với lời gọi hook, chuyển UID, package name và user vào **ba local liên tiếp** rồi dùng `invoke-static/range` khi bất kỳ operand nào vượt giới hạn. Ví dụ **chỉ về cách mã hóa**, với overload 7 tham số và ba local mới `v20..v22` đã được cấp phát, không bị stock dùng; thay toàn bộ đoạn trên bằng:

```smali
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v21
    if-eqz v21, :kaorios_visibility_stock
    move/16 v20, p2
    move/16 v22, p5
    invoke-static/range {v20 .. v22}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v20
    if-eqz v20, :kaorios_visibility_stock
    const/16 v20, 0x1
    return v20
    :kaorios_visibility_stock
```

Ví dụ này giả định local cũ kết thúc ở `v19` (tăng `.locals 20` thành `.locals 23`); tính lại trên ROM thật, canonicalize parameter alias và soát **mọi lệnh stock** sau khi tăng frame. `move-result-object v21` đi liền `invoke-interface/range`; không đẩy nó xuống sau `move/16`. **Kiểm tra:** UID/tên package/user đúng thứ tự, tên null hoặc hook trả false thì về stock, hook true mới trả `1`.

### 4.3. `ComputerEngine` — tên installer và `InstallSourceInfo` (bước điều kiện)

Đây là bước **điều kiện khi bạn cần lọc tên installer** và ROM có API tương ứng. Khi mode 1 xử lý `ComputerEngine`, patcher services **tự gọi helper installer** nếu phát hiện các method liên quan và chỉ patch layout được nhận diện; đây không phải lệnh riêng, nhưng cũng **không bảo đảm** mọi ROM/overload được patch. Kiểm tra kết quả và artifact thực tế; chỉ thích nghi bằng tay theo phần dưới nếu layout cần thiết không được hỗ trợ và bạn chứng minh được descriptor, nguồn dữ liệu, luồng điều khiển cùng register đều an toàn. Nếu không, dừng. Hook developer/ADB ở mục 5 vẫn nằm ngoài mode 1. Đừng thêm hook installer chỉ vì thấy tên method gần giống.

Trong `Lcom/android/server/pm/ComputerEngine;`, tìm đúng các descriptor nếu ROM có:

```smali
getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
```

Một số ROM dùng overload chỉ có `Ljava/lang/String;`. Chỉ patch API hiện diện và được caller sử dụng; nếu cần tính tương đương cho cả hai API nhưng một API không có, xác nhận ROM trả dữ liệu theo đường nào trước khi sửa. Xác định `p1` là **package đích**, `p2` là **user** trong overload `(String,int)`; lấy UID caller với `Binder.getCallingUid()` **trước** bất kỳ `clearCallingIdentity()` nào. Không nhầm caller với installer hoặc user với UID.

Mỗi method cần **năm local mới liền nhau** cho `(ContentResolver, callingUid, userId, targetPackage, installerName)`. Tham số đầu tiên là `null`, các giá trị còn lại lấy từ đường gọi stock. Ví dụ đã dành riêng `v10..v14` và đã xử lý mọi parameter alias/operand bị ảnh hưởng, chèn trước lệnh stock đầu tiên:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Giữ `v10..v13` không bị code gốc ghi đè đến mọi điểm gọi hook. Với overload chỉ nhận String, **thay dòng `move/16 v12, p2`** bằng:

```smali
    invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v12
```

Trong `getInstallerPackageName`, tìm đường `return-object` thực sự trả tên installer **sau khi** ROM áp dụng kiểm tra visibility/null. Nếu return gốc là `return-object v2` và `v2` là tên đó, thay riêng return bằng:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Giữ nhánh trả lỗi/throw và null stock; nếu có nhiều đường trả tên hợp lệ, kiểm tra từng đường. Không áp dụng đoạn này vào return không phải installer.

Trong `getInstallSourceInfo`, **không** thêm `return-object` ở chỗ đọc field. Lần theo `mInstallerPackageName` qua các `move-object`, nhánh visibility/null đến operand **installing package** của `Landroid/content/pm/InstallSourceInfo;-><init>(…)V`. Đặt hook sau khi giá trị installer cuối cùng đã được tính nhưng **ngay trước constructor** và dùng kết quả làm operand installing package. Ví dụ từ template Android 17: `v8` là installing package, constructor `invoke-direct/range {v4 .. v10}` dùng `v8`; năm local độc lập của **method này** là `v14..v18`:

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

Ví dụ chỉ đúng khi `v14..v17` đã được khởi tạo theo thứ tự `(null, UID caller, user, package đích)` ở đầu **method này** và còn nguyên. Constructor hoặc vị trí installing package khác thì phải tính lại theo descriptor ROM; giữ các operand initiating/originating/signing/source khác và flow lỗi. **Kiểm tra:** cả hai API (nếu có và cần) trả kết quả qua hook đúng nguồn dữ liệu, không có null/exception path bị biến thành tên installer giả, `move-result*` sát lời gọi.

## 5. Patch tùy chọn

### 5.1. Ẩn trạng thái developer/ADB ở đường đọc Settings

Chỉ làm nếu bạn cần tính năng này; đây là **bước tay tùy chọn**, không phải target mode 1 của patcher. Class `Landroid/provider/Settings$NameValueCache;`, method `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`; [template Android 17](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali). Chèn trước code gốc:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` là key; hook true trả `"0"`, còn null key/hook false đi theo stock. Cần một local `v0`. **Không** sửa `SettingsProvider.apk`: đây là class trong `framework.jar`, không phải APK provider.

### 5.2. Field Build trên Android 17

Chỉ sửa nếu bạn cần field Build có thể thay đổi ở Android 17; đây **không** là bước bắt buộc cho hook mode 1. Trong `Landroid/os/Build;`, xóa `final` và đặt initializer String thành `null`. Ví dụ:

```smali
.field public static final BRAND:Ljava/lang/String; = "example"
```

thành:

```smali
.field public static BRAND:Ljava/lang/String; = null
```

Áp dụng với `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`. Với `TIME:J`, chỉ xóa `final`. Trong `Landroid/os/Build$VERSION;`, chỉ xóa `final` của `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Giữ `SDK_INT` và code `<clinit>` gốc.

### 5.3. Tùy chọn khác

[Disable Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md). Đây là các hướng dẫn riêng, không tự động có khi chèn các hook trên.

## 6. Một ví dụ làm trọn một method: `Instrumentation` static

Giả sử method trong bản sao ROM khớp template Android 17: `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` là **static**, `.registers 3` gồm một local `v0` và hai parameter `p0` (Class), `p1` (Context). Code gốc có:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    return-object v0
```

1. **Xác định:** class nằm trong DEX owner nào của `framework.jar`; chữ ký đúng, `p1` chính là operand Context của attach. Với `.registers 3`, `p1` có index vật lý 2 nên dạng `invoke-static {p1}` mã hóa được. `v0` đang giữ app để return, không ghi đè.
2. **Chèn một dòng** giữa attach và return (không thêm attach lần nữa):

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    return-object v0
```

3. **Soát method:** attach/hook dùng cùng `p1`, app trong `v0` được trả nguyên, không sửa `.registers`; kiểm tra overload instance riêng và bảo đảm không có đường attach/return khác bị bỏ sót. Nếu ROM có register khác, nhiều nhánh hoặc không có attach như ví dụ, dừng và phân tích layout đó thay vì chép `p1`.
4. **Kiểm tra artifact:** assemble đúng DEX owner, thay đúng entry trong bản sao JAR, mở lại JAR đã lưu và disassemble lại để xác nhận một hook với descriptor chuẩn. Đây chỉ là một method; chưa chứng minh các hook khác hoặc ROM boot được.

## 7. Đóng gói, kiểm tra, bàn giao

1. Assemble **từng cây DEX đã sửa** bằng API/toolchain phù hợp với DEX đầu vào. Trong bản sao JAR stock, thay **đúng entry DEX owner** tương ứng; giữ các DEX chưa sửa và các entry khác. Import payload làm thay đổi framework; các hook framework/services thay đổi đúng owner của chúng.
2. Mở lại **JAR đầu ra đã lưu** và trích tất cả DEX ra thư mục kiểm tra mới. So DEX đóng gói với output assemble, hash các split không sửa với stock, kiểm kê entry non-DEX và mọi class stock ngoài phạm vi. Payload class phải đầy đủ và mỗi descriptor có một owner duy nhất.
3. Disassemble DEX **trích từ JAR cuối** vào cây rỗng. Kiểm tra từng descriptor, lời gọi, nhãn fallback, đường return, register vật lý và `move-result*` sát invoke. Chạy verifier phù hợp nếu có trong [guide patcher](Patcher_Guide_2.0.6.1_VI.md#5-kiểm-tra-chính-archive-đã-lưu), ghi rõ verifier bao phủ phần nào; **tự kiểm tra** các hook còn lại, nhất là installer/dev tùy chọn. Assembly/verifier trên host không chứng minh ROM thực tế boot hay chức năng trên máy.
4. Ghi hash stock/output, danh sách DEX đã sửa, owner của class, kết quả assemble/verifier và hook chưa được kiểm chứng. Nếu kiểm tra lỗi, **không dùng artifact**; khôi phục workspace từ stock sạch. Chỉ triển khai lên thiết bị nếu riêng bước đó đã được cho phép và đã có cách rollback.

**Đánh giá sau triển khai (nếu được phép):** kiểm tra boot và từng tính năng trên ROM thật riêng với kiểm tra host. Đối với HMA, chọn app **đọc** danh sách (caller), gán template gồm các app muốn ẩn, force-stop caller rồi thử lại. Nếu không được phép triển khai, dừng ở artifact host, không suy diễn kết quả thiết bị.

**Giới hạn:** để nguyên `SettingsProvider.apk` stock; không patch/ký lại provider. Mọi hướng dẫn ở đây thao tác trên bản sao, không thay thế kiểm chứng thiết bị thực và không chứa quy trình ký/flash ROM.
