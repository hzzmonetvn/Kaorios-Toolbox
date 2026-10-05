# Target attestation và lỗi vẫn báo unlocked

[English](Attestation_Guide_2.0.6.0.md) | **Tiếng Việt**

Android 17 là **Cinnamon Bun / SDK 37**, theo [Android Developers](https://developer.android.com/reference/android/os/Build.VERSION_CODES_FULL#CINNAMON_BUN).

## Đã thêm target nhưng app vẫn báo unlocked

Trước tiên xác định kết quả đang xem. Trạng thái bootloader/AVB, `RootOfTrust` trong chứng chỉ key attestation và verdict Play Integrity là ba kết quả riêng. Target chỉ chọn request đi qua cơ chế attestation; không khóa bootloader và không bảo đảm verdict Play Integrity. Trong chứng chỉ, đọc cả `deviceLocked` và `verifiedBootState`. Xem [schema attestation của AOSP](https://source.android.com/docs/security/features/keystore/attestation).

Dùng đúng package của app tạo request, không dùng tên hiển thị. Thêm app kiểm tra không đồng thời thêm Google Play services nếu request riêng do Google Play services tạo. Bật Tricky Store và apply Keybox dùng được trong Toolbox. XML import thành công chỉ xác nhận cấu trúc; bước kiểm tra mật mã cũng phải xác nhận bộ khóa và chuỗi chứng chỉ ký dùng được.

UI target của Toolbox có các mode sau; hậu tố tương ứng cũng có trong [parser target dạng text của Evolution X](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/TrickyStoreService.java):

| Mode | Dòng text | Cần kiểm tra |
|---|---|---|
| Auto | `com.example.checker` | Sửa leaf khi TEE attestation hoạt động, hoặc dùng generation khi TEE lỗi. ROM cần có cả hai đường tích hợp. |
| Leaf | `com.example.checker?` | Sửa chuỗi chứng chỉ khi đọc chain. Đọc một chứng chỉ trực tiếp có thể vẫn nhận leaf gốc. |
| Generate | `com.example.checker!` | Dùng đường generation cho **khóa mới**. Đổi mode không tạo lại alias đã tồn tại. |
| Skip | `com.example.checker-` | Giữ target trên đường stock. |

Sau khi apply rule, force-stop rồi mở lại app kiểm tra. Dùng chức năng regenerate/new key của app để tạo alias và challenge mới, sau đó chạy lại cùng phép kiểm tra. Mở lại app không tự xóa khóa Keystore đã lưu. Thử EC/TEE thông thường trước; ghi riêng kết quả RSA hoặc StrongBox vì một request thành công chưa xác nhận các loại còn lại. Không xóa Keystore hệ thống hoặc đổi thông tin khóa màn hình để thử sửa lỗi này.

Khi so sánh, chỉ ghi: Android/ROM, package checker, mode, đã tạo khóa mới chưa, API (`getCertificateChain` hay `getCertificate`), thuật toán, yêu cầu TEE/StrongBox và hai trường RootOfTrust. So sánh Leaf với Generate bằng khóa mới cho từng lượt. Nếu app không cho chọn hoặc không báo API, ghi chưa biết. Không chia sẻ XML Keybox, khóa, chứng chỉ đầy đủ hoặc raw attestation dump.

### Đối chiếu source Android 17

Đối chiếu ngày **2026-10-05** dùng AOSP `android17-release` tại `94b4c163` và Evolution X `cnb` tại `5f381df`. Đây là kết quả đọc source, chưa xác nhận ROM đã cài trên máy:

| Đường chạy | AOSP 17 | Evolution X cnb |
|---|---|---|
| `generateKeyPair()` | Gọi `generateKey` của security level Keystore đã chọn. | Thêm nhánh generation theo target. |
| `engineGetCertificateChain()` | Ghép leaf và CA từ metadata của khóa. | Đưa mảng đã ghép qua hook sửa chuỗi chứng chỉ. |
| `engineGetCertificate()` | Đọc riêng một chứng chỉ từ metadata. | Vẫn đọc trực tiếp metadata; method này không gọi hook sửa chain. |

Nguồn: [SPI AOSP](https://android.googlesource.com/platform/frameworks/base/+/94b4c163b7dfe5ce3607f7bb8456f9573f7de57d/keystore/java/android/security/keystore2/AndroidKeyStoreSpi.java), [generator AOSP](https://android.googlesource.com/platform/frameworks/base/+/94b4c163b7dfe5ce3607f7bb8456f9573f7de57d/keystore/java/android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.java), [SPI Evolution X](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/keystore/java/android/security/keystore2/AndroidKeyStoreSpi.java), [generator Evolution X](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/keystore/java/android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.java).

[Leaf rewriter](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/CertificateHacker.java) và [certificate generator](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/CertificateGenerator.java) của Evolution X dựng RootOfTrust với `deviceLocked=true`, `verifiedBootState=0` (Verified). Đây là dữ liệu chứng chỉ được trình bày, không thay đổi trạng thái bootloader thật hoặc chứng minh khóa được phần cứng bảo vệ.

Nếu chứng chỉ vừa tạo vẫn có `deviceLocked=false`, cần kiểm tra target, backend đang chạy, hook generation/read, tính hợp lệ của Keybox hoặc fallback stock. Nếu chứng chỉ đã báo locked/Verified nhưng app vẫn ghi unlocked, xác định tín hiệu khác mà app dùng trước khi đổi target. Đường đọc trực tiếp ở trên là một khả năng, chưa phải nguyên nhân đã xác nhận khi chưa biết request của app.

Với tích hợp ROM Toolbox, kiểm tra cả hai vị trí hook Keystore và payload tương ứng trong `framework.jar` **đã cài**, trên mọi DEX split. Cập nhật APK quản lý hoặc probe Settings thành công chưa xác nhận các hook này đã có. Làm theo [patch guide](Patch_Guide_2.0.6.0_VI.md).

### Module OhMyKeymint riêng có cấu hình riêng

Target Toolbox không cấu hình module OMK cài riêng. OMK upstream dùng `config.toml` và `injector.toml` tại `/data/misc/keystore/omk/`; route app dùng `scoop`, safety filter và các intercept được bật như `get_security_level`, `get_key_entry`. Không chép hậu tố target `!`/`?` của Toolbox vào package list OMK hoặc tắt safety filter. Sau khi đổi route, restart injector và mở lại app để so sánh từ trạng thái rõ ràng. Xem [guide upstream cố định tại `9b671db`](https://github.com/qwq233/OhMyKeymint/blob/9b671dbbc833f3ad78cf2d374b4d31db89f50b67/docs/CONFIGURATION.md) và hướng dẫn đúng phiên bản module đang cài.
