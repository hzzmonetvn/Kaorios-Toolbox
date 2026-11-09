# CorePatch — Hướng Dẫn Patch Smali Tĩnh Cho Framework

[English](CorePatch.md) | [Hướng Dẫn Patch Bằng Tay](Patch_Guide_2.0.6.1_VI.md) | [Root README](../../README.md)

Tài liệu này hướng dẫn chi tiết các bước **patch smali tĩnh** áp dụng trực tiếp cho các file JAR hệ thống của Android (`framework.jar`, `services.jar`, và các thư viện vendor tùy chọn như `miui-services.jar`).

> [!NOTE]
> **Patch Smali Tĩnh So Với Module Xposed/LSPosed Runtime:**
> Hướng dẫn này dành cho việc **chỉnh sửa smali trực tiếp, offline** trên các file JAR hệ thống đã decompile nhằm vô hiệu hóa kiểm tra chữ ký APK, lỗi sai chữ ký khi cập nhật, xung đột sharedUserId và giới hạn hạ cấp phiên bản (downgrade) ở cấp độ hệ điều hành. Cách làm này **không** yêu cầu runtime Xposed hay LSPosed. Nếu bạn đang sử dụng module Xposed runtime (như CorePatch trên LSPosed), không áp dụng các chỉnh sửa smali này trực tiếp vào file hệ thống.

> [!WARNING]
> **Khác Biệt Về Register Và ROM Của Từng Nhà Sản Xuất:**
> Các tên register như `v14`, `v12`, `v11`, và `v0` trong các đoạn mã mẫu dưới đây là ví dụ tham chiếu từ mã nguồn AOSP chuẩn. Cách phân bổ register thực tế, ánh xạ tham số (`pN`), và các nhãn rẽ nhánh (`:cond_x`) có thể khác biệt lớn giữa các phiên bản Android và bản ROM tùy biến của nhà sản xuất (MIUI/HyperOS, OneUI, ColorOS, OxygenOS, v.v.). Luôn disassemble file smali thực tế trên bản ROM của bạn để xác định chính xác register trước khi sửa đổi.

---

## 1. `framework.jar`

Disassemble từng split (`classes.dex`, `classes2.dex`, v.v.) của `framework.jar` và tìm đúng DEX owner của từng class trước khi thực hiện chỉnh sửa.

### `android.content.pm.PackageParser`

**File mục tiêu:** `PackageParser.smali`

1. Tìm lời gọi xác minh chữ ký:
   ```smali
   invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
   ```
   Chèn ngay phía trên lời gọi này lệnh gán cờ (`v1` trong mã mẫu) để cho phép certificate chưa xác minh:
   ```smali
   const/4 v1, 0x1
   ```

2. Tìm đoạn kiểm tra chuỗi `"<manifest> specifies bad sharedUserId name \""`. Ngay trước lệnh rẽ nhánh (`if-nez v5, :cond_x` trong mã mẫu), ép giá trị điều kiện để bỏ qua kiểm tra:
   ```smali
   const/4 v14, 0x1
   ```

### `android.content.pm.PackageParser$PackageParserException`

**File mục tiêu:** `PackageParser$PackageParserException.smali`

Tìm lệnh gán mã lỗi trong constructor:
```smali
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I
```
Chèn ngay phía trên lệnh này để xóa mã lỗi (`p1`) về `0` (thành công):
```smali
const/4 p1, 0x0
```

### `android.content.pm.PackageParser$SigningDetails`

**File mục tiêu:** `PackageParser$SigningDetails.smali`

Tìm ba method `checkCapability` nạp chồng:
- `checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z`
- `checkCapability(Ljava/lang/String;I)Z`
- các biến thể nhận tham số flags

Chỉnh sửa thân từng method để trả về `1` (`true`) vô điều kiện:
```smali
const/4 v0, 0x1
return v0
```

### `android.content.pm.SigningDetails`

**File mục tiêu:** `SigningDetails.smali`

1. Tìm tất cả các method `checkCapability` trong class này và sửa cho trả về `1` (`true`) vô điều kiện:
   ```smali
   const/4 v0, 0x1
   return v0
   ```

2. Trong cùng class, tìm `hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z` và sửa để method trả về `1` (`true`):
   ```smali
   const/4 v0, 0x1
   return v0
   ```

### `android.util.apk.ApkSignatureSchemeV2Verifier`

**File mục tiêu:** `ApkSignatureSchemeV2Verifier.smali`

Tìm đoạn so sánh digest:
```smali
invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v0
```
Thay `move-result v0` bằng giá trị true cố định:
```smali
const/4 v0, 0x1
```

### `android.util.apk.ApkSignatureSchemeV3Verifier`

**File mục tiêu:** `ApkSignatureSchemeV3Verifier.smali`

Tìm đoạn so sánh digest:
```smali
invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v11
```
Thay lệnh nhận kết quả (`move-result v11`) bằng:
```smali
const/4 v11, 0x1
```

### `android.util.apk.ApkSignatureVerifier`

**File mục tiêu:** `ApkSignatureVerifier.smali`

1. Tìm method `getMinimumSignatureSchemeVersionForTargetSdk(I)I` và sửa cho trả về `0`:
   ```smali
   const/4 v0, 0x0
   return v0
   ```

2. Tìm lời gọi `verifyV1Signature`:
   ```smali
   invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
   ```
   Chèn ngay phía trên lời gọi này để ép đối số boolean (`p3`) về `0` (`false`):
   ```smali
   const/4 p3, 0x0
   ```

### `android.util.apk.ApkSigningBlockUtils`

**File mục tiêu:** `ApkSigningBlockUtils.smali`

Tìm đoạn so sánh digest:
```smali
invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v7
```
Thay `move-result v7` bằng:
```smali
const/4 v7, 0x1
```

### `android.util.jar.StrictJarVerifier`

**File mục tiêu:** `StrictJarVerifier.smali`

Tìm method `verifyMessageDigest([B[B)Z` và sửa cho trả về `1` (`true`):
```smali
const/4 v0, 0x1
return v0
```

### `android.util.jar.StrictJarFile`

**File mục tiêu:** `StrictJarFile.smali`

Tìm lời gọi tìm kiếm entry:
```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
```
Ngay sau lệnh này, xóa lệnh rẽ nhánh có điều kiện (`if-eqz v6, :cond_x`) và nhãn từ chối tương ứng vốn chặn các entry ZIP không khớp.

### `com.android.internal.pm.pkg.parsing.ParsingPackageUtils`

**File mục tiêu:** `ParsingPackageUtils.smali`

Tìm đoạn kiểm tra chuỗi `"<manifest> specifies bad sharedUserId name \""`. Ngay trước lệnh rẽ nhánh liên quan (`if-eqz v4, :cond_x`), ép register điều kiện:
```smali
const/4 v4, 0x0
```

---

## 2. `services.jar`

Disassemble `services.jar` và chỉnh sửa các helper xác minh của Package Manager.

### `PackageManagerServiceUtils` & `KeySetManagerService`

**File mục tiêu:** `PackageManagerServiceUtils.smali` và `KeySetManagerService.smali`

Sửa các method sau để trả về giá trị cố định:

| Class | Method | Giá trị trả về đã sửa |
|---|---|---:|
| `PackageManagerServiceUtils` | `checkDowngrade` | `return-void` |
| `PackageManagerServiceUtils` | `verifySignatures` | `const/4 v0, 0x0` / `return v0` |
| `PackageManagerServiceUtils` | `compareSignatures` | `const/4 v0, 0x0` / `return v0` |
| `PackageManagerServiceUtils` | `matchSignaturesCompat` | `const/4 v0, 0x1` / `return v0` |
| `KeySetManagerService` | `shouldCheckUpgradeKeySetLocked` | `const/4 v0, 0x0` / `return v0` |

### `com.android.server.pm.InstallPackageHelper`

**File mục tiêu:** `InstallPackageHelper.smali`

Tìm lời gọi:
```smali
invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```
Tại lệnh rẽ nhánh điều kiện ngay sau phần này (`if-eqz v12, :cond_x` trong smali tham chiếu), ép register đánh giá thành `1` bằng register trống thích hợp trên ROM của bạn:
```smali
const/4 v0, 0x1
```

### `com.android.server.pm.ReconcilePackageUtils`

**File mục tiêu:** `ReconcilePackageUtils.smali`

Trong static constructor (`.method static constructor <clinit>()V`), tìm lệnh khởi tạo cờ boolean:
```smali
const/4 v0, 0x0
```
Đổi giá trị thành `1`:
```smali
const/4 v0, 0x1
```

---

## 3. `miui-services.jar` (Chỉ dành cho Xiaomi / HyperOS)

Nếu bản ROM có chứa file `miui-services.jar`, áp dụng các chỉnh sửa sau để cho phép ứng dụng hệ thống được cập nhật bằng APK bên thứ ba hoặc APK ký test:

1. Method `verifyIsolationViolation` -> sửa thân method để trả về ngay (`return-void`).
2. Method `canBeUpdate` -> sửa thân method để trả về ngay (`return-void`).

---

## 4. Dựng Lại & Xác Minh

1. **Assemble các split đã sửa:** Chỉ assemble lại những split `classes*.dex` đã được chỉnh sửa bằng toolchain tương thích với định dạng bytecode đầu vào.
2. **Đóng gói không ghi đè stock:** Tạo bản sao mới từ file JAR stock gốc và chỉ thay thế các split DEX đã chỉnh sửa (`zip -j -0 <target.jar> classes*.dex`).
3. **Trích xuất và kiểm tra lại:** Giải nén file JAR đã đóng gói vào một thư mục mới, disassemble lại các class đã sửa và đối chiếu xem chuỗi lệnh và register có khớp với thiết kế ban đầu hay không.
4. **Ranh Giới Bằng Chứng (Evidence Boundary):** Hướng dẫn patch smali tĩnh mô tả các thao tác chỉnh sửa bytecode trên môi trường host. Các bước này không thay thế việc kiểm thử thực tế trên thiết bị để xác nhận khả năng khởi động ROM, độ ổn định của hệ điều hành, hay hành vi thực tế của Package Manager trên các biến thể ROM OEM khác nhau.
