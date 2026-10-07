# Kaorios Helper — Giấy phép source

Rà soát upstream ngày 06/10/2026; bổ sung source Helper ngày 07/10/2026. Đây là kết quả kiểm tra upstream để chuẩn bị làm module; chưa có bản Helper gồm đủ ba thành phần được build hoặc phát hành.

## Giấy phép chính

| Thành phần | Source đã kiểm tra | Giấy phép |
| --- | --- | --- |
| COPG | [0371310, nhánh rewrite](https://github.com/AlirezaParsi/COPG/tree/037131093178df0154d0771c5d21490ef9a20f04) | [Apache-2.0](https://github.com/AlirezaParsi/COPG/blob/037131093178df0154d0771c5d21490ef9a20f04/LICENSE) cho source trong repo |
| HMA-OSS | [1fe86ce](https://github.com/frknkrc44/HMA-OSS/tree/1fe86ce2b4a6f21197e6e92d15e054d609b7d77c) | [AGPLv3](https://github.com/frknkrc44/HMA-OSS/blob/1fe86ce2b4a6f21197e6e92d15e054d609b7d77c/LICENSE.md) |
| TEE Simulator RS | [6d241e5](https://github.com/Enginex0/TEESimulator-RS/tree/6d241e56d6e8146cd67ed4ac3dadc9c632969549) | [GPLv3](https://github.com/Enginex0/TEESimulator-RS/blob/6d241e56d6e8146cd67ed4ac3dadc9c632969549/LICENSE) |

**Đề xuất dùng AGPLv3 cho phần Helper viết mới và chương trình kết hợp có source HMA-OSS.** Apache-2.0 tương thích với GPLv3; GPLv3 và AGPLv3 cho phép kết hợp theo điều 13. Phần code upstream vẫn giữ giấy phép và thông báo bản quyền gốc, không đổi tất cả file thành một license. [GNU: tương thích giấy phép](https://www.gnu.org/licenses/license-compatibility.html), [GPLv3, điều 13](https://www.gnu.org/licenses/gpl.en.html#section13).

Nếu chỉ đóng gói các chương trình độc lập trong cùng một ZIP, phải xem quan hệ giữa chúng để xác định phạm vi giấy phép; một ZIP không tự động biến mọi thành phần thành một chương trình. [GNU: đóng gói chung và chương trình kết hợp](https://www.gnu.org/licenses/gpl-faq.html#MereAggregation).

## Các thư viện cần giữ license riêng

| Thư viện | Giấy phép đã kiểm tra | Khi đưa vào Helper |
| --- | --- | --- |
| [AndroidVMTools, 6fa2d5c](https://github.com/aerath-stuff/AndroidVMTools/blob/6fa2d5cbbf51c96fb81a9b5d96fdd74beac4aafe/LICENSE) | MIT | Giữ copyright và bản license |
| [ZygoteLoader, 2a2160f](https://github.com/aerath-stuff/ZygoteLoader/blob/2a2160f/LICENSE) | MIT | Giữ copyright và bản license |
| [PanamaPort, c0d8fa4](https://github.com/aerath-stuff/PanamaPort/blob/c0d8fa4/LICENSE) | MIT, ngoại trừ phần OpenJDK | Giữ MIT và giấy phép phần OpenJDK riêng |
| [OpenJDK trong PanamaPort](https://github.com/aerath-stuff/PanamaPort/blob/c0d8fa4/Core/src/openjdk/LICENSE) | GPLv2 với Classpath exception áp dụng cho các file được chỉ định | Kiểm tra header các file thực sự sử dụng; giữ exception và source tương ứng |
| [LSPlt, 3e29437](https://github.com/JingMatrix/LSPlt/blob/3e29437f037cb7d2b9fbb459dcf162f6b8d1d926/LICENSE) | LGPLv3 | Giữ license, source và đáp ứng nghĩa vụ liên kết tương ứng với cách build |
| [AOSP trong TEE](https://github.com/Enginex0/TEESimulator-RS/blob/6d241e56d6e8146cd67ed4ac3dadc9c632969549/app/src/main/cpp/external/AOSP/LICENSE) | Apache-2.0 | Giữ license và notice áp dụng |
| [Header binder Linux trong TEE](https://github.com/Enginex0/TEESimulator-RS/blob/6d241e56d6e8146cd67ed4ac3dadc9c632969549/app/src/main/cpp/external/linux-kernel/include/android/binder.h) | GPL-2.0 WITH Linux-syscall-note | Giữ header, license và exception |

TEE còn có [NOTICE](https://github.com/Enginex0/TEESimulator-RS/blob/6d241e56d6e8146cd67ed4ac3dadc9c632969549/NOTICE) ghi nguồn TrickyStore, TrickyStoreOSS và các thành phần bên thứ ba. Phải giữ thông báo này khi sử dụng source tương ứng.

Danh sách trên chưa phải kiểm kê toàn bộ dependency của bản build. Trước phát hành cần rà soát dependency Gradle, Cargo và native thực sự được đóng gói, gồm cả license phụ trong các thư viện mã hóa. Chưa kết luận mọi dependency đều đã đủ điều kiện phát hành.

## Khi phát hành module

1. Công khai source đúng phiên bản đã dùng để build ZIP, gồm các sửa đổi, source dependency cần cung cấp, script build và installer. Ghim commit upstream; đặt source cùng trang tải bản release.
2. Đưa đầy đủ các bản license và notice áp dụng vào bản phân phối. Tên module và tác giả phần mới có thể là Kaorios Helper / hzzmonetvn; không xóa copyright hoặc nhận phần upstream là do mình viết.
3. Ghi rõ file upstream đã sửa và ngày sửa. Giữ các quyền của người nhận theo giấy phép; không thêm điều khoản cấm sửa hoặc phân phối lại.
4. Nếu chương trình sửa đổi có tương tác người dùng qua mạng thuộc điều 13 AGPL, cung cấp cách nhận source tương ứng cho những người dùng đó. Chạy module cục bộ không tự tạo nghĩa vụ network này. [AGPLv3, điều 13](https://www.gnu.org/licenses/agpl-3.0.en.html#section13).

Không đưa source riêng tư của Toolbox vào Helper. Tách app và module qua IPC không đủ để tự kết luận phạm vi AGPL; cần xét cách kết hợp thực tế. Không copy source AGPL vào app đóng source rồi coi đó là hai chương trình độc lập. [GNU: quan hệ giữa các thành phần](https://www.gnu.org/licenses/gpl-faq.html#MereAggregation).

## Phần COPG còn thiếu

Đã kiểm tra cây file của nhánh JSON, rewrite, bkp và tag v7.3.0. Các bản này không có thư mục `src/` hay file C++ mà script build yêu cầu, như `src/spoof_module.cpp` và `src/unified_controller.cpp`.

Cần lấy source native và xác minh giấy phép áp dụng cho phần đó trước khi tích hợp. File Apache-2.0 trong repo không đủ để kết luận về code native không được cung cấp. Không dùng binary release để tuyên bố Helper đã build hoàn toàn từ source.

## Bản thử nghiệm HMA + TEE — 07/10/2026

Phần glue mới trong `Kaorios-Helper/` dùng AGPL-3.0-only. HMA và daemon TEE giữ DEX riêng. Workflow đóng gói source HMA, TEE, AndroidVMTools, ZygoteLoader, PanamaPort, LSPlt, Rust vendor cùng source JAR/POM Gradle và các license/notice tìm được. Keybox mẫu và mọi keystore bị loại khỏi artifact. Các thay đổi upstream có danh sách file và ngày sửa trong source snapshot. CI [37702646304](https://github.com/hzzmonetvn/Kaorios-Toolbox/actions/runs/37702646304) đã build HMA, TEE và ZIP/source/license thành công. Artifact có 433 file license/POM/notice, các danh sách `app-runtime.txt` / `zygote-runtime.txt` và source snapshot tương ứng. Kiểm tra độc lập checksum, ELF arm64 và không có keybox/khóa riêng đã pass. Việc thu thập file không thay thế rà soát nghĩa vụ từng dependency; chưa tuyên bố bản phân phối đủ điều kiện release production. COPG không nằm trong bản thử nghiệm này.
