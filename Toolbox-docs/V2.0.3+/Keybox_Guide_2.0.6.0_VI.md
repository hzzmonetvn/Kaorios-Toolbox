# Keybox Hub: tải, nhập và kiểm tra

[English](Keybox_Guide_2.0.6.0.md)

## XML được hỗ trợ

Root phải là `AndroidAttestation`, có ít nhất một `Keybox` con trực tiếp và một `Key` hoàn chỉnh thuộc thuật toán được hỗ trợ. Chấp nhận EC-only, RSA-only hoặc cả hai. `EC` và `ECDSA` được chuẩn hóa thành EC; tên thuật toán không phân biệt hoa/thường. Thiếu RSA hoặc thiếu EC đều được phép. Thuật toán lạ không được tính là key dùng được, nhưng có thể đi kèm một key hoàn chỉnh được hỗ trợ.

Mỗi key được khai báo thuộc thuật toán hỗ trợ phải có đúng một `PrivateKey` không trống, đúng một `CertificateChain` và ít nhất một `Certificate` con trực tiếp không trống. RSA được khai báo nhưng hỏng khiến toàn bộ candidate bị từ chối dù EC hoàn chỉnh. Thuộc tính PEM `format` có thể vắng hoặc là `pem`, không phân biệt hoa/thường.

`NumberOfKeyboxes` và `NumberOfCertificates` không bắt buộc; nếu có thì chỉ xuất hiện một lần trong scope tương ứng, là số nguyên dương và bằng số phần tử con trực tiếp thực tế. Root có namespace không nằm trong contract này.

Hỗ trợ declaration UTF-8, BOM, LF/CRLF, thụt dòng, PEM nhiều dòng, comment trước/trong root, tiếng Việt và ký tự `&` trong comment. Từ chối DOCTYPE và khai báo entity. Giới hạn đầu vào 16 MiB. Không bỏ kiểm tra bảo mật để chấp nhận một bản tải.

## Cấu trúc và crypto

Kiểm tra cấu trúc không chứng minh PEM key hoặc certificate dùng được. Framework kiểm tra riêng việc decode PEM, EC SEC1/PKCS#8, RSA PKCS#1/PKCS#8, X.509, khớp private/public key và chữ ký chuỗi certificate. Sanitize comment/định dạng phải giữ nguyên byte PEM sau decode.

XML Hub hợp lệ không được biến thành `MALFORMED_XML` chỉ vì implementation XML trên Android thiếu một tính năng cấu hình parser. Lỗi cú pháp XML, cấu hình parser, cấu trúc và crypto là các stage khác nhau.

## Tải và giữ dữ liệu tốt gần nhất

Request Keybox dùng `User-Agent: KaoriosToolbox/1.0` và Accept cho XML. HTTP 2xx chưa đủ: response staged phải được phân loại và kiểm tra cấu trúc trước khi publish. Từ chối JSON, HTML, response trống, text lạ, tải thiếu, vượt kích thước hoặc redirect không an toàn. XML hợp lệ có thể không có Content-Type hoặc dùng `text/plain`, `application/octet-stream`.

Remote không hợp lệ giữ nguyên Keybox cũ **đã được xác nhận hợp lệ** và marker của nó. Marker chỉ tăng sau khi publish candidate hợp lệ; lỗi giữ `keyboxChanged=false`, không auto-apply candidate lỗi và lần refresh sau vẫn thử lại được. File cũ bị malformed không phải fallback dùng được. Dán thủ công, import và auto-apply dùng cùng contract cấu trúc.

Nếu dữ liệu khác thay đổi nhưng Keybox lỗi, hiển thị cảnh báo cập nhật một phần và giải thích Keybox cũ được giữ. Nếu không có thay đổi, thông báo không thể cập nhật Keybox và tiếp tục dùng bản cũ. Không có fallback hợp lệ thì báo thất bại. Không trình bày warning như một lần cập nhật thành công hoàn toàn.

## Kiểm tra file của bạn

```bash
python3 script/validate_keybox.py /path/to/Keybox.xml
```

Exit 0 chỉ có nghĩa **cấu trúc hợp lệ**, không chứng nhận crypto hay thiết bị. Output chỉ có số lượng thuật toán. Exit 1 trả mã lỗi an toàn, không chứa XML, DeviceID, private key hoặc certificate PEM. Giữ Keybox trên máy; không đính kèm issue hay commit.

| Mã | Ý nghĩa / xử lý |
|---|---|
| `JSON_INSTEAD_OF_XML`, `HTML_INSTEAD_OF_XML`, `EMPTY_RESPONSE`, `UNKNOWN_RESPONSE` | Bản tải không phải XML mong đợi; thử lại hoặc kiểm tra endpoint. |
| `MALFORMED_XML` | Cú pháp XML hỏng hoặc bị cắt; lấy file đầy đủ. |
| `UNSAFE_XML` | Không cho phép DOCTYPE/entity. |
| `INVALID_ROOT`, `INVALID_KEYBOX_COUNT`, `INVALID_CERTIFICATE_COUNT` | Root hoặc số lượng trong scope không đúng. |
| `INCOMPLETE_KEY_ENTRY`, `NO_KEYBOX_ENTRIES`, `NO_USABLE_KEYS` | Thiếu hoặc chưa hoàn chỉnh các entry được hỗ trợ. |
| `RESPONSE_TOO_LARGE`, `FILE_READ_ERROR` | Vượt giới hạn hoặc không đọc được file. |

`python3 script/validate_toolbox_data.py Toolbox-data` cũng kiểm tra `Keybox.xml` nếu có. Repo hiện chỉ publish dữ liệu JSON, không có Keybox được track. Test cấu trúc synthetic không chứng minh crypto hoặc attestation runtime. Bằng chứng sample patch ROM vẫn tách biệt với kiểm tra thiết bị.
