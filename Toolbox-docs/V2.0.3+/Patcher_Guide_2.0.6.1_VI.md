# Kaorios Toolbox 2.0.6.1 — Patcher smali tự động (Android 13–17)

[English](Patcher_Guide_2.0.6.1.md) | [Các hook patch tay](Patch_Guide_2.0.6.1_VI.md) | [Trạng thái và giới hạn Secure Flag](Disable_Secure_Flag_VI.md) | [Trạng thái patch Google Flags](Google_Flags_VI.md)

**Cảnh báo bootloop:** recipe Kaorios cũ (guide 2.0.6.0 và asset 2.0.6.1 ban đầu) patch `SettingsProvider.apk` để gọi các method `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) mà `classes.dex` 2.0.6.1 hiện tại không còn định nghĩa. System process sẽ ném `NoSuchMethodError`, nhiều khả năng gây bootloop. Nếu `SettingsProvider.apk` của ROM này từng được patch bằng recipe Kaorios cũ, khôi phục `SettingsProvider.apk` stock của cùng build ROM **trước khi** import `classes.dex` 2.0.6.1 hiện tại. Không dùng lại file provider đã patch trước đây.

**Patcher làm gì:** patch **file smali** được hỗ trợ, không tự sửa JAR nguyên chiếc. Nó **không** import payload hoặc thêm mọi hook tùy chọn. Archive patcher có thể tải về tại [kaorios-patcher-2.0.6.1.zip](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/kaorios-patcher-2.0.6.1.zip) (SHA-256: `3e0e761a9121ef83b6339791f8ad60bb4895e6ecb8a2eafcb578333d33e99758`). Chỉ sửa **bản sao** `framework.jar` và `services.jar` stock của cùng build ROM được phép sửa; giữ stock sạch, SHA-256 và cách khôi phục. Giữ nguyên `SettingsProvider.apk`. Chạy từ gốc repo `public/`; đường dẫn output phải khác stock.

**Ranh giới payload:** Patcher này chỉ bao phủ các hook ROM được liệt kê; nó không chèn caller query-result Phenotype, kể cả với DEX pre-release 2.0.6.1 hiện tại. [Guide Google Flags](Google_Flags_VI.md) nêu bằng chứng còn thiếu và điểm dừng. Kiểm tra checksum asset release hiện tại trước khi import; patcher PASS không chứng minh hỗ trợ Google Flags.

## 1. Tìm class và DEX owner

Liệt kê mọi entry `classes*.dex` của cả hai JAR, disassemble **từng DEX riêng** bằng toolchain/API phù hợp DEX đầu vào. Ví dụ workspace *mới, rỗng* với classpath đã thử (smali JAR dạng thin cần dependency tương ứng; `java -jar` có thể không chạy):

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=37  # chỉ ví dụ; chọn theo DEX/toolchain thật
BAKSMALI_CP=/path/to/working-baksmali-classpath
SMALI_CP=/path/to/working-smali-classpath
sha256sum "$STOCK/framework.jar" "$STOCK/services.jar"
for jar in framework services; do
    unzip -Z1 "$STOCK/$jar.jar"  # kiểm kê cả entry không phải DEX
    mkdir -p "$WORK/$jar/input"
    unzip -q "$STOCK/$jar.jar" 'classes*.dex' -d "$WORK/$jar/input"
    for dex in "$WORK/$jar/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/smali_$name"
    done
done
```

Ghi `descriptor class → JAR → classes*.dex → method chính xác`. Tìm ở *mọi* cây smali, ví dụ `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`. Nếu thiếu/trùng class hoặc overload khác, dừng. [Template A13–A17](../Template/Template_V2060/README.md) chỉ để so logic, **không thay class stock**.

## 2. Chọn target và mode

| JAR | File mode 1 tìm đúng tên | Chức năng |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `ApplicationPackageManager.smali`, `AndroidKeyStoreKeyPairGeneratorSpi.smali`, `AndroidKeyStoreSpi.smali` | Khởi tạo app, Context, truy vấn system feature / hook **Unlock GMS Feature**, Keystore. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | HMA visibility, khởi tạo server; API đọc installer **nếu có cặp được hỗ trợ**. |

`ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` là hook truy vấn system feature liên quan Unlock GMS Feature; patch hook **không** chứng minh toàn bộ GMS hoạt động. `ComputerEngine` installer yêu cầu đúng một method có chữ ký/layout hỗ trợ cho từng API `getInstallerPackageName` và `getInstallSourceInfo`. Cặp thiếu một phía bị từ chối; overload khác có thể còn nguyên. Nếu cả hai vắng mặt, installer hook **được bỏ qua**, không phải đã có. Đối chiếu caller ROM thật trước khi kết luận.

- Android 13–16: **mode 1** cho hook hỗ trợ.
- Android 17: **mode 1** cho hook hỗ trợ; **mode 2** tùy chọn sửa field `Build.smali` và `Build$VERSION.smali`; **mode 3** kết hợp 1+2 trong cùng cây input, không qua các DEX/JAR khác nhau. Mode 2/3 không dành cho Android 13–16.
- **Không tự động:** import payload; hook `Settings$NameValueCache` tùy chọn ẩn developer/ADB, [Secure Flag](Disable_Secure_Flag_VI.md) (chưa có recipe `captureDisplay` chung), [CorePatch](CorePatch_VI.md), hoặc mọi overload OEM. Xem [guide patch tay](Patch_Guide_2.0.6.1_VI.md) cho trình tự JAR → class → method → snippet và kiểm tra register.
- **Kaorios Helper** là [module Zygisk cài riêng](../../Kaorios-Helper/README.md), không phải hook ROM hay các script dựng JAR này. Nó để framework/services stock. **Không bật HMA Helper cùng hook HMA patch trong ROM.**

## 3. Patch đúng cây owner

Ví dụ target framework nằm trong `classes2.dex`, services trong `classes.dex`; chạy từ `public/`:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay
```

Thay Android version và cây **owner thật**; lặp cho mọi split có target. Có thể truyền đúng một file smali. Thành công ở một cây không chứng minh đã tìm được target cây khác. `script/kaorios_patcher_a17.py` chỉ là launcher tương thích cũ.

Riêng field Build Android 17 tùy chọn: tìm **cả hai** file rồi chạy mode 2 trên owner của từng file, dù khác DEX:

```bash
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

Tùy chọn `--update` (hoặc `-u`) cho phép cập nhật và ghi đè lại file mục tiêu ngay cả khi file đã được patch từ trước và vượt qua verifier (`ALREADY_PATCHED`), thay vì tự động bỏ qua lưu file.

Tên cây chỉ là ví dụ. Mode 3 có thể thay mode 1+2 trên **một** cây khi cây đó chứa cả hai file Build cần sửa và target mode 1; vẫn phải làm cây khác và services riêng.

**Đọc status từng file:** `PATCHED` = đã ghi sau verify trong file; `ALREADY_PATCHED` = đã có và qua verifier (dùng `--update` để ghi đè cập nhật); `UNSUPPORTED_LAYOUT`/`FAILED` = dừng xem file lỗi; không thấy target **không phải PASS**. Trong một lượt patch thư mục, file trước có thể đã ghi dù file sau lỗi. Exit code khác 0 **không rollback**: **bỏ workspace dở và làm lại từ stock sạch**. Đừng ép snippet gần giống: kiểm tra descriptor, `.locals`/`.registers`, alias `pN`/`vN`, giới hạn opcode, nhánh fallback stock. `--no-delay` chỉ tắt in chữ chậm.

## 4. Import payload và dựng bản sao JAR

Patcher **không import payload**. Theo [guide tay §1](Patch_Guide_2.0.6.1_VI.md#1-import-payload--frameworkjar), import từng class payload vào bản sao **framework** JAR; descriptor đã có thì thay *class trong DEX owner cũ*, không chép cả DEX stock. Class mới có thể cần split mới. Chỉ import payload vào `framework.jar`, giữ class ROM khác. Assemble đúng những cây owner đã sửa với API tương thích, giữ tên entry gốc:

```bash
jar=framework; name=classes2  # ví dụ: lặp cho từng split owner đã sửa
mkdir -p "$WORK/$jar/rebuilt"
java -cp "$SMALI_CP" com.android.tools.smali.smali.Main \
  assemble "$WORK/$jar/smali_$name" --api "$API" \
  --output "$WORK/$jar/rebuilt/$name.dex"
```

Export mọi split đã sửa và split payload mới vào `rebuilt/`. Output bắt đầu từ **bản sao stock ở đường dẫn khác**. `zip -j` ghi tên DEX ở root archive:

```bash
mkdir -p "$WORK/output"
for jar in framework services; do
    cp "$STOCK/$jar.jar" "$WORK/output/$jar-patched.jar"
    for dex in "$WORK/$jar/rebuilt"/classes*.dex; do
        test -f "$dex" || continue
        zip -q -0 -j "$WORK/output/$jar-patched.jar" "$dex"
    done
    unzip -tq "$WORK/output/$jar-patched.jar"
done
```

Nếu ROM/toolchain cần bố cục archive khác, dùng editor multidex tương thích thay vì ép `zip`. Giữ DEX không sửa và entry không phải DEX.

## 5. Kiểm tra JAR **đã lưu**

1. Trích **mọi DEX từ `framework-patched.jar` và `services-patched.jar` đã lưu** vào thư mục recheck mới, rỗng. So DEX đã đổi byte-for-byte với output assemble, hash DEX không sửa và entry non-DEX với stock. Disassemble DEX đã trích, **không dùng cây làm việc**:

```bash
for jar in framework services; do
    mkdir -p "$WORK/$jar/recheck/input"
    unzip -q "$WORK/output/$jar-patched.jar" 'classes*.dex' -d "$WORK/$jar/recheck/input"
    for dex in "$WORK/$jar/recheck/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        if test -f "$WORK/$jar/rebuilt/$name.dex"; then
            cmp "$WORK/$jar/rebuilt/$name.dex" "$dex" || exit 1
        fi
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/recheck/smali_$name"
    done
done
```

2. Chạy verifier phù hợp trên **cây đã trích từ output**:

```bash
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck" --caller-only
python3 -I script/verify-services-a17-hooks.py "$WORK/services/recheck"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/services/recheck"
```

Khi framework output còn có `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` và đủ tám class AdvancedPolicy, chạy `python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"` **thay cho** `--caller-only`. Caller-only chỉ so ActivityThread; full so overload callee và *sự hiện diện* class. Services so visibility và installer API nếu hiện diện; SystemServer so caller của nó. Verifier này **không** bao phủ Instrumentation, system feature/Unlock GMS Feature, Keystore, optional hay mọi nhánh runtime — tự xem theo [guide tay](Patch_Guide_2.0.6.1_VI.md#5-dựng-và-kiểm-tra-jar-đã-lưu).

3. Kiểm tra mỗi class payload chỉ có một owner, mọi class ROM ngoài phạm vi còn nguyên. Ghi rõ kiểm tra thực tế, hash và DEX owner. Host PASS không chứng minh ROM boot hoặc tính năng chạy trên thiết bị. Không dùng output lỗi/dở; ký, xuất bản hay flash cần được cho phép riêng và chuẩn bị khôi phục.

## 6. Script dựng artifact Android 17 (phạm vi hẹp)

Đây là **script dựng JAR**, không phải module Zygisk Kaorios Helper. Xem `--help`, dùng bản sao/output khác stock và toolchain tương thích:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <payload.dex> --baksmali <standalone.jar> --smali <standalone.jar> [--api <api>]` chỉ patch **ActivityThread** và chèn payload DEX đã build. Chỉ replace cả DEX khi không mất class ROM hay trùng descriptor. Nếu phải merge từng class thì về §4. Script framework gọi `java -jar`; thin JAR không chạy. Không patch Instrumentation, system feature, Keystore hay Build.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]` patch `ComputerEngine`/`SystemServer`, gồm cặp installer hỗ trợ nếu có. Có thể dùng dependency đi kèm cho thin JAR; không bảo đảm hook installer khi method thiếu/layout khác.

Hai script so hash DEX không sửa. **Giới hạn script services:** nó verify DEX **đã unpack trước lúc pack** sau khi disassemble lại, không trích DEX từ candidate/output JAR; `unzip -tq` chỉ xác nhận archive đọc được. **Phải** trích và verify services output cuối theo §5. Với framework, dù có kiểm candidate đã pack, vẫn tự kiểm hook ngoài phạm vi và class inventory cuối. Không script nào chứng minh hành vi trên thiết bị.
