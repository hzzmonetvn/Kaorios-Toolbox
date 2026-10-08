# Kaorios Helper — 0.3.0 experimental

Module hỗ trợ ba profile: **Zygisk/HMA** (chỉ HMA-OSS chạy qua Zygisk), **Combined** (ghép HMA và TEE Simulator RS), và **Full** (ghép HMA, TEE Simulator RS cùng COPG).

Source và ZIP được cung cấp qua [workflow Build Kaorios Helper](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/workflows/build-helper.yml):
- `Kaorios-Helper-Zygisk`: Profile Zygisk (HMA-OSS).
- `Kaorios-Helper-experimental`: Profile Combined (HMA + TEE).
- `Kaorios-Helper-Full`: Profile Full (HMA + COPG + TEE), kèm WebUI và controller hợp nhất.

Đây chưa phải bản release production. Module nhắm tới **arm64, Android 12 trở lên**. Build/kiểm tra host không xác nhận boot hoặc hook trên máy thật. Module giữ nguyên SettingsProvider và framework/services của ROM; không patch APK hệ thống.

## Cài và dùng HMA

1. Nếu đang dùng HMA/Helper cũ, **export cấu hình trong manager trước khi cập nhật**. Bản mới dùng thư mục HMA riêng; cấu hình cũ vẫn được giữ nhưng không tự chuyển. Gỡ module HMA-OSS rồi khởi động lại.
2. Magisk: bật Zygisk tích hợp hoặc dùng một runtime Zygisk ngoài. KernelSU/APatch: cài runtime Zygisk tương thích. Chỉ bật **một** runtime; installer chặn runtime trùng, kể cả hai module cùng tên hiển thị. Runtime đang chờ cài cần reboot để áp dụng.
3. Cài ZIP bằng Magisk, KernelSU hoặc APatch rồi khởi động lại.
4. Trong Toolbox, mở **Tools → Plugins → Kiểm tra module → Mở manager HMA**. Hoặc bấm **Action** trong trình quản lý root để mở manager đi kèm. App có package `io.github.hzzmonetvn.kaorioshelper.hma`, tách khỏi manager HMA-OSS chính thức.
5. Import cấu hình đã export nếu có, rồi chọn app cần áp dụng trong manager. Không bật đồng thời HMA Helper và hook HMA Kaorios đã patch trong ROM.

## TEE Simulator RS (Bản Combined và Full)

Bản Zygisk không chứa TEE; lệnh `enable-tee` sẽ báo không hỗ trợ. Với bản Combined và Full, TEE mặc định tắt ở lần cài đầu. Module không kèm keybox, không đọc hay sao chép keybox của Tricky Store cũ.

1. Đặt keybox của bạn tại `/data/adb/kaorios_helper/tee/keybox.xml`.
2. Thêm package đích vào `/data/adb/kaorios_helper/tee/target.txt`, mỗi dòng một package; file mặc định trống.
3. Trong terminal root, chạy:

```sh
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh enable-tee'
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh status'
```

Để tắt:

```sh
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh disable-tee'
```

Khởi động lại sau khi tắt để tháo các hook đã inject.

## COPG (Chỉ có trong bản Full)

COPG được tích hợp vào binary Zygisk tổng hợp (`libkaorios_helper.so`) cùng controller native (`copg/controller`) và WebUI module. Mặc định tắt ở lần cài đầu; app thông thường không thể tự đọc cấu hình hay bật tính năng này.

1. Yêu cầu chính xác **một** runtime Zygisk ngoài (Zygisk Next / Zygisk Assistant); không dùng Magisk built-in Zygisk cho COPG.
2. Cấu hình danh sách spoofing và targets trong `/data/adb/kaorios_helper/copg/COPG.json` (hoặc cấu hình qua WebUI của module). Cấu hình được bảo vệ bằng quyền `0600`/`0700`.
3. Bật COPG bằng lệnh root:

```sh
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh enable-copg'
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh status'
```

Để tắt:

```sh
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh disable-copg'
```

## Kiểm tra trạng thái runtime

```sh
su -c 'sh /data/adb/modules/kaorios_helper/helperctl.sh status'
```

## Build từ source

Source ghim trong `upstreams.json`. Script `tools/prepare_sources.py` chuẩn bị HMA, `tools/prepare_copg.py` chuẩn bị snapshot COPG và kiểm tra commit sạch. Workflow `.github/workflows/build-helper.yml` điều phối các job build độc lập: `hma`, `tee`, `copg`, và job `package` để tạo các artifact tương ứng.

## Kiểm tra

Chạy test suite host:
```sh
HELPER_COPG_SOURCE=<path-to-copg> python3 -m unittest discover -s Kaorios-Helper/tests -v
```
Gồm 68 test case bao quát routing native, vòng đời controller, SELinux/permissions, bảo vệ dữ liệu nhạy cảm, packaging và tương thích Zygisk.
