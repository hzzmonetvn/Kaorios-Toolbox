# Android 17 (SDK 37)

[English](notes-a17.md) | **Tiếng Việt**

Trang này chỉ chứa các bước bổ sung dành riêng cho ROM đích chạy **Android 17 / SDK 37 (Baklava)**.

---

## 3. Tìm DEX stock chứa `Build`

Trong `framework.jar` stock sạch, xác định hai class:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

## 4. Xóa `final` khỏi các field cần thiết

### `Build.smali`

**Smali mẫu:** [`Build.smali`](../Template/Template_V2060/framework/Build.smali)

Xóa `final` khỏi tập tối thiểu sau:

```text
BRAND
DEVICE
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MODEL
PRODUCT
TAGS
TIME
TYPE
USER
```

### `Build$VERSION.smali`

**Smali mẫu:** [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali)

Xóa `final` khỏi:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

### Field tùy chọn theo profile

Nếu profile PIF / GameProps tự tạo của bạn thực sự sửa thêm các field khác, hãy xóa `final` khỏi đúng các field đó, ví dụ:

```text
DISPLAY
HOST
INCREMENTAL
SDK
*_FOR_ATTESTATION
```

> [!WARNING]
> Giữ nguyên `SDK_INT`. **Không** xóa `final` khỏi `SDK_INT` trong patch này.

Không xóa hàng loạt `final` khỏi mọi field trong `Build` chỉ vì làm vậy nhanh hơn. Chỉ patch đúng field Kaorios cần dùng.

---

## 5. Smali trước và sau khi sửa

Ví dụ với `BRAND`:

### Trước — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### Sau — đã patch

```smali
.field public static whitelist BRAND:Ljava/lang/String;
```

Chỉ access flag `final` bị xóa.

Một số tool có thể serialize field static non-final với initializer tường minh như `= null`. Điều đó hợp lệ và tự nó không phải lỗi.

Lặp lại thay đổi tương tự cho các field đã liệt kê ở trên.

---

Chỉ dùng để tham khảo: [`Build.smali`](../Template/Template_V2060/framework/Build.smali) và [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali).

