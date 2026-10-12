# Kaorios Toolbox 2.0.6.1 — Hướng dẫn patcher tự động (Android 13–17)

[English](Patcher_Guide_2.0.6.1.md) | **Tiếng Việt** | [Quy trình cho agent](../agent.md) | [Guide patch tay](Patch_Guide_2.0.6.1_VI.md)

**Chọn đường đi:** Nếu đã quen đọc smali nhưng mới patch ROM, hãy bắt đầu từ ROM stock đúng build, tìm DEX chứa từng class, rồi chọn: chạy patcher trên **các bản sao smali** cho các target ở bảng dưới; dùng [guide patch tay](Patch_Guide_2.0.6.1_VI.md) cho hook ngoài phạm vi auto và import payload; cuối cùng assemble và kiểm tra **JAR đầu ra đã đóng gói**. Không chép nguyên class từ Template sang ROM khác.

## 1. Chuẩn bị và tìm owner DEX

Cần bản sao `framework.jar` và `services.jar` stock từ **cùng bản build ROM đích được phép sửa**, smali/baksmali hoạt động với API của DEX, và `unzip`/`zip` (hoặc công cụ tương đương). Giữ file stock sạch ngoài workspace, ghi SHA-256 và lên phương án khôi phục trước khi cân nhắc tác động lên thiết bị; ROM update cần stock mới. Giữ `SettingsProvider.apk` **nguyên bản**: không patch, thay hay ký lại provider. Không dùng đường dẫn stock làm output.

Chạy lệnh từ thư mục gốc repo `public/`, **không** từ thư mục archive đã trích. Ví dụ dưới đây dùng một workspace mới, rỗng; tự đặt đường dẫn thật cho `STOCK`, `WORK` và classpath của toolchain đã kiểm tra. Không giả định máy đã cài lệnh `baksmali`, cũng không giả định `java -jar` chạy được với các JAR smali/baksmali dạng thin: cần classpath chứa đúng JAR **và các dependency tương thích**, hoặc lệnh standalone đã được kiểm tra trước. Chọn `API` theo DEX đầu vào/toolchain, không tự suy chỉ từ tên Android version.

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=37  # ví dụ Android 17; thay bằng API phù hợp DEX đầu vào
BAKSMALI_CP=/path/to/working-baksmali-classpath
SMALI_CP=/path/to/working-smali-classpath
# WORK phải là thư mục mới, rỗng; STOCK trỏ đến archive sạch ở nơi khác.

sha256sum "$STOCK/framework.jar" "$STOCK/services.jar"
for jar in framework services; do
    unzip -Z1 "$STOCK/$jar.jar"        # ghi cả entry không phải DEX
    mkdir -p "$WORK/$jar/input"
    unzip -q "$STOCK/$jar.jar" 'classes*.dex' -d "$WORK/$jar/input"
    for dex in "$WORK/$jar/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/smali_$name"
    done
done
```

Mỗi `smali_classes*` tương ứng **một** `classes*.dex` gốc. Tìm class trên *tất cả* cây, không mặc định ở `classes.dex`; ghi `descriptor → framework/services → tên DEX → đường dẫn smali → method/overload cần sửa`. Ví dụ: `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`; tìm các descriptor còn lại theo bảng dưới. Nếu thiếu target cần có hoặc có nhiều owner, dừng và đối chiếu ROM, không chọn class gần giống.

[Template_V2060](../Template/Template_V2060/README.md) chia theo `a13/`–`a17/` (mỗi phiên bản có `framework/` và `service/`). Chọn đúng version **chỉ để đối chiếu logic**, không thay stock class bằng template.

## 2. Mode và giới hạn auto

Patcher chính là `script/kaorios_patcher.py`; `script/kaorios_patcher_a17.py` chỉ là launcher tương thích cũ. Nó patch **file smali tìm thấy**, không tự tìm DEX trong JAR, không tự import payload hoặc hoàn thiện toàn bộ các hook của guide patch tay.

| Android | Mode | Tác dụng |
|---|---|---|
| 13–16 | `--mode 1` | Các target hook auto bên dưới, nếu method/layout được hỗ trợ. |
| 17 | `--mode 1` | Chỉ các target hook auto. |
| 17 | `--mode 2` | Chỉ field `Build.smali` và `Build$VERSION.smali` cho Build spoof. |
| 17 | `--mode 3` | Hợp mode 1 + mode 2 trên **cùng đường dẫn smali đầu vào**. |

Mode 2/3 bị từ chối khi khai báo Android 13–16. Tên helper còn `a17` không có nghĩa mọi layout Android 17/OEM đều được hỗ trợ: patcher vẫn kiểm tra method và bố cục thực.

| Archive | Mode 1 tìm đúng tên file này | Phạm vi |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `ApplicationPackageManager.smali`, `AndroidKeyStoreKeyPairGeneratorSpi.smali`, `AndroidKeyStoreSpi.smali` | Chỉ các method/hook mà patcher và verifier trong file hỗ trợ. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | Hook package visibility, `initSystemServer`, và **nếu có** cặp installer read APIs đúng signature/layout được hỗ trợ trong `ComputerEngine` thì patch/verify cả hai. |

Installer không phải target filename riêng: khi `ComputerEngine` có `getInstallerPackageName` hoặc `getInstallSourceInfo`, patcher yêu cầu **đúng một cặp** method có signature được hỗ trợ (mỗi tên API một method) và phải chứng minh được layout/vị trí hook của cặp đó. Nếu thiếu một API được hỗ trợ hoặc cặp đã chọn không qua kiểm tra, file bị từ chối. Overload khác **ngoài** danh sách signature được hỗ trợ có thể bị bỏ qua ngay cả khi cặp trên PASS; kiểm tra riêng chúng theo đường gọi của ROM. Nếu không có method installer nào, các hook này được bỏ qua, không được coi là đã patch.

Các hook **không tự patch**: tùy chọn `Settings$NameValueCache` ẩn developer/ADB, Secure Flag, CorePatch; và **mọi class payload**. Làm hoặc quyết định bỏ từng hook theo [guide patch tay](Patch_Guide_2.0.6.1_VI.md), đừng suy `PATCHED` nghĩa là mọi hook ngoài danh sách này đã có. Mode 2/3 sửa field Build Android 17, không thay thế payload hoặc hook tay.

## 3. Chạy patcher trên bản sao smali

Từ thư mục gốc repo, chạy mode 1 trên mỗi cây có owner cần sửa (ví dụ nếu `ActivityThread` thuộc `classes2.dex`):

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay
```

Đổi Android version và tên cây theo bảng owner của **ROM đang làm**; lặp lại cho những owner DEX khác. Android 13–16 dùng mode 1. Nếu không có một target được yêu cầu trong cây, đừng xem exit code 0 của cây khác là đã xong: đối chiếu từng file với bảng owner. Cũng có thể truyền đường dẫn **một file** để chỉ patch file đó.

Riêng Android 17, nếu cần Build spoof, tìm **cả hai** file trong bảng owner rồi chạy mode 2 riêng trên từng file, dù chúng nằm cùng hay khác DEX. Thay đường dẫn ví dụ bên dưới bằng owner thật của từng file; cả hai lệnh phải PASS:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

Nếu hai file cùng cây, dùng cùng tên cây cho cả hai đường dẫn. Đối chiếu kết quả `PATCHED`/`ALREADY_PATCHED` **của từng file** và kiểm lại cả hai trong JAR cuối. Chỉ dùng mode 3 thay mode 1 **và** mode 2 trên một cây khi cây đó chứa target hook **và cả hai** file Build cần xử lý; nếu Build tách cây, vẫn chạy mode 2 cho file còn lại và mode 1 cho cây chứa các hook khác. `services` cần mode 1 riêng. `--no-delay` chỉ tắt hiệu ứng in terminal.

| Kết quả | Cần làm gì |
|---|---|
| `PATCHED` | File đã được ghi sau khi patch và verify cấu trúc trong file; vẫn phải kiểm tra artifact cuối. |
| `ALREADY_PATCHED` | File đã có hook mong đợi và qua verifier cho target đó; không ghi mới. |
| `UNSUPPORTED_LAYOUT` | Bố cục không được hỗ trợ; **chỉ file bị từ chối giữ nguyên**, dừng và xem method thật. |
| `FAILED` | Patch/verify file lỗi; **chỉ file bị từ chối giữ nguyên**; xem lỗi và dừng. |
| Không tìm thấy target | Kiểm tra đường dẫn, owner DEX và danh sách file cần có; không coi đó là PASS. |

Patcher có thể đã **ghi file thành công trước đó** trong cùng lần chạy thư mục rồi mới gặp file lỗi hoặc verifier cả cây lỗi; exit code khác 0 **không rollback**. Không lấy cây dở để build: bỏ bản sao làm việc bị ảnh hưởng, tạo lại từ stock sạch rồi xử lý blocker. Với `UNSUPPORTED_LAYOUT`, kiểm tra descriptor, `.locals`/`.registers`, alias `pN` và `vN`, giới hạn opcode, mọi nhánh return/fallback. Không ép snippet gần giống hoặc tăng register nếu lệnh stock không encode được; tham khảo [guide patch tay](Patch_Guide_2.0.6.1_VI.md).

## 4. Import payload và dựng JAR đầu ra

**Patcher không import payload.** Import **toàn bộ class payload 2.0.6.1 riêng từng class vào `framework.jar`** theo [mục Import payload của guide patch tay](Patch_Guide_2.0.6.1_VI.md#2-import-payload-vào-frameworkjar): class trùng descriptor thì replace **class trong DEX owner cũ**, class mới thì add vào split phù hợp; giữ nguyên tất cả class ROM khác và không tạo owner trùng. Nếu DEX chứa `KaoriosHook` còn có class ROM khác, **không** thay nguyên DEX bằng payload DEX. `services.jar` dùng payload từ framework, không import thêm; provider để stock. Sau import, lập lại bảng owner DEX (có thể có split mới).

Assemble **chỉ các cây đã sửa** bằng toolchain đã kiểm tra và API phù hợp, dùng đúng tên entry `classes*.dex` gốc (trừ split mới chứa payload). Ví dụ cho *một* cây đã sửa; lặp cho từng owner DEX của framework/services và export cả split payload theo guide tay:

```bash
set -e
jar=framework
name=classes2
mkdir -p "$WORK/$jar/rebuilt"
java -cp "$SMALI_CP" com.android.tools.smali.smali.Main \
  assemble "$WORK/$jar/smali_$name" --api "$API" \
  --output "$WORK/$jar/rebuilt/$name.dex"
```

Tạo output ở đường dẫn **khác stock**, từ bản sao JAR sạch, rồi cập nhật từng entry DEX đã rebuild; giữ entry non-DEX và split không sửa. Ví dụ dưới đây đóng gói **cả hai JAR** từ các DEX đã export trong `rebuilt/` (bao gồm split payload mới). `zip -j` chỉ ghi basename `classes*.dex` vào root JAR, không ghi cả đường dẫn workspace:

```bash
set -e
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

Nếu `zip`/toolchain không hỗ trợ đúng bố cục ROM, dùng editor multidex tương thích thay vì ép lệnh. So danh sách entry trước/sau, hash DEX chưa sửa và class inventory (bao gồm payload); không giả định chỉ cần `ActivityThread` là đủ.

## 5. Kiểm tra chính archive đã lưu

1. Mở **`$WORK/output/framework-patched.jar` và `services-patched.jar` đã lưu**, trích mọi `classes*.dex` vào thư mục recheck **rỗng**, so byte entry đã đóng gói với DEX vừa assemble, so hash các DEX không đổi với stock và so inventory entry non-DEX.
2. Decompile **DEX trích từ archive đầu ra**, mỗi DEX vào cây riêng; kiểm tra mỗi descriptor payload xuất hiện đúng một lần trên toàn framework, mọi class ROM không được thay vẫn còn, và kiểm lại exact method/overload, register vật lý, nhánh stock fallback, `invoke-*` sát `move-result*`. Không chạy verifier trên cây làm việc rồi gọi đó là bằng chứng của archive cuối.
3. Trích lại từ **JAR cuối**, không dùng DEX trong thư mục `rebuilt` để recheck. Tạo thư mục recheck mới, rỗng cho mỗi lần kiểm tra (ví dụ minh họa cả hai output):

```bash
set -e
for jar in framework services; do
    mkdir -p "$WORK/$jar/recheck/input"
    unzip -q "$WORK/output/$jar-patched.jar" 'classes*.dex' \
      -d "$WORK/$jar/recheck/input"
    for dex in "$WORK/$jar/recheck/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        if test -f "$WORK/$jar/rebuilt/$name.dex"; then
            cmp "$WORK/$jar/rebuilt/$name.dex" "$dex" || exit 1
        fi
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" \
          --output "$WORK/$jar/recheck/smali_$name"
    done
done
```

So hash DEX không sửa với file stock tương ứng trước khi dùng kết quả; không chạy lại lệnh trong thư mục recheck cũ. Chạy verifier thích hợp trên thư mục chứa các cây decompile từ **JAR cuối**:

```bash
set -e
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck" --caller-only
python3 -I script/verify-services-a17-hooks.py "$WORK/services/recheck"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/services/recheck"
```

Khi framework đầu ra **đã** có `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` và tám class AdvancedPolicy, chạy full verifier thay cho `--caller-only`:

```bash
set -e
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"
```

`--caller-only` chỉ kiểm tra hook caller trong `ActivityThread`; full framework kiểm tra thêm callee overload chính xác và **sự hiện diện** của tám class AdvancedPolicy, không chứng minh toàn bộ payload hoạt động. Verifier `verify-services-a17-hooks.py` kiểm tra package visibility trong `ComputerEngine` **và** installer read APIs nếu chúng hiện diện; `verify-systemserver-a17-hooks.py` kiểm tra caller `SystemServer`. Nếu installer APIs vắng mặt, verifier services không đòi chúng tồn tại. Các verifier này không bao phủ Instrumentation, feature, Keystore, optional hooks hay mọi đường runtime: kiểm tra chúng theo [guide patch tay](Patch_Guide_2.0.6.1_VI.md#7-đóng-gói-kiểm-tra-bàn-giao). Ghi hash stock/output, owner DEX, các verifier thực sự chạy và hook xem tay. PASS trên source/host, PASS trên archive ROM thật và hoạt động trên thiết bị thật là những mức chứng cứ khác nhau; **không khẳng định boot hoặc chức năng thiết bị** từ verifier host.

## 6. Helper artifact Android 17: phạm vi hẹp hơn mode 1

Chỉ dùng với **toolchain được helper hỗ trợ**, bản sao JAR và đường dẫn output khác stock; xem `--help` của từng script. Riêng framework helper gọi `java -jar` trực tiếp: tham số `--baksmali` và `--smali` phải là JAR executable độc lập thực sự, **không** phải thin JAR. Services helper có nhánh classpath fallback với các dependency đi kèm; kiểm tra tương thích toolchain trước khi dùng. Không coi hai helper dưới đây là cách tự động làm hết mode 1:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <prebuilt-payload.dex> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]`: chỉ patch owner DEX của `ActivityThread` và đưa **payload DEX đã build sẵn** vào framework; planner chỉ cho phép replace toàn DEX nếu không mất class ROM cũ và không trùng class ở split khác. Nếu cần merge từng class, quay lại mục 4. Helper kiểm tra caller/callee và tám class AdvancedPolicy từ **candidate JAR đã đóng gói**; không patch Instrumentation, feature, Keystore hay Build.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]`: chỉ patch owner DEX của `ComputerEngine` và `SystemServer`, có thể là hai DEX khác nhau; nếu `ComputerEngine` chứa cặp installer read APIs được hỗ trợ, helper cũng patch/verify chúng thông qua `patch-services-a17.py` và services verifier. Không bảo đảm installer hook khi method vắng mặt.

Cả hai kiểm hash DEX không sửa và kiểm tra cấu trúc trước khi phát hành output. **Giới hạn quan trọng:** services helper tạo candidate JAR rồi verifier decompile lại từ DEX trong thư mục **đã unpack nhưng trước lúc pack**, không trích từ chính candidate/output; `unzip -tq` chỉ kiểm tra archive đọc được. Vì vậy vẫn phải tự **trích DEX từ services JAR đầu ra**, decompile và chạy lại hai verifier như mục 5. Với framework helper, dù đã kiểm candidate đã pack, vẫn kiểm các hook ngoài phạm vi helper và inventory của bản cuối. Không helper nào xác nhận ROM boot trên thiết bị.
