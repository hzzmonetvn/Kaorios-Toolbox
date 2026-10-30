# Hướng dẫn sử dụng Kaorios Toolbox — Rust CLI & TUI Độc Lập

`kaorios-toolbox` là công cụ thực thi nhị phân AArch64 độc lập, nhẹ và được viết hoàn toàn bằng Rust thuần. Công cụ cho phép người dùng nâng cao, nhà phát triển ROM và các môi trường không giao diện (`adb shell`, Termux, chroot, script khởi động hệ thống) kiểm tra, thiết lập và quản lý các tính năng giả lập Play Integrity và Kaorios framework mà không cần mở ứng dụng Android.

---

## 1. Cài đặt & Thực thi

### Chạy qua `adb shell`
```bash
adb push kaorios-toolbox /data/local/tmp/
adb shell
su
chmod +x /data/local/tmp/kaorios-toolbox
/data/local/tmp/kaorios-toolbox doctor
```

### Chạy trong Termux (Yêu cầu Root)
```bash
su
cp /data/local/tmp/kaorios-toolbox /data/data/com.termux/files/usr/bin/kaorios-toolbox
chmod 755 /data/data/com.termux/files/usr/bin/kaorios-toolbox
kaorios-toolbox menu
```

---

## 2. Giao diện Terminal Trực quan (TUI)

Khởi động bảng điều khiển ANSI tương tác bằng lệnh:
```bash
kaorios-toolbox tui
# hoặc
kaorios-toolbox menu
```

Các tính năng trong TUI:
- Theo dõi trạng thái quyền root và cài đặt hook framework thời gian thực.
- Hiển thị profile Keybox đang kích hoạt và chế độ xác thực (attestation mode).
- Bật/tắt nhanh gỡ bỏ hạn chế chụp màn hình `FLAG_SECURE` và xác thực Always Strong.
- Chuyển đổi nhanh giữa profile `Hardware OEM (hw)` và `Remote Provisioned (rkp)`.
- Đồng bộ hóa Keybox và PIF từ xa tức thì theo profile.
- Kiểm tra chẩn đoán toàn diện hệ thống.

---

## 3. Danh mục Lệnh CLI

### `doctor` — Chẩn đoán Hệ thống
Kiểm tra tính toàn vẹn hệ thống, quyền root, SELinux, hook framework, quyền đọc/ghi Settings.Global và dữ liệu Keybox:
```bash
kaorios-toolbox doctor
```

### `pif` — Cấu hình Play Integrity Fix
Quản lý và xem thuộc tính fingerprint / build spoofing của Play Integrity:
```bash
# Xem chuỗi JSON cấu hình PIF hiện tại
kaorios-toolbox pif get

# Thiết lập một thuộc tính cụ thể
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 9 Pro"

# Đảo cờ boolean (spoofBuild, spoofProps, spoofProvider)
kaorios-toolbox pif toggle spoofBuild

# Cập nhật ngày bản vá bảo mật đồng bộ giữa Settings và PIF JSON
kaorios-toolbox pif patch-security 2026-10-05

# Xuất hoặc nhập cấu hình PIF
kaorios-toolbox pif export /sdcard/pif.json
kaorios-toolbox pif import /sdcard/pif.json
```

### `keybox` — Hồ sơ Keybox & Chế độ Xác thực
Quản lý các hồ sơ Keybox (HW và RKP), chế độ xác thực (gen, leaf, auto) và chứng chỉ:
```bash
# Xem trạng thái profile, mode và XML
kaorios-toolbox keybox status

# Chuyển đổi profile kích hoạt (hw hoặc rkp)
kaorios-toolbox keybox profile hw
kaorios-toolbox keybox profile rkp

# Thiết lập chế độ xác thực mặc định (gen, leaf, auto)
kaorios-toolbox keybox mode gen
kaorios-toolbox keybox mode leaf

# Nhập file Keybox.xml cho profile hiện tại
kaorios-toolbox keybox import /sdcard/Keybox.xml

# Tự động tải Keybox phù hợp với profile đang chọn
kaorios-toolbox keybox download
```

### `hide` — Ẩn Ứng dụng & Danh sách Dev
Quản lý danh sách ẩn ứng dụng và xuất cấu hình HMA-OSS:
```bash
# Liệt kê tất cả ứng dụng đang ẩn
kaorios-toolbox hide list

# Thêm ứng dụng vào danh sách ẩn
kaorios-toolbox hide add com.google.android.gms

# Xóa ứng dụng khỏi danh sách ẩn
kaorios-toolbox hide remove com.google.android.gms

# Xuất mẫu cấu hình tương thích HMA-OSS
kaorios-toolbox hide export-hma /sdcard/hma_config.json
```

### `features` — Bật/Tắt Tính năng Framework
Bật hoặc tắt các hook cấp hệ thống của Kaorios framework:
```bash
# Kiểm tra trạng thái các tính năng
kaorios-toolbox features status

# Bật/tắt bỏ chặn chụp và quay màn hình (FLAG_SECURE)
kaorios-toolbox features secure-flag on
kaorios-toolbox features secure-flag off

# Bật/tắt ép buộc Always Strong attestation
kaorios-toolbox features always-strong on
kaorios-toolbox features always-strong off
```

### `spoof` — Giả lập Ứng dụng & Game
Cấu hình sao lưu Google Photos không giới hạn, chứng nhận Netflix HDR và Game Props:
```bash
# Xem trạng thái giả lập ứng dụng
kaorios-toolbox spoof status

# Bật/tắt sao lưu Google Photos không giới hạn
kaorios-toolbox spoof photos on

# Bật/tắt giả lập chứng nhận Netflix HDR
kaorios-toolbox spoof netflix on

# Xem danh sách quy tắc Game Props đã cấu hình
kaorios-toolbox spoof gameprops-list

# Xóa một quy tắc Game Props
kaorios-toolbox spoof gameprops-remove com.tencent.tmgp.pubgmhd
```

### `payload` — Trích xuất Phân vùng OTA Streaming
Kiểm tra và trích xuất phân vùng từ `payload.bin` của gói cập nhật OTA Android trực tiếp trên máy:
```bash
# Xem danh sách phân vùng và kích thước trong payload.bin
kaorios-toolbox payload info /sdcard/payload.bin

# Trích xuất phân vùng cụ thể mà không cần giải nén toàn bộ
kaorios-toolbox payload dump /sdcard/payload.bin boot /sdcard/boot.img
kaorios-toolbox payload dump /sdcard/payload.bin init_boot /sdcard/init_boot.img
```
