# Kaorios Toolbox 2.0.6.1 — Patcher smali tự động (Android 13–17)

[English](Patcher_Guide_2.0.6.1.md) | [Các hook patch tay](Patch_Guide_2.0.6.1_VI.md) | [Trạng thái và giới hạn Secure Flag](Disable_Secure_Flag_VI.md)

**Cảnh báo bootloop:** recipe Kaorios cũ (guide 2.0.6.0 và asset 2.0.6.1 ban đầu) patch `SettingsProvider.apk` để gọi các method `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) mà `classes.dex` 2.0.6.1 hiện tại không còn định nghĩa. System process sẽ ném `NoSuchMethodError`, nhiều khả năng gây bootloop. Nếu `SettingsProvider.apk` của ROM này từng được patch bằng recipe Kaorios cũ, khôi phục `SettingsProvider.apk` stock của cùng build ROM **trước khi** import `classes.dex` 2.0.6.1 hiện tại. Không dùng lại file provider đã patch trước đây.

**Patcher làm gì:** patch **file smali** được hỗ trợ, không tự sửa JAR nguyên chiếc. Nó **không** import payload hoặc thêm mọi hook tùy chọn. Archive [kaorios-patcher-2.0.6.1.zip](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/kaorios-patcher-2.0.6.1.zip) được đính kèm ở release v2.0.6.1 — SHA-256 `af833879dede9ca87afb07d70bccb59d8673f4bcac9155e585a89f31695f5dea`. Chỉ sửa **bản sao** `framework.jar` và `services.jar` stock của cùng build ROM được phép sửa; giữ stock sạch, SHA-256 và cách khôi phục. Giữ nguyên `SettingsProvider.apk`. Chạy từ gốc repo `public/`; đường dẫn output phải khác stock.

**Source và archive:** archive đính kèm và checkout đúng commit public chứa cùng bộ script. Nếu muốn tự dựng, chạy `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` tại gốc repo public (output chưa được tồn tại). Ghi lại SHA-256 của archive bạn dùng và của từng script bên trong; checksum của một bản build khác không mô tả bản của bạn.

**ROM stock hoặc đã patch:** mode 1 hỗ trợ layout stock được nhận diện và verify hook cũ được nhận diện. Kiểm kê ROM trước; giữ class/hook OEM ngoài phạm vi, không chèn trùng hook bằng tay. Chỉ dùng `--update` cho bản patch được hỗ trợ; layout cũ không rõ/không hỗ trợ cần xem lại hoặc khôi phục file stock đúng build, không ép chép đè. Cảnh báo khôi phục SettingsProvider vẫn áp dụng.

**Tương thích payload:** hook Keystore đã bị gỡ ngày 2026-10-31. Patcher này không còn nhắm `AndroidKeyStoreKeyPairGeneratorSpi` hay `AndroidKeyStoreSpi`, và `KaoriosHook.CertificateChainIfNeeded` trong source hiện tại là stub trả lại đúng chain đầu vào, nên không còn ABI callee certificate để thỏa.

Asset phát hành v2.0.6.1 và bản build từ source hiện tại là cùng một artifact: `classes.dex`, 91.160 byte, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, giữ cả hai class Keystore stock. Asset trên release đã được thay bằng bản này ngày 2026-10-31; asset cũ mang SHA-256 `94848e18…` (858.636 byte) build trước lần gỡ và có rewrite certificate chain — nếu bản bạn giữ mang hash đó, bỏ đi và tải lại. Dù import payload nào, hãy xác minh hash và descriptor callee của nó qua `--payload-smali` trỏ đúng artifact đó.

**Điều kiện toolchain:** với trường hợp DEX 040 đã cung cấp, dùng `--api 37 --smali-api 34`: API đích và opcode API của assembler là hai tham số riêng; smali 3.0.8 từ chối assemble bằng API 37 (`dexVersion must be within [0, 999]`). Cấu hình đã thử này không bảo đảm tương thích mọi DEX 041/container hoặc CompactDex. Kiểm tra định dạng đầu vào và khả năng công cụ riêng, không suy từ Android version. Công cụ không đọc/dựng được định dạng thì dừng; không sửa magic/header DEX để lách kiểm tra.

## 1. Tìm class và DEX owner

Liệt kê mọi entry `classes*.dex` của cả hai JAR, disassemble **từng DEX riêng** bằng toolchain/API phù hợp DEX đầu vào. Ví dụ workspace *mới, rỗng* với classpath đã thử (smali JAR dạng thin cần dependency tương ứng; `java -jar` có thể không chạy):

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=34  # chỉ ví dụ: công cụ phải hỗ trợ API này VÀ DEX/lệnh đầu vào thật
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

Ghi `descriptor class → JAR → classes*.dex → method chính xác`. Tìm ở *mọi* cây smali, ví dụ `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`. Nếu thiếu/trùng class hoặc overload khác, dừng. Snippet trong guide tay chỉ là ví dụ chèn, **không thay class stock**. Tìm owner thực tế; không mặc định `classes6.dex` là payload.

## 2. Chọn target và mode

| JAR | File mode 1 tìm đúng tên | Chức năng |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `Settings$NameValueCache.smali` | Khởi tạo app, Context, guard đầu method trạng thái developer/ADB. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | HMA visibility, khởi tạo server; API đọc installer **nếu có cặp được hỗ trợ**. |

`ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` **không còn được patch**: facade `KaoriosHook.hasSystemFeature` luôn trả `null`, nên mode 1 để nguyên method stock và facade chỉ còn trong payload cho ROM đã patch bởi công thức cũ. `ComputerEngine` installer yêu cầu đúng một method có chữ ký/layout hỗ trợ cho từng API `getInstallerPackageName` và `getInstallSourceInfo`. Cặp thiếu một phía bị từ chối; overload khác có thể còn nguyên. Nếu cả hai vắng mặt, installer hook **được bỏ qua**, không phải đã có. Đối chiếu caller ROM thật trước khi kết luận.

- Android 13–16: **mode 1** cho hook hỗ trợ.
- Android 17: **mode 1** cho hook hỗ trợ; **mode 2** tùy chọn sửa field `Build.smali` và `Build$VERSION.smali`; **mode 3** kết hợp 1+2 trong cùng cây input, không qua các DEX/JAR khác nhau. Mode 2/3 không dành cho Android 13–16.
- **Không tự động:** import payload; [Secure Flag](Disable_Secure_Flag_VI.md) (chưa có recipe `captureDisplay` chung), [CorePatch](CorePatch_VI.md), hoặc mọi overload OEM. Xem [guide patch tay](Patch_Guide_2.0.6.1_VI.md) cho trình tự JAR → class → method → snippet và kiểm tra register.
- **Kaorios Helper** là [module Zygisk cài riêng](https://github.com/hzzmonetvn/KaoriosHelper), không phải hook ROM hay các script dựng JAR này. Nó để framework/services stock. **Không bật HMA Helper cùng hook HMA patch trong ROM.**

## 3. Patch đúng cây owner

Ví dụ target framework nằm trong `classes2.dex`, services trong `classes.dex`; chạy từ `public/`:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay \
  --payload-smali /path/to/disassembled-payload
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay \
  --payload-smali /path/to/disassembled-payload
```

Trước khi chấp nhận hoặc flash bất kỳ output mode 1 nào, hãy disassemble DEX payload thật bằng toolchain tương thích vào cây mới rỗng riêng và dùng `--payload-smali /path/to/payload-disassembled-root` trong **mỗi** lần gọi patcher. Chạy thiếu tùy chọn chỉ kiểm caller, không đủ xác minh tương thích. Mọi hook giờ resolve vào facade `initContext`/`initActivityThread`/`shouldHideDevStatusFromNameValueCache`, nên bước kiểm là đối chiếu các descriptor đó trong payload của bạn — không còn yêu cầu callee certificate chain hay system feature. Không chấp nhận hoặc flash output nếu kiểm ABI chưa thành công.

Thay Android version và cây **owner thật**; lặp cho mọi split có target. Có thể truyền đúng một file smali. Thành công ở một cây không chứng minh đã tìm được target cây khác. `script/kaorios_patcher_a17.py` chỉ là launcher tương thích cũ.

Riêng field Build Android 17 tùy chọn: tìm **cả hai** file rồi chạy mode 2 trên owner của từng file, dù khác DEX:

```bash
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

Tùy chọn `--update` (hoặc `-u`) chỉ sửa block hook được nhận diện và hỗ trợ. Nội dung hook hợp lệ được verify và giữ nguyên, dù `--update` có thể ghi lại file; layout hook lạ hoặc không đầy đủ bị từ chối thay vì ép ghi đè.

Tên cây chỉ là ví dụ. Mode 3 có thể thay mode 1+2 trên **một** cây khi cây đó chứa cả hai file Build cần sửa và target mode 1; vẫn phải làm cây khác và services riêng.

**Đọc status từng file:** `PATCHED` = đã đổi sau verify; `ALREADY_PATCHED` = đã có và qua verifier (thường không ghi lại; `--update` có thể ghi lại nội dung y nguyên); `UNSUPPORTED_LAYOUT`/`FAILED` = dừng xem file lỗi; không thấy target **không phải PASS**. Lượt patch thư mục kiểm tra trước toàn bộ nội dung target và vị trí trong cây trước khi ghi file gốc; từ chối target trùng và input symlink. Đây không phải transaction atomic cho toàn filesystem: nếu lỗi ghi, bỏ workspace dở và làm lại từ stock sạch. Đừng ép snippet gần giống: kiểm tra descriptor, `.locals`/`.registers`, alias `pN`/`vN`, giới hạn opcode, nhánh fallback stock. `--no-delay` chỉ tắt in chữ chậm.

## 4. Import payload và dựng bản sao JAR

Patcher **không import payload**. Theo [guide tay §1](Patch_Guide_2.0.6.1_VI.md#1-import-payload--frameworkjar), import từng class payload vào bản sao **framework** JAR; descriptor đã có thì thay *class trong DEX owner cũ*, không chép cả DEX stock. Tìm trên mọi DEX: descriptor payload cũ có thể thuộc nhiều split owner. Chỉ thay descriptor chính xác có trong payload mới; không xóa cả namespace hay class OEM ngoài phạm vi. Class mới có thể cần split mới. Chỉ import payload vào `framework.jar`, giữ class ROM khác. Assemble đúng những cây owner đã sửa với API tương thích, giữ tên entry gốc:

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

Khi framework output còn có `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` và đủ tám class AdvancedPolicy, chạy `python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"` **thay cho** `--caller-only`. Cả hai chế độ đều kiểm đủ ba caller framework bắt buộc: ActivityThread, Instrumentation và Settings$NameValueCache. `ApplicationPackageManager` không được patch; facade `hasSystemFeature` của nó chỉ còn cho ROM đã patch bởi công thức cũ. `AndroidKeyStoreSpi` và `AndroidKeyStoreKeyPairGeneratorSpi` không còn bắt buộc hay được patch; source hiện tại giữ cả hai class theo hành vi Android stock. `--caller-only` chỉ bỏ qua kiểm tra callee và class AdvancedPolicy; full kiểm thêm overload callee và *sự hiện diện* class. Hook manifest được nạp tự động, không cần thêm cờ manifest. Services so visibility và installer API nếu hiện diện; SystemServer so caller của nó. Verifier **không** chứng minh mọi nhánh runtime hoặc hành vi hook tùy chọn — tự xem các nhánh bổ sung theo [guide tay](Patch_Guide_2.0.6.1_VI.md#5-dựng-và-kiểm-tra-jar-đã-lưu).

Trước khi chấp nhận output, kiểm tra caller facade chính xác trong **cả hai cây trích từ output đã lưu** với cây disassemble của payload thật:

```bash
python3 -I script/verify-payload-abi.py "$WORK/framework/recheck" \
  --payload-smali /path/to/payload-disassembled-root
python3 -I script/verify-payload-abi.py "$WORK/services/recheck" \
  --payload-smali /path/to/payload-disassembled-root
```

Bước này kiểm tra descriptor facade public static khớp, không chứng minh logic payload, toàn bộ liên kết dependency hay hành vi trên thiết bị. Thiếu callee facade là lỗi chặn dù verifier khác PASS.

3. Kiểm tra mỗi class payload chỉ có một owner, mọi class ROM ngoài phạm vi còn nguyên. Ghi rõ kiểm tra thực tế, hash và DEX owner. Host PASS không chứng minh ROM boot hoặc tính năng chạy trên thiết bị. Không dùng output lỗi/dở; ký, xuất bản hay flash cần được cho phép riêng và chuẩn bị khôi phục.

## 6. Script dựng artifact Android 17 (phạm vi hẹp)

Đây là **script dựng JAR**, không phải module Zygisk Kaorios Helper. Xem `--help`, dùng bản sao/output khác stock và toolchain tương thích:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <payload.dex> --baksmali <tool.jar> --smali <tool.jar> [--api <api>] [--smali-api <api>] [--update]` yêu cầu ba class caller framework: `ActivityThread`, `Instrumentation` và `Settings$NameValueCache`. Thiếu caller bắt buộc sẽ làm candidate thất bại dù cây owner khác đã patch thành công. Script import payload theo descriptor chính xác, thay định nghĩa khớp trong owner cũ, dựng lại mọi DEX owner đã sửa và giữ định nghĩa ngoài phạm vi. Không tự xóa class obfuscate cũ; muốn dọn phải xác minh ownership. Cả fat JAR và thin JAR (dependency cùng thư mục) được hỗ trợ qua wrapper fallback. Với trường hợp DEX 040 đã cung cấp, truyền `--api 37 --smali-api 34`. Candidate JAR được trích lại để verify hook manifest, class inventory và facade ABI. Guard đầu `Settings$NameValueCache` chỉ ẩn `adb_enabled`, `adb_wifi_enabled`, `development_settings_enabled` khi policy helper cho phép; không tắt ADB thật.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>] [--smali-api <api>]` patch `ComputerEngine` và `SystemServer`, gồm cặp installer hỗ trợ nếu có. Xác minh re-extract candidate JAR trước khi xuất bản atomic.

Cả hai script so sánh hash DEX không sửa để bảo đảm byte-identical. Chúng không cài gì ngoài hai JAR: đưa `bin/lib/`, `bin/resetprop/` hay `bin/init/` lên system image là quyết định riêng, không thuộc phạm vi bản patch này.

Bộ regression public gồm 76 test trong sáu file và đều PASS; ba test cần `KAORIOS_SMALI_CLASSPATH` bên ngoài nên bị skip khi không có. Đây là bằng chứng host/artifact tổng hợp, không chứng minh boot thiết bị thật, kết quả Play Integrity hay toàn bộ liên kết giữa JAR. Hai script không xuất bản release hoặc test ROM/thiết bị thật. Giữ input sạch và theo §5 cho hook/kiểm tra ngoài phạm vi đã nêu.
