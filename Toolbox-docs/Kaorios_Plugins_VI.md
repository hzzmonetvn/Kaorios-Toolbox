# Plugins và Kaorios Helper

Mở **Tools → Plugins** để xem kết nối Kaorios Framework và kiểm tra các module hỗ trợ.

## Kiểm tra module

1. Bấm **Kiểm tra module**.
2. Nếu trình quản lý root hỏi quyền, cấp root cho Toolbox.
3. Xem trạng thái từng module. Khi cài, cập nhật, bật, tắt hoặc gỡ module, dùng Magisk, KernelSU hoặc APatch.
4. Khởi động lại nếu có thay đổi cần áp dụng, rồi quay lại Plugins và kiểm tra lần nữa.

| Trạng thái | Cách xử lý |
|---|---|
| Chưa cài | Module chưa có trong danh sách cài đặt hiện tại. Nếu đang chờ cài, khởi động lại để áp dụng. |
| Đã cài, đang bật | Module đang bật trong trình quản lý root. Trạng thái này chưa xác nhận hook đang chạy. |
| Đang tắt | Bật trong trình quản lý root rồi khởi động lại. |
| Đang chờ gỡ | Khởi động lại để hoàn tất gỡ. |
| Đang chờ cài hoặc cập nhật | Khởi động lại để áp dụng. Phiên bản chờ áp dụng được hiển thị riêng với phiên bản đang cài. |
| Không đọc được thư mục module | Kiểm tra quyền root rồi bấm kiểm tra lại. |

Toolbox hiện nhận diện Kaorios Helper, HMA-OSS, COPG và Tricky Store / TEE Simulator RS. TEE Simulator RS dùng cùng ID module với Tricky Store; dòng chung này không xác định module nào đang hoạt động.

Khi Helper đã cài, bấm **Mở manager HMA** để cấu hình HMA trong manager đi kèm. Nếu chưa có manager, Plugins báo để bạn cài lại cùng module. TEE của Helper được bật/tắt bằng lệnh trong [hướng dẫn Helper](../Kaorios-Helper/README.md); Plugins chưa có trình sửa cấu hình TEE.

## Helper hiện đến đâu?

Bản mới **0.2.0 Zygisk/HMA**: tải [Kaorios-Helper-Zygisk-7](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/runs/37767798839/artifacts/11547145932), lấy ZIP `Kaorios-Helper-0.2.0-zygisk-experimental.zip` bên trong, flash rồi reboot. ZIP này không chứa runtime TEE hay file policy SELinux. Magisk dùng Zygisk tích hợp hoặc một runtime ngoài; KernelSU/APatch cần runtime Zygisk tương thích. Xem [cách cài và kiểm tra](../Kaorios-Helper/README.md).

Bản đã kiểm tra dùng source `81e381f6179e78c8db6f0eba6a93d419c2afecc3`; ZIP flash có SHA-256 `e6da83f564f69c48aa55cc9c67e27add10ca0c4055d0140e63efc3ef79de346c`. Build CI, 32 test Helper, checksum, chữ ký manager khớp runtime và kiểm tra installer trên host đã pass. Artifact có source tương ứng và license đi kèm. Chưa có kết quả boot/hook trên máy thật.

Nếu nâng từ Helper/HMA cũ, export cấu hình trong manager trước; bản mới dùng thư mục HMA riêng, giữ dữ liệu cũ và nhập lại bằng Import. Manager phải đi cùng runtime của cùng build.

Bản combined **HMA + TEE Simulator RS**, arm64 / Android 12 trở lên, vẫn có riêng tại [Kaorios-Helper-experimental-7](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/runs/37767798839/artifacts/11545692382), cùng source `81e381f6179e78c8db6f0eba6a93d419c2afecc3`. ZIP flash có SHA-256 `948cc6182971b5239506c433e9511b30bf35aa05e2e598712d8b6581ecd2ef8e`. Artifact có ZIP flash, source và SHA256SUMS; không phải APK Toolbox. Xem [cách cài và dùng](../Kaorios-Helper/README.md).

HMA chạy qua Zygisk. Trong bản combined, TEE chạy bằng daemon riêng, mặc định tắt ở lần cài đầu, không kèm keybox. Tắt daemon TEE vẫn giữ policy SELinux của module; muốn bỏ policy cần tắt/gỡ Helper rồi khởi động lại. Helper không patch SettingsProvider hay framework/services của ROM. Build CI và kiểm tra artifact đã pass ở [37767798839](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/runs/37767798839); chưa kiểm chứng boot/hook trên máy thật.

COPG chưa tích hợp vì source native công khai còn thiếu. Giữ license và copyright upstream, đồng thời cung cấp source snapshot với artifact. Xem [rà soát giấy phép](Kaorios_Helper_Licensing_VI.md).

## Dùng Toolbox khi chưa patch Framework

App vẫn mở được; cài đặt app và Payload Dumper vẫn dùng được. Các trang cấu hình cần API Kaorios Framework sẽ dẫn về Plugins khi chưa kết nối Framework.

Cài một module Zygisk hoặc dùng ROM có sẵn tính năng integrity chưa tự tạo API Kaorios Framework cho Toolbox. Adapter Helper và adapter ROM vẫn đang được phát triển. Không dùng trạng thái “đã cài module” để kết luận Toolbox điều khiển được tính năng đó.
