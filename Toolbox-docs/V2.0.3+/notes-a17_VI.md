# Android 17 (SDK 37) — Ghi chú cho người mới khi patch Kaorios 2.0.6.0

[English](notes-a17.md) | **Tiếng Việt**

Trang này chỉ chứa các bước bổ sung dành riêng cho ROM đích chạy **Android 17 / SDK 37 (Baklava)**.

> [!IMPORTANT]
> Hãy bắt đầu từ **`framework.jar` Android 17 stock sạch của đúng ROM đích**.
>
> Nếu framework đã từng được patch bởi Kaorios, framework mod khác hoặc một patch thủ công cũ, trang này không cố merge hay sửa các thay đổi đó. Hãy khôi phục bản sạch trước, hoặc tự xử lý phần merge.

Luồng tích hợp 2.0.6.0 đầy đủ nằm tại [`Patch_Guide_2.0.6.0_VI.md`](Patch_Guide_2.0.6.0_VI.md).

---

## 1. Vì sao Android 17 cần thêm một patch riêng

Kaorios thay đổi một số giá trị trong `android.os.Build` khi runtime để phục vụ property spoof, PIF profile, Google Photos profile và GameProps.

Trên Android 17, các field này không thể được thay đổi ổn định nếu vẫn khai báo `static final`. Vì vậy, `Build.smali` và `Build$VERSION.smali` stock của ROM cần một thay đổi nhỏ ở access flag: chỉ xóa `final` khỏi các field mà Kaorios có thể cần sửa.

Bạn **không thay toàn bộ class `Build`** và cũng **không copy class template vào ROM**. Bạn chỉ chỉnh đúng hai class stock lấy từ ROM của mình.

---

## 2. Dùng smali / baksmali 3.x

Framework DEX Android 17 có thể chứa các Hidden API restriction flag mới mà baksmali cũ không hiểu.

Không dùng baksmali 2.5.2 cho công việc này. Lỗi thường gặp:

```text
java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
```

ở:

```text
org.jf.dexlib2.HiddenApiRestriction.getAllFlags
```

Hãy dùng **smali/baksmali 3.0 trở lên** với API 37.

Ví dụ:

```bash
java -jar baksmali-3.0.8.jar d classes3.dex --api 37 -o fw3
java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
```

`classes3.dex` chỉ là ví dụ. Trước tiên phải xác định DEX stock nào thực sự chứa `Build` trong ROM của bạn.

---

## 3. Tìm DEX stock chứa `Build`

Trong `framework.jar` stock sạch, xác định hai class:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

Trên một số bản HyperOS Android 17 chúng nằm ở `classes3.dex`, nhưng điều đó **không được đảm bảo**.

Quy trình an toàn:

1. Giải nén toàn bộ `classes*.dex` khỏi `framework.jar` sạch.
2. Tìm/list class cho tới khi thấy `android/os/Build` và `android/os/Build$VERSION`.
3. Disassemble đúng DEX đó bằng baksmali 3.x với `--api 37`.
4. Chỉ sửa hai file smali stock tương ứng.

Không sửa DEX Kaorios `classesN.dex` mà bạn đã thêm ở bước tích hợp chính. Class `Build` nằm trong DEX stock của framework.

---

## 4. Xóa `final` khỏi các field cần thiết

### `Build.smali`

Xóa `final` khỏi tập tối thiểu sau:

```text
BRAND
DEVICE
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MODEL
PRODUCT
TAGS
TIME
TYPE
USER
```

### `Build$VERSION.smali`

Xóa `final` khỏi:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

### Field tùy chọn theo profile

Nếu profile PIF / GameProps tự tạo của bạn thực sự sửa thêm các field khác, hãy xóa `final` khỏi đúng các field đó, ví dụ:

```text
DISPLAY
HOST
INCREMENTAL
SDK
*_FOR_ATTESTATION
```

> [!WARNING]
> Giữ nguyên `SDK_INT`. **Không** xóa `final` khỏi `SDK_INT` trong patch này.

Không xóa hàng loạt `final` khỏi mọi field trong `Build` chỉ vì làm vậy nhanh hơn. Chỉ patch đúng field Kaorios cần dùng.

---

## 5. Smali trước và sau khi sửa

Ví dụ với `BRAND`:

### Trước — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### Sau — đã patch

```smali
.field public static whitelist BRAND:Ljava/lang/String;
```

Chỉ access flag `final` bị xóa.

Một số tool có thể serialize field static non-final với initializer tường minh như `= null`. Điều đó hợp lệ và tự nó không phải lỗi.

Lặp lại thay đổi tương tự cho các field đã liệt kê ở trên.

---

## 6. Rebuild lại đúng DEX stock ban đầu

Sau khi sửa `Build.smali` và `Build$VERSION.smali`, assemble thư mục lại thành **đúng DEX slot ban đầu**.

Ví dụ:

```bash
java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
```

Sau đó chỉ thay entry DEX đó vào bản `framework.jar` đang làm việc.

Không đổi tên DEX stock vừa rebuild sang số DEX mới. DEX Kaorios thêm vào và DEX stock chứa `Build` là hai thứ riêng biệt:

```text
stock classes3.dex  -> chứa Build / Build$VERSION đã patch
new classes7.dex    -> ví dụ DEX Kaorios Framework
```

Số thực tế phụ thuộc ROM.

---

## 7. DEX header: `039` và `040`

ART của Android 17 hỗ trợ cả DEX `039` và `040`. ROM Android 17 thực tế vẫn có thể ship framework DEX dùng `039`.

Với patch này, quy tắc quan trọng rất đơn giản:

**Không cố tình chuyển DEX stock từ version này sang version khác chỉ vì Android đang là 17.**

Hãy dùng toolchain smali/baksmali hiện đại với API 37 và rebuild DEX stock bình thường. Header `039` trên Android 17 không tự động là lỗi.

Nếu muốn xem header DEX:

```bash
xxd -l 8 classes3.dex
```

Bạn có thể thấy một trong các magic sau:

```text
dex\n039\0
dex\n040\0
```

---

## 8. Kiểm tra trước khi flash

Trước khi thay file ROM, kiểm tra DEX rebuild đọc lại được:

```bash
java -jar baksmali-3.0.8.jar list classes classes3.dex >/dev/null
```

Nếu cần, disassemble lại rồi xác nhận:

- các field đã chọn không còn `final`;
- `SDK_INT` vẫn giữ nguyên flag gốc;
- cả hai class `Build` vẫn tồn tại;
- bạn rebuild đúng DEX stock ban đầu, không ghi đè DEX Kaorios mới thêm.

Sau khi disassemble, có thể kiểm tra nhanh bằng:

```bash
rg -n '^\.field .* final .* (BRAND|DEVICE|FINGERPRINT|HARDWARE|ID|MANUFACTURER|MODEL|PRODUCT|TAGS|TIME|TYPE|USER):' android/os/Build.smali
```

Field nào vẫn bị lệnh trên match thì vẫn còn `final`.

---

## 9. Lỗi Android 17 thường gặp

| Sai lầm | Kết quả / triệu chứng | Cách sửa |
|---|---|---|
| Dùng baksmali 2.5.2 | Crash `HiddenApiRestriction` khi disassemble | Dùng smali/baksmali 3.x với API 37 |
| Mặc định `Build` luôn nằm `classes3.dex` | Sửa nhầm DEX hoặc không tìm thấy class | Xác định class trong ROM đích trước |
| Sửa DEX Kaorios mới thêm | Không thay đổi đúng chỗ hoặc gây nhầm class | Sửa DEX stock chứa `android.os.Build` |
| Xóa `final` khỏi toàn bộ field `Build` | Thay đổi framework không cần thiết | Chỉ patch field mà profile cần |
| Xóa `final` khỏi `SDK_INT` | Hành vi không mong muốn, khó debug hơn | Giữ nguyên `SDK_INT` |
| Copy nguyên `Build.smali` từ template sang ROM khác | Mất khác biệt riêng của OEM/ROM | Chỉ áp dụng thay đổi access flag lên class stock của bạn |
| Cho rằng DEX `039` là sai trên Android 17 | Rebuild/chuyển đổi không cần thiết | `039` hợp lệ; dùng đúng toolchain API 37 |
| Thay nhầm `classesN.dex` trong JAR | Bootloop hoặc thiếu class | Đưa DEX stock rebuild về đúng slot ban đầu |

---

## 10. Checklist Android 17

Trước khi quay lại guide 2.0.6.0 chính, xác nhận:

- [ ] `framework.jar` đầu vào là stock sạch từ đúng ROM đích.
- [ ] Dùng smali/baksmali 3.x với API 37.
- [ ] Đã tìm đúng DEX stock chứa `Build`, không đoán số DEX.
- [ ] Chỉ xóa `final` khỏi các field `Build` / `Build$VERSION` cần thiết.
- [ ] `SDK_INT` giữ nguyên.
- [ ] DEX stock đã sửa được rebuild về đúng `classesN.dex` ban đầu.
- [ ] DEX rebuild có thể được baksmali parse lại.

Sau khi hoàn tất, quay lại [`Patch_Guide_2.0.6.0_VI.md`](Patch_Guide_2.0.6.0_VI.md) để tiếp tục tích hợp Kaorios bình thường.

Chỉ dùng để tham khảo: [`Template/Template_V2060/Build.smali`](../Template/Template_V2060/Build.smali) và [`Template/Template_V2060/Build$VERSION.smali`](../Template/Template_V2060/Build$VERSION.smali).