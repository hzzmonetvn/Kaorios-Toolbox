

## 1. `framework.jar`

### `android.content.pm.PackageParser`

**Reference smali:** [`PackageParser.smali`](../Template/Template_V2060/framework/PackageParser.smali)

Find:

```smali
invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 v1, 0x1
```

Find the check containing `"<manifest> specifies bad sharedUserId name \""`. Before its related `if-nez v5, :cond_x` branch, add:

```smali
const/4 v14, 0x1
```

### `android.content.pm.PackageParser$PackageParserException`

**Reference smali:** [`PackageParser$PackageParserException.smali`](../Template/Template_V2060/framework/PackageParser$PackageParserException.smali)

Find:

```smali
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I
```

Add above it:

```smali
const/4 p1, 0x0
```

### `android.content.pm.PackageParser$SigningDetails`

**Reference smali:** [`PackageParser$SigningDetails.smali`](../Template/Template_V2060/framework/PackageParser$SigningDetails.smali)

Find all three `checkCapability` methods and make each return `1`.

### `android.content.pm.SigningDetails`

**Reference smali:** [`SigningDetails.smali`](../Template/Template_V2060/framework/SigningDetails.smali)

Find all three `checkCapability` methods and make each return `1`. In the same class, make `hasAncestorOrSelf` return `1`.

### `android.util.apk.ApkSignatureSchemeV2Verifier`

**Reference smali:** [`ApkSignatureSchemeV2Verifier.smali`](../Template/Template_V2060/framework/ApkSignatureSchemeV2Verifier.smali)

Find:

```smali
invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v0
```

Replace `move-result v0` with:

```smali
const/4 v0, 0x1
```

### `android.util.apk.ApkSignatureSchemeV3Verifier`

**Reference smali:** [`ApkSignatureSchemeV3Verifier.smali`](../Template/Template_V2060/framework/ApkSignatureSchemeV3Verifier.smali)

Find:

```smali
invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v11
```

Replace `move-result v11` with:

```smali
const/4 v11, 0x1
```

### `android.util.apk.ApkSignatureVerifier`

**Reference smali:** [`ApkSignatureVerifier.smali`](../Template/Template_V2060/framework/ApkSignatureVerifier.smali)

Make `getMinimumSignatureSchemeVersionForTargetSdk` return `0`.

Find:

```smali
invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
```

Add above it:

```smali
const/4 p3, 0x0
```

### `android.util.apk.ApkSigningBlockUtils`

**Reference smali:** [`ApkSigningBlockUtils.smali`](../Template/Template_V2060/framework/ApkSigningBlockUtils.smali)

Find:

```smali
invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v7
```

Replace `move-result v7` with:

```smali
const/4 v7, 0x1
```

### `android.util.jar.StrictJarVerifier`

**Reference smali:** [`StrictJarVerifier.smali`](../Template/Template_V2060/framework/StrictJarVerifier.smali)

Make `verifyMessageDigest` return `1`.

### `android.util.jar.StrictJarFile`

**Reference smali:** [`StrictJarFile.smali`](../Template/Template_V2060/framework/StrictJarFile.smali)

After:

```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
```

Remove the associated `if-eqz v6, :cond_x` branch and its `:cond_x` label that reject the non-matching entry.

### `com.android.internal.pm.pkg.parsing.ParsingPackageUtils`

**Reference smali:** [`ParsingPackageUtils.smali`](../Template/Template_V2060/framework/ParsingPackageUtils.smali)

Find the check containing `"<manifest> specifies bad sharedUserId name \""`. Before its related `if-eqz v4, :cond_x` branch, add:

```smali
const/4 v4, 0x0
```

## 2. `services.jar`

**Reference smali:** [`PackageManagerServiceUtils.smali`](../Template/Template_V2060/service/PackageManagerServiceUtils.smali) | [`KeySetManagerService.smali`](../Template/Template_V2060/service/KeySetManagerService.smali)

Patch these methods to return the stated result:

| Method | Return |
|---|---:|
| `checkDowngrade` | `return-void` |
| `shouldCheckUpgradeKeySetLocked` | `0` |
| `verifySignatures` | `0` |
| `compareSignatures` | `0` |
| `matchSignaturesCompat` | `1` |

### `com.android.server.pm.InstallPackageHelper`

**Reference smali:** [`InstallPackageHelper.smali`](../Template/Template_V2060/service/InstallPackageHelper.smali)

Find:

```smali
invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```

At the related `if-eqz v12, :cond_x` branch, force the reference-ROM condition:

```smali
const/4 v0, 0x1
```

### `com.android.server.pm.ReconcilePackageUtils`

**Reference smali:** [`ReconcilePackageUtils.smali`](../Template/Template_V2060/service/ReconcilePackageUtils.smali)

In `.method static constructor <clinit>()V`, change:

```smali
const/4 v0, 0x0
```

to:

```smali
const/4 v0, 0x1
```

## 3. `miui-services.jar` (if present)

To allow third-party updates of system applications:

- Make `verifyIsolationViolation` return `void`.
- Make `canBeUpdate` return `void`.

## Verify

1. Rebuild each modified DEX/JAR without replacing or deleting stock DEX files.
2. Preserve the original JAR structure, compression, and required DEX names.
3. Boot-test before installing an APK. On bootloop, restore the stock JARs and review one patch group at a time.

