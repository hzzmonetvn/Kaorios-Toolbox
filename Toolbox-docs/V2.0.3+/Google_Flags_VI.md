# Google Flags — trạng thái patch và cách xác minh

[English](Google_Flags.md) | [Guide patch tay 2.0.6.1](Patch_Guide_2.0.6.1_VI.md) | [Guide patcher 2.0.6.1](Patcher_Guide_2.0.6.1_VI.md)

**Trạng thái:** Payload **2.0.6.1 được phát hành trước tính năng Google Flags**. Import DEX này hoặc chạy patcher 2.0.6.1 đều không thêm hỗ trợ Google Flags. Chưa có payload Google Flags mới được phát hành cho quy trình patch này. Hook `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` hiện có dùng cho truy vấn system feature liên quan Unlock GMS Feature; đó **không phải** hook Google Flags. Không kết luận Google Flags hoạt động chỉ vì patch framework/services thành công.

Các đường dẫn gắn nhãn A13–A17 trong template chỉ là tham khảo, **không phải bằng chứng về callsite Google Flags đã được xác minh** trên ROM đích. Guide này cố ý không đưa công thức JAR → class → method để chèn: chưa xác lập được vị trí cho các phiên bản đó. Không chèn hook vào method có tên giống, không dùng lại `hasSystemFeature`, cũng không thay class/DEX stock để ép template khớp.

## Bằng chứng cần có trước khi patch ROM cho Google Flags

1. Xác định release payload đã công bố hỗ trợ Google Flags và mô tả contract hàm gọi. [Payload 2.0.6.1 đã phát hành](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.1) không hỗ trợ. Artifact build hoặc DEX đã import riêng lẻ không chứng minh caller ROM đã được cài; không tự thay build chưa phát hành cho payload release.
2. Trên **bản sao build ROM cụ thể được phép sửa**, lần theo truy vấn flag stock và các caller. Ghi định danh build ROM, JAR owner, DEX split, class, method descriptor, URI/projection, register kết quả stock, control flow và fallback. Nhãn template hoặc tên tương tự chưa đủ. Nếu không chứng minh được callsite duy nhất, tương thích, **dừng: chưa có bản patch Google Flags được hỗ trợ để áp dụng**.
3. Chỉ khi có payload đã phát hành tương thích và chứng cứ caller ROM đích mới viết công thức patch theo phiên bản kèm verifier cho archive đã lưu. Kiểm tra mã hóa register, đường kết quả/return và fallback stock, sau đó build và disassemble lại **archive đã lưu**. Kiểm thử riêng hành vi flag trên thiết bị được phép với cách khôi phục; check cấu trúc không phải kết quả thiết bị.

**Ma trận hỗ trợ:** Android 13, 14, 15, 16 và 17 đều **chưa hỗ trợ chặn Google Flags trên ROM** cho tới khi xác lập callsite chính xác và verifier cho artifact đã lưu của từng phiên bản. Các bước CI hiện tại chỉ là bằng chứng source, host và DEX đã compile; chưa kiểm chứng artifact ROM thật hay thiết bị thật. [Guide patch tay 2.0.6.1](Patch_Guide_2.0.6.1_VI.md) và [guide patcher](Patcher_Guide_2.0.6.1_VI.md) chỉ áp dụng cho các hook được liệt kê trong đó; không có điểm chèn Phenotype. Giữ stock nguyên bản; không phát hành, ký hay flash output Google Flags chưa kiểm chứng chỉ dựa vào template, CI hoặc host test.
