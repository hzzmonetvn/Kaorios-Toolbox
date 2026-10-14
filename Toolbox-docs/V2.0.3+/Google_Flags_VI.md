# Google Flags — trạng thái patch và cách xác minh

[English](Google_Flags.md) | [Guide patch tay 2.0.6.1](Patch_Guide_2.0.6.1_VI.md) | [Guide patcher 2.0.6.1](Patcher_Guide_2.0.6.1_VI.md)

**Trạng thái:** Payload **2.0.6.1 được phát hành trước tính năng Google Flags**. Import DEX này hoặc chạy patcher 2.0.6.1 đều không thêm hỗ trợ Google Flags. Hook `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` hiện có dùng cho truy vấn system feature liên quan Unlock GMS Feature; đó **không phải** hook Google Flags. Không kết luận Google Flags hoạt động chỉ vì patch framework/services 2.0.6.1 thành công.

Các đường dẫn gắn nhãn A13–A17 trong template chỉ là tham khảo, **không phải bằng chứng về callsite Google Flags đã được xác minh** trên ROM đích. Guide này cố ý không đưa công thức JAR → class → method để chèn: chưa xác lập được vị trí cho các phiên bản đó. Không chèn hook vào method có tên giống, không dùng lại `hasSystemFeature`, cũng không thay class/DEX stock để ép template khớp.

## Trước khi thử tích hợp ở bản sau

1. Xác định **release payload đã công bố** có nêu rõ tính năng Google Flags và descriptor hàm gọi chính xác. Không mặc định DEX 2.0.6.1 hoặc APK quản lý có sẵn.
2. Trên **bản sao build ROM cụ thể được phép sửa**, lần theo đường đọc flag thực tế và các caller. Ghi JAR owner, DEX split, class, chữ ký method, kiểu giá trị, control flow và đường fallback stock. Nhãn template hoặc tên tương tự chưa đủ. Nếu không chứng minh được callsite duy nhất, tương thích, **dừng**; hiện không có bản patch được hỗ trợ để áp dụng.
3. Chỉ viết công thức patch khi có cặp payload/caller tương thích đã được tài liệu hóa cùng bằng chứng của ROM đích. Kiểm tra mã hóa register, đường return và fallback, rồi build và disassemble lại **archive đã lưu**. Check cấu trúc không chứng minh hành vi flag; phải kiểm thử riêng trên thiết bị thử nghiệm được phép với kế hoạch khôi phục.

Cho tới khi đáp ứng các điều kiện này và có guide theo release, chỉ dùng tài liệu 2.0.6.1 cho những hook tài liệu thực sự bao phủ. Giữ nguyên bản stock; không phát hành, ký hay flash output chưa được xác minh chỉ dựa vào template hoặc kết quả host.
