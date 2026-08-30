# Android 17 (SDK 37)

[English](notes-a17.md) | **Tiếng Việt**

Trang này chỉ chứa các bước bổ sung dành riêng cho ROM đích chạy **Android 17 / SDK 37 (Baklava)**.
Trên android 17, có tình trạng 1 số tính năng hoạt động không đúng cách (điển hình là spoof google photo), dưới đây là giải pháp
---

## 3. Tìm DEX stock chứa `Build`

Trong `framework.jar` tìm class:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

## 4. Xóa `final` khỏi các field cần thiết

### `Build.smali`

**Smali mẫu:** [`Build.smali`](../Template/Template_V2060/framework/Build.smali)

Xóa `final`, thêm `= null' vào cuối của những tập tối thiểu sau:

```text
BRAND
BRAND_FOR_ATTESTATION
DEVICE
DEVICE_FOR_ATTESTATION
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MANUFACTURER_FOR_ATTESTATION
MODEL
MODEL_FOR_ATTESTATION
PRODUCT
PRODUCT_FOR_ATTESTATION
TAGS
TIME
TYPE
USER
```

Ví dụ với `BRAND`:

### Trước — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### Sau — đã patch

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
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

(Không cần thêm `= null` như ở class Build.smali)
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

Không xóa hàng loạt `final` khỏi mọi field, chỉ xoá cái cần.
---


