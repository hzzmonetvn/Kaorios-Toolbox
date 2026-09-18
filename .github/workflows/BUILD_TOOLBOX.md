# Build APK và framework DEX

Chạy Actions → **Build APK and framework DEX (private source)** → Run workflow.
`private_branch` mặc định là `flutter-port`; đặt `private_ref` thành commit SHA để build có thể tái lập.
Repo cần secret `PRIVATE_REPO_TOKEN` có quyền Contents: read trên repo private.

Workflow build app Android hiện có bằng Gradle, không đổi UI hay tính năng.
Nhánh flutter-port hiện chỉ có Rust core và Dart FFI package, chưa có Flutter app thay thế hoàn chỉnh.

Artifact `KaoriosToolbox-release-<run number>` gồm:

- `KaoriosToolbox-release.apk` đã kiểm tra chữ ký.
- `KaoriosFramework-release.apk` và toàn bộ `classes.dex` của framework.
- `lib/arm64-v8a/libkaorios_toolbox.so` đã kiểm tra AArch64.
- `SHA256SUMS`; chạy `sha256sum -c dist/SHA256SUMS` từ thư mục cha sau khi giải nén vào `dist/`.

Build kiểm tra framework chỉ có một DEX và app không đóng gói các helper của boot framework.
Chỉ cache Android compile stubs công khai trước khi thêm API private; tắt Gradle build cache.
Không upload source hay keystore. Artifact và log của workflow public vẫn có thể được người khác đọc;
chỉ dispatch source đáng tin cậy. Artifact giữ 14 ngày, không tự tạo release.
