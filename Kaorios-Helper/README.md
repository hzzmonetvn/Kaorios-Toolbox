# Kaorios Helper — 0.1.0 experimental

Một module gồm HMA-OSS chạy bằng Zygisk và TEE Simulator RS chạy bằng daemon riêng. COPG chưa tích hợp vì source native công khai còn thiếu.

Source và ZIP thử nghiệm được cung cấp trong artifact **Kaorios-Helper-experimental** của [workflow Build Kaorios Helper](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/workflows/build-helper.yml). Mở một lần chạy thành công rồi tải artifact; bên trong có ZIP để flash, source và checksum. Đây chưa phải bản release production. Đây là bản **arm64, Android 12 trở lên**. Build/kiểm tra host không xác nhận boot hoặc hook trên máy thật. Module giữ nguyên SettingsProvider và framework/services của ROM; không patch APK hệ thống. Module chưa cung cấp API Kaorios Framework cho Toolbox. Toolbox hiện nhận diện trạng thái cài đặt; cấu hình HMA bằng manager đi kèm.

## Cài và dùng HMA

1. Gỡ module HMA-OSS và Tricky Store/TEE cũ nếu có, rồi khởi động lại. Helper không tự gỡ module hay xóa dữ liệu của bạn.
2. Bật một runtime Zygisk phù hợp với root manager.
3. Cài ZIP bằng Magisk, KernelSU hoặc APatch rồi khởi động lại.
4. Trong Toolbox, mở **Tools → Plugins → Kiểm tra module → Mở manager HMA**. Hoặc bấm **Action** trong trình quản lý root để mở manager đi kèm. App có package `io.github.hzzmonetvn.kaorioshelper.hma`, tách khỏi manager HMA-OSS chính thức.
5. Chọn app cần áp dụng và cấu hình trong manager. Không bật đồng thời HMA Helper và hook HMA Kaorios đã patch trong ROM.

Manager trong artifact CI dùng khóa debug được tạo riêng cho lần build; runtime kiểm tra đúng chữ ký của manager đó. Không cài APK manager từ một build khác. Nếu cập nhật bằng khóa khác, sao lưu cấu hình rồi tự gỡ manager Helper trước khi cài bản mới. Không dùng bản này làm kênh cập nhật production.

## TEE: chỉ chạy khi bạn bật

TEE mặc định tắt ở lần cài đầu. Module không kèm keybox, không đọc hay sao chép keybox của Tricky Store cũ.

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

Khởi động lại sau khi tắt để tháo các hook đã inject. “Supervisor running” chỉ xác nhận process, chưa xác nhận hook sẵn sàng. TEE mô phỏng attestation bằng phần mềm; không bảo đảm Wallet/Play Integrity pass và không tạo trust phần cứng thật.

Helper không cài script khởi động ngoài thư mục module; trạng thái HMA xem trong manager, không lấy trạng thái cũ để đổi mô tả module. Nếu gặp lỗi boot, dùng safe mode của trình quản lý root để tắt module rồi khởi động lại. Gỡ module giữ cấu hình và khóa đã tạo. Không dùng Action của TEE upstream vì chức năng đó xóa persistent keys; Action Helper chỉ mở HMA và in trạng thái.

## Build từ source

Source ghim trong `upstreams.json`; script `tools/prepare_sources.py` áp dụng các thay đổi nhỏ, kiểm tra commit trước khi sửa. Workflow `.github/workflows/build-helper.yml` build HMA và TEE riêng, ghép một ZIP, giữ DEX HMA ở root và DEX TEE trong `tee/`, kiểm tra checksum/ELF và cung cấp source + license cùng artifact.

Yêu cầu JDK 21, Android SDK 36/37, NDK 27.3.13750724, CMake, Rust stable với target `aarch64-linux-android`, cargo-ndk. Không cần source hoặc key ký của Toolbox private. Phần glue mới dùng AGPLv3; upstream giữ license/copyright gốc. Xem [rà giấy phép](../Toolbox-docs/Kaorios_Helper_Licensing_VI.md).

## Kiểm tra

Chạy `python3 -m unittest discover -s Kaorios-Helper/tests -v`: 13 test host pass, gồm kiểm tra installer trước khi gọi `pm`, giữ DEX riêng, checksum, chặn module trùng và lifecycle TEE. Task xuất dependency source/POM đã được kiểm tra bằng Gradle 9.3.1 trên fixture Maven thật. Snapshot Rust đã lọc key mẫu được kiểm tra bằng `cargo check --locked --offline --lib`; checksum vendor vẫn hợp lệ. CI [37632934944](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/runs/37632934944) đã build HMA, TEE và đóng gói ZIP/source/license thành công. Checksum, ZIP, ELF arm64 và kiểm tra không chứa keybox/khóa riêng của artifact đã pass. Các thay đổi sau đó cần lần chạy thành công tương ứng với commit tải về. Chưa có kết quả trên thiết bị thật.

SELinux rule của TEE hiện được ghép vào policy module lúc boot, kể cả khi daemon TEE đang tắt. Tắt TEE không gỡ riêng các quyền này; muốn dừng cả policy Helper, tắt module rồi reboot. Thu hẹp policy vẫn cần kiểm tra trên thiết bị.
