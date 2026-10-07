# Kaorios Helper — 0.1.0 experimental

Một module gồm HMA-OSS chạy bằng Zygisk và TEE Simulator RS chạy bằng daemon riêng. COPG chưa tích hợp vì source native công khai còn thiếu.

Source bản thử nghiệm đã có; ZIP còn chờ build CI. Đây là bản **arm64, Android 12 trở lên**. Build/kiểm tra host không xác nhận boot hoặc hook trên máy thật. Module chưa cung cấp API Kaorios Framework cho Toolbox. Toolbox hiện nhận diện trạng thái cài đặt; cấu hình HMA bằng manager đi kèm.

## Cài và dùng HMA

1. Gỡ module HMA-OSS và Tricky Store/TEE cũ nếu có, rồi khởi động lại. Helper không tự gỡ module hay xóa dữ liệu của bạn.
2. Bật một runtime Zygisk phù hợp với root manager.
3. Cài ZIP bằng Magisk, KernelSU hoặc APatch rồi khởi động lại.
4. Bấm **Action** trong trình quản lý root để mở manager HMA đi kèm. App có package `io.github.hzzmonetvn.kaorioshelper.hma`, tách khỏi manager HMA-OSS chính thức.
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

Gỡ module giữ cấu hình và khóa đã tạo. Không dùng Action của TEE upstream vì chức năng đó xóa persistent keys; Action Helper chỉ mở HMA và in trạng thái.

## Build từ source

Source ghim trong `upstreams.json`; script `tools/prepare_sources.py` áp dụng các thay đổi nhỏ, kiểm tra commit trước khi sửa. Workflow `.github/workflows/build-helper.yml` build HMA và TEE riêng, ghép một ZIP, giữ DEX HMA ở root và DEX TEE trong `tee/`, kiểm tra checksum/ELF và cung cấp source + license cùng artifact.

Yêu cầu JDK 21, Android SDK 36/37, NDK 27.3.13750724, CMake, Rust stable với target `aarch64-linux-android`, cargo-ndk. Không cần source hoặc key ký của Toolbox private. Phần glue mới dùng AGPLv3; upstream giữ license/copyright gốc. Xem [rà giấy phép](../Toolbox-docs/Kaorios_Helper_Licensing_VI.md).

## Kiểm tra

Chạy `python3 -m unittest discover -s Kaorios-Helper/tests -v`: 11 test host pass, gồm kiểm tra installer trước khi gọi `pm`, giữ DEX riêng, checksum, chặn module trùng và lifecycle TEE. Task xuất dependency source/POM đã được kiểm tra bằng Gradle 9.3.1 trên fixture Maven thật. Native/Android build HMA và TEE đã pass ở CI đầu; bước đóng gói source/license đang được chạy lại sau khi sửa task Gradle. Chưa có kết quả trên thiết bị thật.
