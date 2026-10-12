# Kaorios Toolbox 2.0.6.1 — Hướng dẫn patcher tự động

[English](Patcher_Guide_2.0.6.1.md) | **Tiếng Việt** | [Quy trình cho agent](../agent-guide.md)

File này dành cho lệnh patcher, mode, kết quả và helper build artifact. Cách tự sửa smali, import payload, cấp register và triển khai nằm trong [guide patch tay riêng](Patch_Guide_2.0.6.1_VI.md).

Patcher hiện chặn trường hợp thêm register làm lệnh stock không còn encode được; kết quả là `UNSUPPORTED_LAYOUT`, file đầu vào được giữ nguyên. Helper build artifact chỉ thay một DEX khi mọi class cũ trong DEX đó đều có trong payload mới và payload không trùng class ở DEX khác. Nếu báo cần class merge/import, dùng [guide patch tay](Patch_Guide_2.0.6.1_VI.md) để import class và replace class trùng; không thay cả DEX chứa class ROM khác.

## 1. Cần chuẩn bị gì

Lấy từ ROM đích và giữ bản sạch của:

- `framework.jar`
- `services.jar`

Chỉ làm trên bản sao ROM đúng build được phép sửa. Cất file gốc sạch ngoài workspace, ghi `sha256sum` của chúng và chuẩn bị cách khôi phục trước khi tác động lên thiết bị. ROM cập nhật cần bộ stock mới. Không chạy patcher trên bản sao duy nhất.

Cần smali/baksmali hoạt động bình thường và công cụ chỉnh archive (`unzip`/`zip` hoặc tương đương).

Patcher chính đang được duy trì là:

```text
script/kaorios_patcher.py
```

`script/kaorios_patcher_a17.py` chỉ là launcher tương thích để lệnh cũ không bị hỏng.

---

### Chọn đúng thư mục mẫu

Smali mẫu đã patch được tách riêng theo Android version:

| Android | Thư mục |
|---|---|
| 13 | [`a13/`](../Template/Template_V2060/a13/) |
| 14 | [`a14/`](../Template/Template_V2060/a14/) |
| 15 | [`a15/`](../Template/Template_V2060/a15/) |
| 16 | [`a16/`](../Template/Template_V2060/a16/) |
| 17 | [`a17/`](../Template/Template_V2060/a17/) |

Mỗi thư mục có `framework/` và `service/` được tạo từ stock archive tương ứng trong commit cũ. Xem [Template_V2060 README](../Template/Template_V2060/README.md).

Không lấy nguyên class mẫu của Android version khác để thay vào ROM.

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
```

Có thể sẽ có:

```text
smali_classes/
smali_classes2/
smali_classes3/
```

Phải tìm target trên tất cả các cây đó. Trước khi patch, ghi descriptor từng class đích, archive nguồn, `classes*.dex` chứa class và đường dẫn smali. Ví dụ `rg -n '^\.class .*Landroid/app/ActivityThread;' work/framework`; tìm các target còn lại trong từng workspace. Không gộp các cây DEX không liên quan để tạo class trùng owner.

---

## 4. Chạy auto patcher

### Android 13–16

Chạy mode 1 trên từng workspace có target Kaorios:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 16 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 16 --mode 1 --no-delay
```

Đổi `16` thành đúng Android version của ROM.

### Android 17

Patch hook trước:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 17 --mode 1 --no-delay
```

Sau đó patch field Build trong workspace framework:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 2 --no-delay
```

Nếu workspace framework chứa cả target hook lẫn `Build.smali` / `Build$VERSION.smali`, có thể dùng mode 3 thay cho hai lệnh framework ở trên:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 3 --no-delay
```

`services` vẫn chạy mode 1 riêng.

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

CLI trả mã lỗi khác 0 nếu target hoặc verifier cả cây thất bại, nhưng **không** hoàn tác file đã ghi trước đó. Xem kết quả từng target; nếu có lỗi, bỏ toàn bộ cây smali đang làm và tạo lại từ stock sạch trước khi thử tiếp. Mã thoát 0 không có nghĩa mọi class dự kiến đều đã xuất hiện: patcher chỉ xử lý target tìm được, nên đối chiếu danh sách báo cáo với bảng owner.

---

## 6. Decompile lại và verify

Verifier chạy trước lúc lưu chưa đủ; DEX sau khi assemble cũng phải kiểm tra lại. Assemble mỗi cây smali đã sửa với API phù hợp DEX đầu vào và toolchain; chỉ thay entry DEX gốc của nó trong **bản sao** JAR stock. Giữ entry không phải DEX, so hash các DEX chưa sửa. Trích DEX từ JAR cuối, so với output đã assemble rồi decompile lại trong thư mục recheck rỗng. Import/merge đủ payload 2.0.6.1 vào framework theo guide patch tay; patcher smali không import payload.

Decompile artifact vừa build rồi chạy:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck --caller-only
python3 script/verify-services-a17-hooks.py work/services/recheck
python3 script/verify-systemserver-a17-hooks.py work/services/recheck
```

Nếu framework cuối đã có Kaorios framework DEX + đầy đủ AdvancedPolicy classes, chạy full verifier không có `--caller-only`:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck
```

Verifier PASS chỉ chứng minh cấu trúc mà verifier đó kiểm tra. Ghi lại verifier đã chạy, các hook khác đã xem tay và hash archive/DEX cuối. Kết quả patch trên host, kiểm tra artifact đã đóng gói và boot/chức năng trên thiết bị thật là ba mức chứng cứ riêng; không suy từ mức này sang mức khác. Nó chưa chứng minh ROM boot được trên máy thật.

Full framework verifier (không có `--caller-only`) kiểm tra hook `ActivityThread`, overload callee `initActivityThread(Object)` và sự có mặt của tám class AdvancedPolicy; nó không kiểm tra toàn bộ hook Instrumentation, feature và Keystore. Với `--caller-only`, chỉ kiểm tra caller ActivityThread. Kiểm tra các hook còn lại theo [guide patch tay](Patch_Guide_2.0.6.1_VI.md), rồi làm mục [Lưu file và kiểm tra](Patch_Guide_2.0.6.1_VI.md#lưu-file-và-kiểm-tra). Import toàn bộ class payload như hướng dẫn ở mục framework.jar.

---

## 7. Khi patcher báo UNSUPPORTED_LAYOUT

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

## 8. Helper build artifact Android 17

Android 17 có thêm các pipeline build artifact đầy đủ:

```text
script/patch-framework-a17-artifact.sh
script/patch-services-a17-artifact.sh
```

Chúng tự tìm owner DEX, chỉ rebuild DEX đã sửa, kiểm tra hash các DEX còn lại và chạy lại verifier.

Chỉ dùng khi đã hiểu input smali/baksmali của script. Giữ `SettingsProvider.apk` gốc; Fake Settings và bước patch provider đã được bỏ.
