# Quy trình cho agent patch tay ROM 2.0.6.1

Tài liệu này dành cho agent **tự thực hiện patch smali bằng tay trên bản sao ROM đã được giao quyền**, không phải bot chạy nền và không thay thế [guide patch tay](V2.0.3+/Patch_Guide_2.0.6.1_VI.md) ([English](V2.0.3+/Patch_Guide_2.0.6.1.md)). Nếu người dùng chọn dùng script, đọc [guide patcher](V2.0.3+/Patcher_Guide_2.0.6.1_VI.md); script không thay thế các bước import payload và kiểm tra artifact cuối.

## 1. Nhận việc: đủ thông tin mới sửa

Xác nhận Android 13–17, mã build ROM, các hook được yêu cầu, vị trí `framework.jar`/`services.jar` stock, bản sao đầu vào/đầu ra và phạm vi được phép **ghi lên bản sao**. Nếu thiếu version, không rõ artifact hoặc quyền sửa, hỏi trước. Permission sửa bản sao không cho phép ghi đè bản gốc, ký release, upload/publish artifact hay flash/triển khai lên thiết bị. Các việc đó cần ủy quyền riêng.

Không đưa private source, key/keystore, Keybox thô, password, serial/IMEI hoặc ROM artifact chưa được phép lên repo công khai, vào log hoặc báo cáo. Giữ `SettingsProvider.apk` stock; chỉ patch các hook framework/services được mô tả trong guide 2.0.6.1.

## 2. Khóa baseline và lập bảng owner

1. Để stock JAR ngoài thư mục ghi; ghi SHA-256 của từng file, liệt kê mọi entry archive (kể cả non-DEX) và tất cả `classes*.dex`. Chuẩn bị đường khôi phục trước khi có thao tác trên thiết bị; ở bước này **không** tác động thiết bị.
2. Tạo workspace rỗng riêng cho từng build và từng JAR. Decompile từng DEX vào một cây riêng bằng toolchain tương thích với DEX/API đầu vào. Không chạy tool từ thư mục ROM đầu vào không đáng tin cậy; chỉ truyền đường dẫn input cho tool đã kiểm soát.
3. Lập bảng `descriptor + method signature → framework/services → classes*.dex → smali path → hook yêu cầu`. Tìm owner trên **mọi** DEX, không mặc định `classes.dex`. Nếu class trùng owner hoặc method/overload không tìm thấy, dừng và báo; không tự chọn class gần giống.
4. Chọn template `a13`–`a17` đúng phiên bản Android chỉ để so logic. Template không phải class stock thay thế được cho ROM đích.

**Đạt:** stock/hash còn nguyên, mỗi target có đúng owner và method. **Dừng:** version/build không khớp, thiếu target được yêu cầu, owner mơ hồ hoặc không có cách khôi phục.

## 3. Patch tay có bằng chứng

Làm theo từng hook trong [guide patch tay](V2.0.3+/Patch_Guide_2.0.6.1_VI.md). Trước khi sửa, ghi descriptor và overload chính xác, vị trí chèn dựa trên luồng điều khiển ROM đích, các nhánh return và stock fallback. Đối chiếu cả code gốc và template; không chép nguyên class mẫu hoặc số register của ROM khác.

- Tính `.locals`/`.registers` và vị trí vật lý của `pN`; nếu phải tăng frame, chuyển alias `vN` đang trỏ parameter sang `pN` trước. Chọn local không còn sống tại điểm chèn; không ghi đè giá trị code gốc vẫn dùng.
- Kiểm tra **mọi** operand của cả lệnh stock và hook sau chỉnh sửa: giới hạn register của `invoke-*`/`if-*`, các lệnh wide và tính liên tiếp của `/range`. Giữ `invoke-*` và `move-result*` cạnh nhau, label duy nhất và các nhánh fallback stock. Nếu không chứng minh được opcode encode hoặc đường return còn đúng, dừng.
- Import **toàn bộ class payload 2.0.6.1 vào framework**, replace class trùng ngay trong DEX owner cũ và add class mới ở split phù hợp; giữ mọi class ROM còn lại và xác nhận mỗi descriptor chỉ có một owner. Chỉ import payload vào `framework.jar`; không thay nguyên DEX ROM chứa class khác bằng payload.
- Tạo diff nhỏ sau mỗi hook và tự kiểm tra lại method gốc. Có thể thích nghi register, overload và vị trí chèn nếu chứng minh được chúng tương đương về control flow, fallback và encoding trên ROM cụ thể. Nếu layout khác mà không có bằng chứng, **dừng và hỏi**, không ép template chạy.

Guide tay còn có hook ngoài phạm vi mode 1, như developer/ADB-status tùy chọn. Với `ComputerEngine`, mode 1 **có thể** patch và verify installer-name khi tìm thấy method phù hợp và layout được hỗ trợ; kiểm tra kết quả từng method, không suy từ một dòng `PATCHED` rằng mọi hook tùy chọn hoặc mọi overload đã có.

## 4. Build và kiểm tra chính file đã lưu

1. Assemble từng cây smali đã sửa với API/toolchain phù hợp. Trong **bản sao** JAR stock, thay đúng entry DEX gốc của cây đó; giữ các split chưa sửa và các entry non-DEX. Tuyệt đối không dùng đường dẫn stock làm output.
2. Mở lại archive **đầu ra đã lưu**, trích tất cả DEX vào thư mục mới; so byte DEX đã đóng gói với output assemble, so hash DEX không sửa và kiểm kê entry non-DEX. Kiểm tra mọi class payload hiện diện một lần, class ROM ngoài phạm vi không mất và từng owner đúng như bảng bước 2.
3. Decompile DEX vừa **trích từ archive cuối** vào cây recheck rỗng. So lại mỗi hook với descriptor, register vật lý, mọi nhánh return/fallback và `invoke`/`move-result*`. Chạy verifier framework, services, SystemServer trong [guide patcher](V2.0.3+/Patcher_Guide_2.0.6.1_VI.md#5-kiểm-tra-jar-đã-lưu) khi phù hợp; ghi chính xác verifier đã kiểm tra phần nào. Kiểm tra tay các hook ngoài phạm vi verifier.

**Đạt trên host:** archive mở được, class inventory/DEX hash/đường hook khớp và các check áp dụng đều PASS. Đây **không phải** xác nhận ROM thực tế boot được, tương thích SELinux, attestation hoặc tính năng chạy trên thiết bị; kiểm thử real ROM/device là bước riêng của người được ủy quyền.

## 5. Xử lý lỗi và bàn giao

Nếu assemble, so DEX, inventory, verifier hoặc review control flow lỗi: **không** sử dụng artifact; bỏ toàn bộ output/cây làm việc bị ảnh hưởng, tạo lại từ stock sạch, rồi nêu blocker. Nếu có dùng patcher directory mode để hỗ trợ, một file trước có thể đã được ghi dù file sau báo `UNSUPPORTED_LAYOUT`/`FAILED`: bỏ cả cây, không tiếp tục từ trạng thái dở. Không giả định exit code 0 chứng minh đủ mọi target.

Bàn giao: build/version và scope đã làm; hash stock/output; bảng class → archive/DEX owner và DEX đã đổi; diff/hook đã xác nhận; kết quả assemble/verifier và các hook **chưa** được verifier bao phủ; lỗi còn lại và cách khôi phục. Chỉ bàn giao output vào nơi đã được cho phép; không tự flash, ký, upload, push ROM hoặc ghi đè stock.
