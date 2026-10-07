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

Cấu hình HMA bằng trình quản lý HMA-OSS; cấu hình TEE bằng trình quản lý của module tương ứng. Plugins chưa thay thế các trình quản lý đó.

## Helper hiện đến đâu?

**Chưa có ZIP Kaorios Helper để cài.** Không có link tải Helper chính thức ở thời điểm cập nhật tài liệu này (2026-10-07).

Đã kiểm tra nguồn và giấy phép của [HMA-OSS](https://github.com/frknkrc44/HMA-OSS), [TEE Simulator RS](https://github.com/Enginex0/TEESimulator-RS) và phần mã công khai của [COPG](https://github.com/AlirezaParsi/COPG). COPG công khai chưa có source native mà script build yêu cầu, nên chưa thể build bản gộp đủ cả ba từ source. Xem [rà soát giấy phép Helper](Kaorios_Helper_Licensing_VI.md).

Source [Helper HMA + TEE](../Kaorios-Helper/README.md) hiện đã có installer, quản lý daemon TEE theo lựa chọn của người dùng và workflow build riêng. ZIP còn chờ build/kiểm tra CI; chưa có kiểm chứng trên máy thật. COPG chưa tích hợp. Ghép các ZIP hiện có lại với nhau chưa tạo thành một module hoạt động.

## Dùng Toolbox khi chưa patch Framework

App vẫn mở được; cài đặt app và Payload Dumper vẫn dùng được. Các trang cấu hình cần API Kaorios Framework sẽ dẫn về Plugins khi chưa kết nối Framework.

Cài một module Zygisk hoặc dùng ROM có sẵn tính năng integrity chưa tự tạo API Kaorios Framework cho Toolbox. Adapter Helper và adapter ROM vẫn đang được phát triển. Không dùng trạng thái “đã cài module” để kết luận Toolbox điều khiển được tính năng đó.
