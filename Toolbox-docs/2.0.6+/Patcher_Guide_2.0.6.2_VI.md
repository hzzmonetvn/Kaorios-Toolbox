# Kaorios Toolbox 2.0.6.2 — Hướng dẫn Trình vá ROM Tự động (Android 13–17)

[English](Patcher_Guide_2.0.6.2.md) | [Hướng dẫn Vá Thủ công](Patch_Guide_2.0.6.2_VI.md) | [Tắt Secure Flag](Disable_Secure_Flag_VI.md) | [CorePatch](CorePatch_VI.md) | [Hướng dẫn Rust CLI](Rust_CLI_Guide_VI.md) | [README Gốc](../../README.md)

Tài liệu kỹ thuật này hướng dẫn quy trình tự động hóa vá bytecode smali do Kaorios Toolbox cung cấp cho các bản tùy biến ROM từ Android 13 đến Android 17. Nội dung bao gồm công cụ vá viết bằng Python (`script/kaorios_patcher_a17.py`), cơ chế tự động khám phá phân đoạn sở hữu multi-DEX, các chế độ vận hành, cú pháp lệnh CLI, bảng mã chẩn đoán trạng thái, quy trình đóng gói JAR tự động, và bộ công cụ xác minh tái trích xuất sau khi biên dịch.

---

## 1. Nguyên Tắc Kiến Trúc & Các Tiền Điều Kiện Quan Trọng

### 1.1 Tự Động Khám Phá Multi-DEX & Chỉnh Sửa Chọn Lọc
- **Không Mặc Định Vị Trí Phân Đoạn:** Các lớp framework của hệ thống được phân bổ ngẫu nhiên trên nhiều phân đoạn multi-DEX (`classes.dex`, `classes2.dex`, ..., `classesN.dex`). Trình vá tự động sẽ quét toàn bộ cây thư mục đích, xác định chính xác thư mục phân đoạn DEX duy nhất sở hữu lớp mục tiêu, và chỉ chỉnh sửa phân đoạn sở hữu đó.
- **Chèn Lệnh Phẫu Thuật Thay Vì Ghi Đè Toàn Bộ Lớp:** Công cụ thực hiện các thao tác chèn lệnh chính xác ở cấp độ bytecode dựa trên so khớp mẫu opcode nghiêm ngặt và phân tích thanh ghi. Công cụ tuyệt đối không bao giờ thay thế toàn bộ tệp lớp của ROM gốc bằng một tệp mẫu bên ngoài.
- **Bảo Vệ Nạp Payload:** Các lớp thuộc payload (`android/security/kaorios/*`) chỉ được đưa vào duy nhất `framework.jar`. Trình vá cam kết không bao giờ xóa hoặc thay đổi các lớp của nhà sản xuất (OEM) cùng nằm trong gói `android/security/` hoặc các gói lân cận.

### 1.2 Ngăn Ngừa Bootloop: Phục Hồi `SettingsProvider.apk`
- **Sự Lỗi Thời Của Các Hook Cài Đặt:** Các phiên bản hướng dẫn trước đây (v2.0.6.0 và bản chụp payload v2.0.6.1 ban đầu) yêu cầu sửa đổi `SettingsProvider.apk` để gọi các hàm cài đặt của `KaoriosHook` (`filterSettingsCall`, `filterSettingsQueryResult`, v.v.). Trong mã nguồn đã kiểm toán hiện nay, các phương thức này đã bị loại bỏ hoàn toàn.
- **Nguy Cơ Bootloop Nghiêm Trọng:** Nếu chạy hệ điều hành với một tệp `SettingsProvider.apk` đã bị vá theo hướng dẫn cũ, hệ thống sẽ gặp lỗi `java.lang.NoSuchMethodError` ngay khi khởi tạo system server, dẫn đến hiện tượng bootloop liên tục.
- **Yêu Cầu Bắt Buộc:** Nếu bản ROM mục tiêu từng được vá bằng phiên bản Kaorios trước đó, bạn **bắt buộc phải khôi phục tệp `SettingsProvider.apk` gốc** từ firmware xuất xưởng ban đầu trước khi chạy trình vá tự động này.

### 1.3 Các Hook Keystore Đã Bị Loại Bỏ (Trạng Thái Mã Nguồn Hiện Tại)
- Trình vá chủ động bỏ qua việc vá `AndroidKeyStoreKeyPairGeneratorSpi` và `AndroidKeyStoreSpi`.
- Trong mã nguồn hiện tại, các phương thức tương ứng trong `KaoriosHook` chỉ là các hàm giữ chỗ rỗng (`CertificateChainIfNeeded` trả về nguyên bản chứng chỉ đầu vào; `initGenerateSoftwareKeyPair`, `OnGetKeyEntry`, và `generateKey` trả về `null`; `Remove` là hàm trống).
- Do các phương thức trợ giúp này chỉ là stub rỗng, trình vá không can thiệp vào các lớp keystore; các lớp Keystore trong ROM gốc hoàn toàn được giữ nguyên bản.

### 1.4 Bằng Chứng Bản Chụp Lịch Sử & Đóng Gói Cục Bộ
- **Bằng Chứng Bản Chụp Lịch Sử:**
  - Một bản chụp lịch sử v2.0.6.1 ghi nhận kích thước 171.100 byte với mã băm SHA-256: `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`.
  - Một bản chụp lịch sử trước đó ghi nhận kích thước 858.636 byte với SHA-256 `94848e18…` (trích dẫn lịch sử rút gọn, không phải mã băm kiểm tra được hiện tại).
  - Các giá trị này đại diện cho mốc đo lường bằng chứng lịch sử; chúng **không** phải là cam kết rằng các tệp nhị phân đó hiện đang có sẵn trên mục phát hành GitHub hay khớp với mã nguồn hiện tại.
- Bản phát hành `v2.0.6.2` được tạo bởi workflow công khai `build-toolbox.yml` từ nhánh `Toolbox-Framework`, đính kèm `KaoriosToolbox-release.apk` đã ký, `KaoriosFramework-release.apk`, `classes.dex`, các thư viện native `libkaoripif` và tệp `SHA256SUMS`. Hãy kiểm tra tag, danh sách tệp và mã băm trên trang phát hành trước khi flash. Để đóng gói kho lưu trữ patcher từ mã nguồn công khai đã kiểm toán, hãy chạy `python3 -I script/package_patcher_v2062.py /path/to/new-patcher.zip` từ thư mục gốc của kho lưu trữ công khai, sau đó tự tính toán mã băm SHA-256 cho tệp nén mà bạn tạo ra.

### 1.5 Cổng Tham Số Hóa Chuỗi Công Cụ (Toolchain Parameterization Gate)
- Tính tương thích với Android 13–17 đề cập đến cấu trúc điểm chèn (hook layout), không đồng nghĩa với việc hỗ trợ mọi phiên bản bytecode DEX.
- Đối với trường hợp DEX 040 được cung cấp, quy trình tạo tệp gọi `--api 37 --smali-api 34`. Baksmali/smali phiên bản 3.0.8 không ánh xạ API 37 trong bảng tra cứu mã lệnh (`IllegalArgumentException: dexVersion must be within [0, 999]`). Do đó, tham số API phân tích và API đóng gói phải được tách biệt.
- Sự kết hợp này không ngầm định hỗ trợ cho DEX 041, container DEX, hay CompactDex. Hãy kiểm tra định dạng DEX đầu vào trước khi tiến hành biên dịch.

---

## 2. Các Chế Độ Vận Hành & Cú Pháp Lệnh CLI

Tập lệnh vá được thực thi thông qua Python 3:

```bash
python3 -I script/kaorios_patcher_a17.py [TÙY_CHỌN]
```

### 2.1 Ma Trận Chế Độ (Mode Matrix)

| Cờ Chế Độ | Tên Định Danh | Tệp Mục Tiêu | Mô Tả Chức Năng |
|---|---|---|---|
| `--mode 1` | `core` (Mặc định) | `framework.jar`, `services.jar` | Chèn các hook bắt buộc trong framework (khởi tạo Context, gắn kết tiến trình, bảo vệ trạng thái ADB/Dev) và services (khởi tạo SystemServer, ẩn danh sách ứng dụng, chặn thông tin cài đặt có điều kiện). |
| `--mode 2` | `build` | `framework.jar` | Giả mạo trường Build trên Android 17. Gỡ bỏ từ khóa truy cập `final` và gán giá trị khởi tạo hằng chuỗi về null trong `Build.smali` và `Build$VERSION.smali`. |
| `--mode 3` | `all` | `framework.jar`, `services.jar` | Thực thi đồng thời cả Chế độ 1 (Core) và Chế độ 2 (Giả mạo trường Build) trong một lượt xử lý duy nhất. |

### 2.2 Các Tham Số CLI

- `--framework-dir <đường_dẫn>`: Đường dẫn tới thư mục gốc chứa `framework.jar` đã dịch ngược (chứa một hoặc nhiều thư mục con `smali*`).
- `--services-dir <đường_dẫn>`: Đường dẫn tới thư mục gốc chứa `services.jar` đã dịch ngược (chứa một hoặc nhiều thư mục con `smali*`).
- `--payload-smali <đường_dẫn>`: (Khuyên dùng) Đường dẫn tới thư mục chứa payload DEX đã dịch ngược. Khi cung cấp, trình vá sẽ kiểm tra tính khớp nối của mô tả hàm trước khi sửa đổi tệp.
- `--dry-run`: Chạy thử nghiệm quét tìm và so khớp mẫu mà không thực sự ghi thay đổi xuống đĩa.
- `--strict`: Dừng thực thi ngay lập tức với mã lỗi nếu bất kỳ hook bắt buộc nào không khớp mẫu.
- `--verbose`: Xuất nhật ký chi tiết về việc cấp phát thanh ghi và chẩn đoán khớp lệnh.

### 2.3 Ví Dụ Lệnh Thực Thi

#### Vá Cốt Lõi Tiêu Chuẩn (Chế độ 1):
```bash
python3 -I script/kaorios_patcher_a17.py \
    --mode 1 \
    --framework-dir /tmp/work/framework_smali \
    --services-dir /tmp/work/services_smali \
    --payload-smali /tmp/work/payload_smali
```

#### Vá Toàn Diện Android 17 (Chế độ 3, Cốt lõi + Giả mạo Build):
```bash
python3 -I script/kaorios_patcher_a17.py \
    --mode 3 \
    --framework-dir /tmp/work/framework_smali \
    --services-dir /tmp/work/services_smali \
    --payload-smali /tmp/work/payload_smali \
    --strict
```

---

## 3. Danh Mục Hook Bắt Buộc (Required Caller Hook Manifest)

Trình vá thực thi đúng các đặc tả điểm chèn sau:

### 3.1 Các Hook trong Framework (`framework.jar`)
1. **`Landroid/app/Instrumentation;` (`newApplication`):**
   - Chèn `invoke-static {context_reg}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V` ngay sau lệnh gốc `invoke-virtual {app, context}, Landroid/app/Application;->attach(Landroid/content/Context;)V`.
   - Hỗ trợ cả hai nạp chồng tĩnh (`p1`) và thể hiện (`p3`).
2. **`Landroid/app/ActivityThread;` (`handleBindApplication`):**
   - Chèn `invoke-static {app_bind_data_reg}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V` ngay sau lệnh gán gốc `iput-object` vào trường `mBoundApplication`.
3. **`Landroid/provider/Settings$NameValueCache;` (`getStringForUser`):**
   - Chèn hook kiểm tra đầu phương thức gọi `KaoriosHook.shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z`.
   - Nếu trả về true, chặn giá trị tùy chọn nhà phát triển/trạng thái ADB bằng cách trả về chuỗi `"0"`.

### 3.2 Các Hook trong Services (`services.jar`)
1. **`Lcom/android/server/SystemServer;` (`run`):**
   - Chèn `invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V` ngay trước lệnh gọi vòng lặp chính `Looper.loop()V`.
2. **`Lcom/android/server/pm/ComputerEngine;` (`shouldFilterApplication`):**
   - Chèn hook đầu phương thức gọi `KaoriosHook.shouldHideAppListForCaller(ILjava/lang/String;I)Z` với UID người gọi và tên gói mục tiêu.
   - Nếu trả về true, hàm sẽ trả về `true` (đã bị lọc).
3. **`Lcom/android/server/pm/ComputerEngine;` (Chặn Thông Tin Trình Cài Đặt Có Điều Kiện):**
   - Chặn `getInstallerPackageName` và `getInstallSourceInfo` gọi qua `KaoriosHook.filterInstallerPackageName`.
   - Chỉ áp dụng nếu cả hai phương thức cùng tồn tại đồng thời như một cặp được hỗ trợ; bỏ qua nếu cả hai đều vắng mặt.

---

## 4. Bảng Chẩn Đoán Trạng Thái Tiền Kiểm Tra (Preflight Status Vocabulary)

Trong quá trình thực thi, trình vá xuất ra các chỉ báo trạng thái chuẩn hóa cho từng vị trí hook:

| Mã Trạng Thái | Mức Độ | Mô Tả & Hành Động Cần Thực Hiện |
|---|---|---|
| `MATCHED` | Thông tin | Khớp mẫu thành công. Bản vá sẽ được áp dụng. |
| `PATCHED` | Thành công | Bytecode đã được sửa đổi và xác minh thành công trên đĩa. |
| `ALREADY_PATCHED` | Chú ý | Lệnh hook Kaorios đã tồn tại sẵn tại vị trí đích. Không cần sửa; an toàn để tiếp tục. |
| `SKIPPED` | Chú ý | Tính năng mục tiêu là tùy chọn hoặc không hoạt động theo điều kiện (ví dụ: các API đọc thông tin cài đặt không có trong ComputerEngine). |
| `UNSUPPORTED` | Cảnh báo | Phương thức mục tiêu có tồn tại nhưng mẫu byte hoặc cấu trúc thanh ghi khác biệt so với khuôn mẫu chuẩn (ví dụ: framework tùy biến sâu của OEM). Cần kiểm tra thủ công. |
| `FAILED` | Lỗi | Không thể khớp hook bắt buộc, lỗi cấp phát thanh ghi, hoặc lỗi ghi đĩa. Trình vá sẽ dừng lại nếu dùng cờ `--strict`. |

### Các Tình Huống Chẩn Đoán Phổ Biến
- **Tràn Thanh Ghi (Register Exhaustion):** Nếu phương thức mục tiêu sử dụng hết toàn bộ 16 thanh ghi (`v0`–`v15`) mà không còn khoảng trống, trình vá sẽ tự động chuyển sang cấp phát dải mở rộng (`invoke-static/range`) hoặc cấp phát thêm thanh ghi cục bộ và tính toán lại độ lệch tham số.
- **Không Tương Thích với Mã OEM:** Trên các bản tùy biến sâu của nhà sản xuất (MIUI/HyperOS, ColorOS, OneUI), chữ ký phương thức trong `ComputerEngine` hoặc `ActivityThread` có thể chứa thêm tham số hoặc lớp bao bọc riêng. Nếu trạng thái báo `UNSUPPORTED`, hãy tham khảo [Hướng dẫn Vá Thủ công](Patch_Guide_2.0.6.2_VI.md) để điều chỉnh phù hợp.

---

## 5. Tự Động Hóa Toàn Diện Quy Trình Tệp JAR (`patch-framework-a17-artifact.sh`)

Đối với các bản dựng ROM chính thức, tập lệnh tự động hóa `patch-framework-a17-artifact.sh` điều phối việc giải nén, vá, biên dịch lại và đóng gói trong một môi trường tạm sạch sẽ:

```bash
sh script/patch-framework-a17-artifact.sh \
    --stock-framework /path/to/stock/framework.jar \
    --stock-services /path/to/stock/services.jar \
    --payload-dex /path/to/payload/classes.dex \
    --output-dir /path/to/output_jars \
    --smali-api 34 \
    --api 37
```

### Các Bất Biến trong Quy Trình:
1. **Không Gian Làm Việc Cách Ly:** Mọi thao tác dịch ngược và biên dịch đều diễn ra trong một thư mục tạm biệt lập (`/tmp/kaorios_stage_XXXXXX`). Tệp gốc đầu vào được bảo vệ ở chế độ chỉ đọc.
2. **Biên Dịch Chọn Lọc:** Chỉ những phân đoạn DEX thực sự có thay đổi mới được biên dịch lại bằng smali. Các phân đoạn không đổi được sao chép nguyên vẹn từ tệp gốc, tránh biến đổi bytecode không cần thiết.
3. **Kiểm Tra Tính Toàn Vẹn của Tệp Nén:** Tệp JAR ứng viên sau khi đóng gói được kiểm tra bằng lệnh `unzip -tq` để đảm bảo không bị hỏng cấu trúc trước khi xuất sang `--output-dir`.

---

## 6. Bộ Công Cụ Xác Minh Tái Trích Xuất Sau Khi Vá

Tuyệt đối không nạp tệp JAR đã vá lên thiết bị mà chưa chạy bộ công cụ xác minh trên một **bản ứng viên được tái trích xuất**:

```bash
# 1. Trích xuất tệp JAR ứng viên vào thư mục tạm mới
mkdir -p /tmp/verify_framework
unzip -q /path/to/output_jars/framework.jar 'classes*.dex' -d /tmp/verify_framework/dex/
java -jar baksmali.jar disassemble /tmp/verify_framework/dex/classes.dex --api 34 -o /tmp/verify_framework/smali/

# 2. Xác minh các caller hook trong framework
python3 -I script/verify-framework-a17-hooks.py /tmp/verify_framework/smali --caller-only

# 3. Xác minh các caller hook trong services
python3 -I script/verify-services-a17-hooks.py /tmp/verify_services/smali
python3 -I script/verify-systemserver-a17-hooks.py /tmp/verify_services/smali

# 4. Xác minh tính nhất quán của ABI Mặt tiền đối với payload đã dịch ngược
python3 -I script/verify-payload-abi.py /tmp/verify_framework/smali --payload-smali /path/to/payload_smali
python3 -I script/verify-payload-abi.py /tmp/verify_services/smali --payload-smali /path/to/payload_smali
```

---

## 7. Ranh Giới Bằng Chứng (Evidence Boundary)

- **Tự Động Hóa & Kiểm Tra Tĩnh trên Host:** Trình vá tự động và các tập lệnh xác minh chỉ chứng minh tính hợp lệ về mặt cú pháp, tính tương thích của opcode, sự hợp lệ của mã hóa thanh ghi, và tính nhất quán của các mô tả hàm trên máy trạm lập trình.
- **Ranh Giới Thiết Bị Vật Lý & Chứng Thực:** Một lượt chạy tự động hoàn hảo và các công cụ xác minh vượt qua **không** đảm bảo rằng thiết bị cụ thể sẽ khởi động mà không sập nguồn, không chứng minh quyền hạn thời gian chạy cho phép gắn kết dịch vụ, và không đảm bảo kết quả kiểm tra Google Play Integrity (`MEETS_DEVICE_INTEGRITY`) sẽ được cấp. Cần phải thử nghiệm trực tiếp trên thiết bị phần cứng thật để xác nhận khả năng vận hành đầy đủ.
