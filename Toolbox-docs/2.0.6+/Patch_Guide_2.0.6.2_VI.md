# Kaorios Toolbox 2.0.6.2 — Hướng dẫn patch

[English](Patch_Guide_2.0.6.2.md) | [Tài liệu công cụ](../../script/README.md) | [CorePatch](CorePatch_VI.md) | [Secure Flag](Disable_Secure_Flag_VI.md)

Patch bản sao `framework.jar` / `services.jar` cùng ROM, rebuild rồi kiểm tra **JAR đã đóng gói**. Sáu class caller trong framework là bắt buộc; sáu class không có nghĩa chỉ sáu vị trí gọi. `SystemServer` và `ComputerEngine` thuộc services. Các phần tùy chọn được ghi riêng.

## Mục lục

1. [Chuẩn bị đầu vào và công cụ](#1-chuẩn-bị-đầu-vào-và-công-cụ)
2. [Chọn cách tự động hoặc patch tay](#2-chọn-cách-tự-động-hoặc-patch-tay)
3. [Disassemble và import payload](#3-disassemble-và-import-payload)
4. [Patch caller trong framework](#4-patch-caller-trong-framework)
5. [Patch caller trong services](#5-patch-caller-trong-services)
6. [Rebuild và kiểm tra JAR đã đóng gói](#6-rebuild-và-kiểm-tra-jar-đã-đóng-gói)
7. [Xử lý lỗi và mức kiểm chứng](#7-xử-lý-lỗi-và-mức-kiểm-chứng)

## 1. Chuẩn bị đầu vào và công cụ

- Dùng hai JAR stock của **cùng bản ROM** và `classes.dex` payload framework Toolbox đúng phiên bản. ZIP module / HMA DEX của KaoriosHelper không thay thế payload framework này.
- Giữ JAR gốc và checksum ngoài thư mục chỉnh sửa. Rollback bằng cách khôi phục đúng JAR gốc qua quy trình recovery của ROM; luôn giữ một bản nguyên vẹn.
- Đầu vào là JAR chứa DEX chuẩn, không phải bản trích xuất chỉ có OAT/VDEX. Giữ mọi split `classes*.dex` và thành phần ZIP không liên quan.
- Cần Java, Python 3.9+, Bash, `zip`, `unzip` và bộ smali/baksmali đồng bộ. Test assemble của repo dùng smali **3.0.8** cùng dependency, trong đó **jcommander 1.64**, không phải 1.82. JAR mỏng tải từ Maven chưa chắc chạy được bằng `java -jar`.

Chạy từ thư mục gốc repo public. Bố cục đầu vào ví dụ:

```text
inputs/framework.jar
inputs/services.jar
inputs/payload.dex        # bản sao đổi tên từ classes.dex payload framework
/path/to/smali-3.0.8/     # smali, baksmali, dexlib2, util và các JAR dependency
```

```bash
set -euo pipefail
TOOL_CP='/path/to/smali-3.0.8/*'
SMALI_API=34
java -version
python3 --version
java -cp "$TOOL_CP" com.android.tools.smali.smali.Main help assemble
java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main help disassemble
sha256sum inputs/framework.jar inputs/services.jar inputs/payload.dex
unzip -Z1 inputs/framework.jar
unzip -Z1 inputs/services.jar
WORK=$(mktemp -d "$PWD/patch-work.XXXXXX")
```

**Kiểm tra:** hai lệnh help exit 0; hai JAR đều có `classes*.dex`. Ghi checksum đầu vào và phiên bản công cụ. Phân biệt số API Android với mức opcode assembler hỗ trợ: `--api` của script artifact là nhãn ROM đích, `--smali-api` mới truyền xuống smali/baksmali. Ví dụ dưới dùng **34 cho đầu vào tương thích DEX 040**; đây không phải quy tắc chuyển đổi chung cho DEX/opcode mới hơn.

## 2. Chọn cách tự động hoặc patch tay

### Patch artifact tự động

Dùng khi patcher hiện tại nhận diện được layout ROM. Pipeline import payload framework, patch đủ owner bắt buộc, rebuild split thay đổi, trích xuất lại candidate và verify trước khi xuất JAR riêng. Pipeline này không sửa Build tùy chọn.

```bash
bash script/patch-framework-a17-artifact.sh \
  --input inputs/framework.jar --output "$WORK/framework-patched.jar" \
  --kaorios-dex inputs/payload.dex \
  --baksmali /path/to/smali-3.0.8/smali-baksmali.jar \
  --smali /path/to/smali-3.0.8/smali.jar \
  --api 37 --smali-api "$SMALI_API"
bash script/patch-services-a17-artifact.sh \
  --input inputs/services.jar --output "$WORK/services-patched.jar" \
  --baksmali /path/to/smali-3.0.8/smali-baksmali.jar \
  --smali /path/to/smali-3.0.8/smali.jar \
  --api 37 --smali-api "$SMALI_API"
```

Với nhánh fallback JAR mỏng của script, đặt `smali-dexlib2.jar`, `smali-util.jar`, `antlr-runtime.jar`, `jcommander.jar` (1.64) và `guava.jar` cạnh `smali.jar` / `smali-baksmali.jar`. Phải đúng tên file này; fallback không tự tìm tên có hậu tố phiên bản Maven. `--update` dành cho hook cũ nhận diện được, không tự đoán layout lạ. Khi lỗi, candidate chưa được publish; kiểm tra nguyên nhân thay vì bỏ hook bắt buộc hoặc tắt verifier. Chuyển đến [kiểm tra đầu ra](#6-rebuild-và-kiểm-tra-jar-đã-đóng-gói), không chèn hook tay thêm lần nữa.

### Patch smali bằng tay

Làm theo mục 3–6. Mỗi snippet là **đoạn chèn**, không phải toàn bộ method. Giữ body và luồng điều khiển stock thực tế. Đọc đủ descriptor và cờ `static` trước khi xác định tham số.

**Quy tắc register dùng xuyên suốt:**

- Method instance có `p0 = this`; method static không có receiver ngầm. `long`/`double` chiếm hai word register.
- Với `L` local, `P` word tham số: `.registers = L + P`, `pN` cũ alias register vật lý `v(L+N)`. Tăng local sẽ dời vị trí tham số đầu vào. Trước khi tăng local thông thường, đổi alias số cũ thành `pN` tương ứng; sau đó kiểm tra lại độ rộng mã hóa của mọi lệnh bị ảnh hưởng.
- Tên `p` không đảm bảo register thấp. Mỗi toán hạng `invoke-* {…}` thường phải nằm ở register vật lý 0–15. `/range` cần các word đối số **liên tiếp, đúng thứ tự**. Dùng `move*/16` hoặc `move*/from16` khi copy register cao. `move-result*`, `return*`, `if-eqz` vẫn giới hạn register 8-bit; `array-length` dùng toán hạng 4-bit.
- Scratch phải là local stock chưa đọc trước khi khởi tạo lại; giá trị giữ xuyên body phải nằm ở local stock không ghi đè. Giữ annotation/debug metadata và label duy nhất. Chèn hook đầu method sau metadata, trước lệnh thực thi hoặc đích nhảy stock đầu tiên.
- `move-result*` phải ngay sau `invoke-*` tạo kết quả. Không chen lệnh thực thi vào giữa. Label fallback null/false phải đi vào logic stock nguyên vẹn.

## 3. Disassemble và import payload

Disassemble **mọi split**, không chỉ `classes.dex`. Tách DEX gốc, smali chỉnh sửa và DEX rebuild:

```bash
mkdir -p "$WORK/framework/dex" "$WORK/services/dex"
unzip -q inputs/framework.jar 'classes*.dex' -d "$WORK/framework/dex"
unzip -q inputs/services.jar 'classes*.dex' -d "$WORK/services/dex"
for jar in framework services; do
  for dex in "$WORK/$jar/dex"/classes*.dex; do
    name=$(basename "$dex" .dex)
    java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
      --api "$SMALI_API" --use-locals "$dex" -o "$WORK/$jar/smali/$name"
  done
done
java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
  --api "$SMALI_API" --use-locals inputs/payload.dex -o "$WORK/payload-smali"
```

Tìm owner bằng descriptor `.class`. File trùng basename ở package khác không phải cùng owner. Mỗi class bắt buộc chỉ xuất hiện một lần trên toàn bộ cây split.

Import **toàn bộ class** của payload, kể cả class lồng/dependency, giữ một owner cho mỗi descriptor. Chỉ thay descriptor trùng class đầu vào; giữ class OEM không liên quan kể cả trong `android/security/`. Không xóa cả namespace hoặc thay nguyên DEX trộn OEM/payload. Nếu thêm `classesN.dex`, dùng tên split kế tiếp liên tục. Chú ý giới hạn reference DEX; nếu chia lại, kiểm tra đầy đủ inventory class.

[README APKEditor](https://github.com/REAndroid/APKEditor/blob/master/README.md) là tài liệu tham khảo tốt về cách trình bày theo thao tác. Help `d`/`b` mô tả luồng decode/build của chính công cụ; `-dex` **copy DEX thô và bỏ qua smali**, không tạo mã hook để chỉnh sửa. Lệnh ở đây dùng smali/baksmali trực tiếp, không giả định đã kiểm thử chuyển JAR framework bằng APKEditor.

**Kiểm tra:** sáu class framework bên dưới và hai class services có owner duy nhất; facade payload có đúng descriptor `public static` được gọi. Không patch `SettingsProvider.apk` hoặc entrypoint `KeyStore2` cũ. Nếu SettingsProvider còn hook lịch sử `filterSettings*`, khôi phục stock; payload này không có contract đó.

## 4. Patch caller trong framework

### 4.1 Instrumentation — hai overload newApplication

Owner: `Landroid/app/Instrumentation;`. Chèn ngay trước **mọi** `return-object` thành công, sau khi stock đã hoàn tất `Application.attach(Context)`. Không thêm một lời gọi attach nữa.

| Header method chính xác | Tham số Context |
|---|---|
| `static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` | `p1` |
| `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` không static | `p2` |
| `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;` không static | `p3` |

Với overload Class, chỉ dùng dòng khớp header thật:

<!-- snippet: instrumentation-class-static -->
```smali
    invoke-static/range {p1 .. p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

<!-- snippet: instrumentation-class-instance -->
```smali
    invoke-static/range {p2 .. p2}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Với overload ClassLoader:

<!-- snippet: instrumentation-loader -->
```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Kiểm tra:** số return từng overload bằng số hook tương ứng; đối số là Context, không phải receiver/Class/String. Không đặt label stock giữa hook và return khiến nhánh khác bỏ qua init.

### 4.2 ActivityThread.handleBindApplication

Owner: `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`. Ngay sau phép gán `mBoundApplication` thật, truyền **toán hạng nguồn đầu tiên** của `iput-object` (`v9` ở đây), không phải receiver (`v1`). Phép gán bên dưới là anchor có sẵn trong stock, không phải thêm một phép gán mới.

<!-- snippet: activity-thread -->
```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

**Kiểm tra:** một cặp assignment/hook. Nếu nguồn ở register vật lý >15, dùng `invoke-static/range {source .. source}` với tên register thực tế, bảo đảm không có nhánh đi vào bỏ qua hook.

### 4.3 Settings$NameValueCache.getStringForUser

Owner: `Landroid/provider/Settings$NameValueCache;`, method không static `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`. Chèn đầu method, dùng local có sẵn `v0` (`.locals >= 1` hoặc `.registers >= 5`). Null đi vào stock; kết quả khác null được trả nguyên vẹn.

<!-- snippet: name-value-cache -->
```smali
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0
    :kaorios_dev_stock
```

**Kiểm tra:** callee trả `String`, không phải boolean `Z`. Không thêm `const-string "0"` vô điều kiện. Sau fallback, stock phải khởi tạo lại mọi local cần dùng.

Nếu bản patch cũ gọi hook này với kiểu trả boolean `Z`, patcher/verifier báo `NameValueCache: legacy boolean hook ABI`. Ngay cả `--update` cũng giữ nguyên đầu vào, không đoán cách gỡ nhánh cũ. Tạo work tree mới từ `framework.jar` stock đúng ROM, import payload framework hiện tại và patch lại mọi caller bắt buộc trước mục 6. Không chỉ đổi descriptor trả về hoặc lệnh `move-result` trong block legacy.

### 4.4 ApplicationPackageManager.hasSystemFeature

Owner: `Landroid/app/ApplicationPackageManager;`, method không static `hasSystemFeature(Ljava/lang/String;I)Z`. Ví dụ `.locals 2` cũ → `.locals 3`, scratch mới `v2`. Trước khi tăng, đổi alias tham số số cũ `v2/v3/v4` thành `p0/p1/p2`, rồi kiểm tra độ rộng lệnh. Chèn đầu method:

<!-- snippet: system-feature -->
```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v2
    if-eqz v2, :kaorios_feature_stock
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    return v2
    :kaorios_feature_stock
```

**Kiểm tra:** chỉ unbox `Boolean` sau null check. Với `.registers R` cũ, method có ba word tham số: local mới là `v(R-3)`, không phải `vR`. Không dán nguyên `v2` vào layout khác.

### 4.5 AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair

Owner: `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`, method không static `generateKeyPair()Ljava/security/KeyPair;`. Ví dụ `.locals 2` cũ → `.locals 3`, local mới `v2`; alias số `v2` cũ mang nghĩa `p0` phải đổi thành `p0` trước. Chèn đầu method:

<!-- snippet: key-pair -->
```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v2
    if-eqz v2, :kaorios_generate_stock
    return-object v2
    :kaorios_generate_stock
```

**Kiểm tra:** null chạy tiếp method gốc. Với `.registers R` cũ, local mới là `v(R-1)`. Giữ body stock thực tế; snippet không thay thế cả method.

### 4.6 AndroidKeyStoreSpi.engineGetCertificateChain

Owner: `Landroid/security/keystore2/AndroidKeyStoreSpi;`, method `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`. Sau **lần chèn leaf cuối cùng**, ngay trước mỗi return mảng đã điền, lọc chính mảng đó và trả kết quả hook. Giữ nguyên nhánh stock trả null. Ví dụ `.locals 4`, mảng `v3`, nên `p0=v4`, `p1=v5`; ba đối số invoke đều nằm trong 0–15.

<!-- snippet: certificate-chain -->
```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

**Kiểm tra:** register mảng ở `aput-object` cuối, đầu vào hook, `move-result-object` và `return-object` phải khớp. Lần chèn trước đó trong vòng lặp không phải return boundary. Payload thiếu overload ba tham số là lệch ABI: dùng payload đúng, không bỏ hook rồi coi là patch đầy đủ. Template non-range và verifier hiện tại chưa hỗ trợ mọi layout chain có register cao.

### 4.7 AndroidKeyStoreSpi.engineGetCertificate

Cùng owner, method `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`. Nếu chưa có đường delegation chain được hỗ trợ, chèn đầu method bằng local có sẵn `v0/v1` (`.locals >= 2`). Chain null/rỗng tiếp tục stock.

<!-- snippet: certificate-leaf -->
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

**Kiểm tra:** không nhân đôi block delegation. Verifier hiện nhận cấu trúc `v0/v1` trên; chỉ có một lời gọi chain bất kỳ chưa chứng minh fallback và coverage đúng.

### 4.8 Build tùy chọn — chỉ Android 17

Không thuộc sáu class caller bắt buộc:

- Trong `Landroid/os/Build;`, bỏ `final`, đặt initializer hằng String thành `null` cho `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
- Bỏ `final` khỏi `TIME:J`, không chuyển thành String.
- Trong `Landroid/os/Build$VERSION;`, bỏ `final` khỏi `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
- Giữ nguyên `SDK_INT` và body hai `<clinit>`.

## 5. Patch caller trong services

### 5.1 SystemServer.run

Owner: `Lcom/android/server/SystemServer;`, method `run()V`. Ngay trước `Looper.loop()` chính cuối method:

<!-- snippet: system-server -->
```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

**Kiểm tra:** giữ một lệnh loop stock. Lời gọi trong `startOtherServices` hoặc loop khác không thay thế hook lifecycle này.

### 5.2 ComputerEngine.shouldFilterApplication

Owner: `Lcom/android/server/pm/ComputerEngine;`. Patcher hiện chọn overload bảy tham số nếu có, nếu không mới chọn overload ba tham số. Giữ delegation giữa các overload; không thêm hook lặp trên cùng đường chạy.

| Descriptor chính xác | Caller UID | User ID | Word tham số kể cả receiver |
|---|---|---|---|
| `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` | `p2` | `p5` | 8 |
| `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` | `p2` | `p3` | 4 |

Ví dụ register thấp: local `v0` có sẵn dùng được ở entry, mọi đối số invoke thường nằm trong 0–15. Với bảy tham số:

<!-- snippet: visibility-seven -->
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

Nếu là overload ba tham số, dùng đoạn này:

<!-- snippet: visibility-three -->
```smali
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_visibility_stock
    invoke-static {p2, v0, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_visibility_stock
    const/4 v0, 0x1
    return v0
    :kaorios_visibility_stock
```

#### Ví dụ register cao có tính toán cụ thể

Chỉ với method bảy tham số có **`.locals 9` cũ**: đổi thành `.locals 20`; đổi mọi toán hạng tham số stock `p0..p7` thành slot vật lý **cũ** `v9..v16`, giữ nguyên alias số `v9..v16` đã có. Giữ khai báo `.param pN` trỏ vào tham số đầu vào. Các lệnh copy ở entry khôi phục frame vật lý cũ cho stock; `v17..v19` là scratch mới. Chỉ tăng local, dán block copy nhưng giữ nguyên toán hạng stock `pN` không phải phép biến đổi này.

<!-- snippet: visibility-high-seven -->
```smali
    move-object/16 v9, p0
    move-object/16 v10, p1
    move/16 v11, p2
    move-object/16 v12, p3
    move/16 v13, p4
    move/16 v14, p5
    move/16 v15, p6
    move/16 v16, p7
    if-eqz v10, :kaorios_visibility_stock
    invoke-interface/range {v10 .. v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v18
    if-eqz v18, :kaorios_visibility_stock
    move/16 v17, v11
    move/16 v19, v14
    invoke-static/range {v17 .. v19}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v17
    if-eqz v17, :kaorios_visibility_stock
    const/16 v17, 0x1
    return v17
    :kaorios_visibility_stock
```

**Kiểm tra:** hook chạy trước stock, trừ hai fallback null chủ động. Tính lại frame cho allocation khác; số register trong ví dụ không dùng chung cho mọi method.

### 5.3 filterAppAccess có sẵn — tùy chọn

Chỉ áp dụng cho overload String không static có sẵn, không thay mục 5.2. Đọc đúng header trước:

| Chữ ký có sẵn | Tham số |
|---|---|
| `filterAppAccess(Ljava/lang/String;II)Z` | `p1` tên package, `p2` UID caller, `p3` user ID |
| `filterAppAccess(Ljava/lang/String;IIZ)Z` | Ba tham số đầu như trên; `p4` là boolean stock `filterUninstalled` |

Cùng đoạn entry dưới dùng được cho hai dạng đã liệt kê khi ý nghĩa tham số khớp. Không thêm/đổi descriptor method. Giữ nguyên `p4` và toàn bộ fallback stock, kể cả chỗ truyền tiếp boolean. Không dán đoạn nhận String này vào overload `(II)Z` hoặc `AndroidPackage`. Ví dụ register thấp cần local có sẵn `v0`, register vật lý `p1/p2/p3 <= 15`; giữ nguyên allocation:

<!-- snippet: filter-app-access -->
```smali
    if-eqz p1, :kaorios_filter_stock
    invoke-static {p2, p1, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_filter_stock
    const/4 v0, 0x1
    return v0
    :kaorios_filter_stock
```

Verifier services thông thường kiểm tra đường `shouldFilterApplication` đã chọn, không xác nhận toàn bộ semantics `filterAppAccess` tùy chọn trên mọi ROM OEM.

### 5.4 Đọc installer-source — chỉ cặp API được hỗ trợ

Patcher/verifier hiện yêu cầu **đúng một method của mỗi API** trong `ComputerEngine`: `getInstallerPackageName` và `getInstallSourceInfo`. Mỗi method có thể nhận `(Ljava/lang/String;)` hoặc `(Ljava/lang/String;I)`. Nếu không có cả hai thì bỏ phần này. Nếu chỉ có một API hoặc nhiều overload cùng tồn tại, luồng tự động báo layout chưa hỗ trợ; không âm thầm bỏ chúng rồi kết luận patch đã verify đầy đủ.

Lấy Binder caller UID **trước khi** stock clear identity. Giữ target package và user xuyên suốt body. Lọc String installer đã phân giải ở return, hoặc đối số **installingPackageName** ngay trước constructor `InstallSourceInfo`; không coi object `InstallSourceInfo` trả về là String.

**Ví dụ allocation hai tham số:** `.locals 8` cũ → `.locals 16`. Đổi mọi toán hạng stock `p0/p1/p2` thành `v8/v9/v10`; giữ alias số cũ. Dành riêng `v11..v15`, stock không ghi đè. Chèn đầu method:

<!-- snippet: installer-entry-two -->
```smali
    move-object/16 v8, p0
    move-object/16 v9, p1
    move/16 v10, p2
    const/16 v11, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v12
    move-object/16 v14, v9
    move/16 v13, v10
```

**Ví dụ allocation chỉ nhận String:** `.locals 9` cũ → `.locals 16`. Đổi toán hạng stock `p0/p1` thành `v9/v10`; vẫn dành riêng `v11..v15`. Suy ra user ID từ UID caller gốc, không dùng `p2` vốn không tồn tại:

<!-- snippet: installer-entry-one -->
```smali
    move-object/16 v9, p0
    move-object/16 v10, p1
    const/16 v11, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v12
    move-object/16 v14, v10
    invoke-static/range {v12 .. v12}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v13
```

Với `getInstallerPackageName`, tại mỗi return installer thật đã chứng minh provenance (`v2` trong ví dụ):

<!-- snippet: installer-return -->
```smali
    move-object/16 v15, v2
    invoke-static/range {v11 .. v15}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Với `getInstallSourceInfo`, ngay trước constructor stock, khi đối số installingPackageName thật của nó là `v4`:

<!-- snippet: installer-constructor -->
```smali
    move-object/16 v15, v4
    invoke-static/range {v11 .. v15}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
```

**Kiểm tra:** giữ `new-instance`, constructor và mọi đối số không phải installer. Đoạn này chỉ sửa `installingPackageName`, không tự sửa `initiatingPackageName`. Phải truy được nguồn field/source stock; template chưa bao phủ layout exception/switch hoặc constructor khác chưa nhận diện.

## 6. Rebuild và kiểm tra JAR đã đóng gói

Với patch tay, assemble từng split đổi/thêm vào thư mục riêng. Copy nguyên byte DEX không đổi thay vì rebuild không cần thiết. Vòng lặp đơn giản dưới rebuild mọi tree, chỉ dùng khi chủ động kiểm tra tất cả split; nó không cam kết byte-identical cho split không sửa.

```bash
for jar in framework services; do
  mkdir -p "$WORK/$jar/rebuilt"
  for tree in "$WORK/$jar/smali"/classes*; do
    name=$(basename "$tree")
    java -cp "$TOOL_CP" com.android.tools.smali.smali.Main assemble \
      --api "$SMALI_API" "$tree" -o "$WORK/$jar/rebuilt/$name.dex"
  done
  cp "inputs/$jar.jar" "$WORK/$jar-patched.jar"
  (cd "$WORK/$jar/rebuilt" && zip -q -0 "$WORK/$jar-patched.jar" classes*.dex)
done
```

Nếu xóa/chia lại split, xóa cả entry ZIP cũ tương ứng trong **bản candidate**; thêm DEX mới không tự xóa entry cũ. Kiểm tra không trùng member/descriptor, không mất class OEM, inventory class đúng và hash split không sửa. Pipeline artifact tự động có bước plan/hash cho chiến lược import được hỗ trợ.

Với **cả hai cách**, trích xuất JAR candidate cuối vào tree mới rồi disassemble lại. Không verify cuối trên tree đầu vào đang chỉnh sửa:

```bash
mkdir -p "$WORK/recheck/framework-dex" "$WORK/recheck/services-dex"
unzip -t "$WORK/framework-patched.jar"
unzip -t "$WORK/services-patched.jar"
unzip -q "$WORK/framework-patched.jar" 'classes*.dex' -d "$WORK/recheck/framework-dex"
unzip -q "$WORK/services-patched.jar" 'classes*.dex' -d "$WORK/recheck/services-dex"
for jar in framework services; do
  for dex in "$WORK/recheck/$jar-dex"/classes*.dex; do
    name=$(basename "$dex" .dex)
    java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
      --api "$SMALI_API" --use-locals "$dex" -o "$WORK/recheck/smali_$jar/$name"
  done
done
python3 -I script/verify-framework-a17-hooks.py "$WORK/recheck/smali_framework"
python3 -I script/verify-services-a17-hooks.py "$WORK/recheck/smali_services"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/recheck/smali_services"
python3 -I script/verify-payload-abi.py "$WORK/recheck/smali_framework" --payload-smali "$WORK/recheck/smali_framework"
python3 -I script/verify-payload-abi.py "$WORK/recheck/smali_services" --payload-smali "$WORK/recheck/smali_framework"
sha256sum "$WORK/framework-patched.jar" "$WORK/services-patched.jar"
```

Dùng cùng smali API hỗ trợ đã chọn ở bước chuẩn bị; thay đồng bộ ví dụ `34` nếu cần. **Kiểm tra:** mọi lệnh exit 0; verify framework bao gồm facade và class AdvancedPolicy, cả hai tree caller được đối chiếu ABI với **payload trong framework đã đóng gói**. Caller-only chỉ là chẩn đoán trung gian, không phải nghiệm thu cuối. Services dùng facade từ framework; không import một bản payload thứ hai vào services.

## 7. Xử lý lỗi và mức kiểm chứng

| Dấu hiệu | Kiểm tra / xử lý |
|---|---|
| `Invalid register` / register must be between 0 and 15 | Tính `pN` vật lý sau allocation; dùng layout range/copy được hỗ trợ, giữ alias stock. Không chỉ tăng local liên tục. |
| Assemble được nhưng verifier báo sai Context | Đọc header `static` thật của Instrumentation: overload Class static dùng `p1`, instance dùng `p2`; ClassLoader instance dùng `p3`. |
| Thiếu overload `CertificateChainIfNeeded` | Lệch ABI payload/caller. Giữ contract ba tham số bắt buộc; dùng payload framework khớp. |
| `NameValueCache: legacy boolean hook ABI` | `--update` giữ nguyên đầu vào. Tạo work tree mới từ `framework.jar` stock đúng ROM, import payload hiện tại rồi patch lại mọi caller bắt buộc; xem mục 4.3. |
| Trùng target / descriptor class | Kiểm tra mọi owner DEX và basename không liên quan. Không xóa file ngẫu nhiên chỉ để discovery tìm thấy một file. |
| Installer `UNSUPPORTED_LAYOUT` | Kiểm tra đúng cặp API, caller UID gốc, nguồn installer stock và chữ ký constructor. Không có một block một-register áp dụng cho mọi ROM. |
| Help lỗi `NoSuchMethodError: ...getMainParameter()` | smali 3.0.8 đang nạp jcommander lệch phiên bản; dùng dependency 1.64 đã pin rồi chạy lại hai lệnh help. |
| API/opcode / phiên bản DEX chưa hỗ trợ | Khớp format đầu vào và opcode công cụ thực sự hỗ trợ. Nhãn `--api 37` không bổ sung opcode mới; không đổi nhãn format mới một cách máy móc. |
| Hết bộ nhớ | Đặt Java heap chủ động như `java -Xmx8g -cp ...` theo RAM host, hoặc xử lý từng split. Việc này không sửa bytecode sai. |
| Lỗi boot/runtime dù host PASS | Khôi phục JAR stock khớp ROM, lấy lỗi verifier/class-resolution đã che dữ liệu riêng, đối chiếu phiên bản ROM/payload/tool. Không đưa key/config riêng hoặc attestation thô vào báo cáo. |

Regression tài liệu trích trực tiếp các đoạn smali được đánh dấu từ **cả hai** guide, tạo fixture caller đại diện, assemble/disassemble bằng smali thật và chạy verifier cấu trúc hiện có. Test kiểm tra tham số static/instance, hai overload visibility, hai chữ ký String của `filterAppAccess` tùy chọn với boolean stock được giữ nguyên, một frame register cao và hai dạng API installer. Test còn chạy nguyên lệnh rebuild/trích xuất lại/verification trên JAR fixture, kiểm tra ABI facade đã đóng gói, đầu ra multi-DEX và entry ZIP không liên quan. Fixture chưa thử import ROM thật hoặc chạy framework Android.

Cú pháp host, cấu trúc hook và ABI facade là các mức bằng chứng riêng. Chúng không chứng minh ART type verification trên ROM cụ thể, boot thành công, hiệu ứng phần cứng hoặc verdict integrity bên ngoài. Kết quả thiết bị vẫn chưa kiểm chứng cho tới khi thực sự ghi nhận. CorePatch và Secure Flag giữ guide riêng; thay đổi này không thêm backend runtime mới.
