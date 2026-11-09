# Hướng Dẫn Sử Dụng Kaorios Toolbox — Rust CLI & TUI Độc Lập

[English](Rust_CLI_Guide.md) | [Hướng Dẫn Patch Bằng Tay](Patch_Guide_2.0.6.1_VI.md) | [Root README](../../README.md)

`kaorios-toolbox` là công cụ thực thi nhị phân AArch64 độc lập, nhẹ và được viết hoàn toàn bằng Rust thuần. Công cụ cho phép người dùng nâng cao, nhà phát triển ROM và các môi trường không giao diện đồ họa (`adb shell`, Termux, chroot, và script khởi động hệ thống) kiểm tra, thiết lập và vận hành các tính năng giả lập Play Integrity, quản lý chứng chỉ Keybox và các tính năng của Kaorios framework mà không cần mở ứng dụng Android.

---

## 1. Yêu Cầu & Cài Đặt

### Yêu Cầu Tiên Quyết
- **Kiến trúc phần cứng:** Thiết bị hoặc máy ảo Android ARM64 (AArch64).
- **Quyền Root:** Cần thiết để ghi system properties, đọc đường dẫn Keybox được bảo vệ, sửa `Settings.Global` hoặc bật/tắt các hook của framework (`su` qua KernelSU, Magisk hoặc APatch).
- **Vị trí file thực thi:** File nhị phân dựng sẵn nằm tại [`bin/kaorios-toolbox/kaorios-toolbox`](../../bin/kaorios-toolbox/README.md).

### Chạy qua `adb shell`
```bash
adb push bin/kaorios-toolbox/kaorios-toolbox /data/local/tmp/
adb shell
su
chmod 0755 /data/local/tmp/kaorios-toolbox
/data/local/tmp/kaorios-toolbox doctor
```

### Cài đặt trong Termux (Yêu cầu Root)
```bash
su
cp /data/local/tmp/kaorios-toolbox /data/data/com.termux/files/usr/bin/kaorios-toolbox
chmod 0755 /data/data/com.termux/files/usr/bin/kaorios-toolbox
kaorios-toolbox menu
```

### Tích hợp vĩnh viễn vào hệ thống
Để `kaorios-toolbox` luôn có mặt trong biến môi trường PATH của hệ thống sau mỗi lần khởi động:
```bash
su
mount -o remount,rw /system
cp /data/local/tmp/kaorios-toolbox /system/bin/kaorios-toolbox
chmod 0755 /system/bin/kaorios-toolbox
chown 0:2000 /system/bin/kaorios-toolbox
chcon u:object_r:system_file:s0 /system/bin/kaorios-toolbox
```

---

## 2. Giao Diện Terminal Trực Quan (TUI)

Khởi động bảng điều khiển menu ANSI tương tác bằng lệnh:
```bash
kaorios-toolbox tui
# hoặc
kaorios-toolbox menu
```

### Các Tính Năng Nổi Bật Của TUI:
- **Theo dõi trạng thái thời gian thực:** Hiển thị trực quan trình quản lý root đang hoạt động (KernelSU, Magisk, APatch), trạng thái SELinux và sự hiện diện của hook framework.
- **Trạng thái Keybox & Xác thực:** Hiển thị profile Keybox đang kích hoạt (`Hardware OEM` hay `Remote Provisioned`) cùng chế độ xác thực (`gen`, `leaf`, `auto`).
- **Phím tắt chuyển đổi nhanh:** Bật/tắt nhanh tính năng gỡ bỏ chặn chụp/quay màn hình (`FLAG_SECURE`) và chế độ ép buộc Always Strong.
- **Chuyển đổi profile tức thì:** Đổi nhanh cấu hình Keybox giữa `hw` và `rkp`.
- **Kiểm tra chẩn đoán:** Chạy toàn bộ bài kiểm tra tính toàn vẹn hệ thống chỉ với một phím bấm.

---

## 3. Danh Mục Lệnh CLI

### 3.1 `doctor` — Chẩn Đoán Hệ Thống
Thực hiện kiểm tra toàn diện quyền root, chính sách SELinux, hook framework, quyền truy cập `Settings.Global` và tính hợp lệ của file XML Keybox:
```bash
kaorios-toolbox doctor
```

### 3.2 `pif` — Cấu Hình Play Integrity Fix
Kiểm tra và thiết lập các thuộc tính giả lập fingerprint và thông tin build cho Play Integrity:
```bash
# Xem chuỗi JSON cấu hình PIF đang hoạt động
kaorios-toolbox pif get

# Thiết lập một giá trị thuộc tính cụ thể
kaorios-toolbox pif set MANUFACTURER Google
kaorios-toolbox pif set MODEL "Pixel 9 Pro"
kaorios-toolbox pif set PRODUCT "komodo"

# Đảo cờ boolean giả lập (spoofBuild, spoofProps, spoofProvider)
kaorios-toolbox pif toggle spoofBuild
kaorios-toolbox pif toggle spoofProps

# Cập nhật và đồng bộ ngày bản vá bảo mật giữa Settings.Global và JSON PIF
kaorios-toolbox pif patch-security 2026-10-05

# Xuất cấu hình đang hoạt động ra file JSON
kaorios-toolbox pif export /sdcard/pif.json

# Nhập cấu hình từ file JSON
kaorios-toolbox pif import /sdcard/pif.json
```

### 3.3 `keybox` — Hồ Sơ Keybox & Chế Độ Xác Thực
Quản lý các profile Keybox (HW và RKP), chuỗi chứng chỉ xác thực và kiểm tra tính toàn vẹn của khóa:
```bash
# Xem trạng thái profile, chế độ xác thực và file XML
kaorios-toolbox keybox status

# Chuyển đổi profile Keybox đang kích hoạt (hw hoặc rkp)
kaorios-toolbox keybox profile hw
kaorios-toolbox keybox profile rkp

# Đặt chế độ xác thực mặc định cho các ứng dụng chưa cấu hình (gen, leaf, auto)
kaorios-toolbox keybox mode gen
kaorios-toolbox keybox mode leaf

# Nhập file Keybox.xml cho profile hiện tại
kaorios-toolbox keybox import /sdcard/Keybox.xml

# Kích hoạt tải tự động Keybox phù hợp với profile đang chọn
kaorios-toolbox keybox download
```

### 3.4 `hide` — Ẩn Ứng Dụng & Trạng Thái Developer
Quản lý danh sách ứng dụng bị ẩn và xuất file cấu hình tương thích với HMA:
```bash
# Liệt kê tất cả các gói ứng dụng đang bị ẩn
kaorios-toolbox hide list

# Thêm một gói ứng dụng vào danh sách ẩn
kaorios-toolbox hide add com.google.android.gms

# Xóa gói ứng dụng khỏi danh sách ẩn
kaorios-toolbox hide remove com.google.android.gms

# Xuất mẫu cấu hình tương thích định dạng HMA-OSS
kaorios-toolbox hide export-hma /sdcard/hma_config.json
```

### 3.5 `features` — Bật/Tắt Tính Năng Framework Cấp Thấp
Bật hoặc tắt các hook cấp hệ thống của Kaorios framework:
```bash
# Xem trạng thái các tính năng framework
kaorios-toolbox features status

# Bật/tắt gỡ bỏ chặn chụp và quay màn hình (FLAG_SECURE)
kaorios-toolbox features secure-flag toggle
kaorios-toolbox features secure-flag on
kaorios-toolbox features secure-flag off

# Bật/tắt ép buộc Always Strong attestation
kaorios-toolbox features always-strong toggle
kaorios-toolbox features always-strong on
kaorios-toolbox features always-strong off
```

### 3.6 `spoof` — Giả Lập Ứng Dụng & Trò Chơi
Cấu hình các tính năng cho từng ứng dụng, bao gồm sao lưu Google Photos và profile game tốc độ khung hình cao:
```bash
# Xem trạng thái các tính năng giả lập
kaorios-toolbox spoof status

# Bật/tắt sao lưu Google Photos chất lượng gốc không giới hạn
kaorios-toolbox spoof photos on
kaorios-toolbox spoof photos off

# Bật/tắt giả lập chứng nhận Netflix HDR
kaorios-toolbox spoof netflix on

# Xem danh sách quy tắc Game Props (120 FPS) đang kích hoạt
kaorios-toolbox spoof gameprops-list

# Xóa một quy tắc Game Props cụ thể
kaorios-toolbox spoof gameprops-remove com.tencent.tmgp.pubgmhd
```

### 3.7 `payload` — Trích Xuất Phân Vùng OTA Streaming
Kiểm tra và trích xuất phân vùng trực tiếp từ file cập nhật OTA (`payload.bin`) ngay trên thiết bị:
```bash
# Xem danh sách và kích thước phân vùng bên trong payload.bin
kaorios-toolbox payload info /sdcard/payload.bin

# Trích xuất phân vùng cụ thể mà không cần giải nén toàn bộ gói cập nhật
kaorios-toolbox payload dump /sdcard/payload.bin boot /sdcard/boot.img
kaorios-toolbox payload dump /sdcard/payload.bin init_boot /sdcard/init_boot.img
```

---

## 4. Ranh Giới Bằng Chứng (Evidence Boundary)

`kaorios-toolbox` là file thực thi nhị phân được đóng gói sẵn. Các lệnh và cú pháp được mô tả trong tài liệu này thể hiện chức năng đã được kiểm chứng của công cụ độc lập. Việc sử dụng `kaorios-toolbox` trên thiết bị Android thực tế đòi hỏi quyền root và cấu hình kernel/SELinux tương thích. Việc thực thi các lệnh CLI làm thay đổi dữ liệu trên bộ nhớ thiết bị và thuộc tính hệ thống; điều này không thay thế cho việc luôn chuẩn bị sẵn bản sao lưu firmware dự phòng.
