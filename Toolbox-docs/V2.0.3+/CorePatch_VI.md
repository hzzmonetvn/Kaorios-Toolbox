Đây là mẫu, 1 số giá trị có thể khác với từng rom!

## 1. `framework.jar`

### `android.content.pm.PackageParser`

**Smali mẫu:** [`PackageParser.smali`](../Template/Template_V2060/framework/PackageParser.smali)

Tìm:

```smali
invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
```

Chèn phía trên:

```smali
const/4 v1, 0x1
```

Tìm đoạn kiểm tra chuỗi `"<manifest> specifies bad sharedUserId name \""`. Ngay trước nhánh `if-nez v5, :cond_x` liên quan, ép giá trị:

```smali
const/4 v14, 0x1
```

### `android.content.pm.PackageParser$PackageParserException`

**Smali mẫu:** [`PackageParser$PackageParserException.smali`](../Template/Template_V2060/framework/PackageParser$PackageParserException.smali)

Tìm:

```smali
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I
```

Chèn phía trên:

```smali
const/4 p1, 0x0
```

### `android.content.pm.PackageParser$SigningDetails`

**Smali mẫu:** [`PackageParser$SigningDetails.smali`](../Template/Template_V2060/framework/PackageParser$SigningDetails.smali)

Tìm ba method `checkCapability` và cho mỗi method trả về `1`.

### `android.content.pm.SigningDetails`

**Smali mẫu:** [`SigningDetails.smali`](../Template/Template_V2060/framework/SigningDetails.smali)

Tìm ba method `checkCapability` và cho mỗi method trả về `1`.

Trong cùng class, tìm `hasAncestorOrSelf` và cho method trả về `1`.

### `android.util.apk.ApkSignatureSchemeV2Verifier`

**Smali mẫu:** [`ApkSignatureSchemeV2Verifier.smali`](../Template/Template_V2060/framework/ApkSignatureSchemeV2Verifier.smali)

Tìm:

```smali
invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v0
```

Thay `move-result v0` bằng:

```smali
const/4 v0, 0x1
```

### `android.util.apk.ApkSignatureSchemeV3Verifier`

**Smali mẫu:** [`ApkSignatureSchemeV3Verifier.smali`](../Template/Template_V2060/framework/ApkSignatureSchemeV3Verifier.smali)

Tìm:

```smali
invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v11
```

Thay `move-result v11` bằng:

```smali
const/4 v11, 0x1
```

### `android.util.apk.ApkSignatureVerifier`

**Smali mẫu:** [`ApkSignatureVerifier.smali`](../Template/Template_V2060/framework/ApkSignatureVerifier.smali)

Tìm `getMinimumSignatureSchemeVersionForTargetSdk` và cho method trả về `0`.

Tìm:

```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

Chèn phía trên:

```smali
const/4 p3, 0x0
```

### `android.util.apk.ApkSigningBlockUtils`

**Smali mẫu:** [`ApkSigningBlockUtils.smali`](../Template/Template_V2060/framework/ApkSigningBlockUtils.smali)

Tìm:

```smali
invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v7
```

Thay `move-result v7` bằng:

```smali
const/4 v7, 0x1
```

### `android.util.jar.StrictJarVerifier`

**Smali mẫu:** [`StrictJarVerifier.smali`](../Template/Template_V2060/framework/StrictJarVerifier.smali)

Tìm `verifyMessageDigest` và cho method trả về `1`.

### `android.util.jar.StrictJarFile`

**Smali mẫu:** [`StrictJarFile.smali`](../Template/Template_V2060/framework/StrictJarFile.smali)

Sau lời gọi:

```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
```

Xóa cặp nhánh `if-eqz v6, :cond_x` và label `:cond_x` tương ứng đang chặn entry không khớp.

### `com.android.internal.pm.pkg.parsing.ParsingPackageUtils`

**Smali mẫu:** [`ParsingPackageUtils.smali`](../Template/Template_V2060/framework/ParsingPackageUtils.smali)

Tìm đoạn kiểm tra `"<manifest> specifies bad sharedUserId name \""`. Ngay trước nhánh `if-eqz v4, :cond_x` liên quan, chèn:

```smali
const/4 v4, 0x0
```

## 2. `services.jar`

**Smali mẫu:** [`PackageManagerServiceUtils.smali`](../Template/Template_V2060/service/PackageManagerServiceUtils.smali) | [`KeySetManagerService.smali`](../Template/Template_V2060/service/KeySetManagerService.smali)

Patch các method sau theo giá trị trả về ghi rõ:

| Method | Return |
|---|---:|
| `checkDowngrade` | `return-void` |
| `shouldCheckUpgradeKeySetLocked` | `0` |
| `verifySignatures` | `0` |
| `compareSignatures` | `0` |
| `matchSignaturesCompat` | `1` |

### `com.android.server.pm.InstallPackageHelper`

**Smali mẫu:** [`InstallPackageHelper.smali`](../Template/Template_V2060/service/InstallPackageHelper.smali)

Tìm:

```smali
invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```

Tại nhánh `if-eqz v12, :cond_x` ngay sau phần này, ép điều kiện cho phép theo register của ROM tham khảo:

```smali
const/4 v0, 0x1
```

### `com.android.server.pm.ReconcilePackageUtils`

**Smali mẫu:** [`ReconcilePackageUtils.smali`](../Template/Template_V2060/service/ReconcilePackageUtils.smali)

Trong `.method static constructor <clinit>()V`, đổi:

```smali
const/4 v0, 0x0
```

thành:

```smali
const/4 v0, 0x1
```

## 3. `miui-services.jar` (nếu ROM có)

Để cho phép cập nhật system app bằng APK bên thứ ba:

- Method `verifyIsolationViolation` -> `return-void`.
- Method `canBeUpdate` -> `return-void`.

