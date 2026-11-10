# CorePatch

[Tiếng Việt](CorePatch_VI.md) | [Manual Patch Guide](Patch_Guide_2.0.6.2.md) | [Root README](../../README.md)

> [!WARNING]
> **Register Allocation and OEM Variations:**
> Register identifiers such as `v14`, `v12`, `v11`, and `v0` shown in the snippets below are reference examples taken from standard AOSP smali layouts. Live register allocations, parameter mappings (`pN`), and branching labels (`:cond_x`) vary significantly across Android versions and OEM ROMs.

---

## 1. `framework.jar`

### `android.content.pm.PackageParser`

**Target file:** `PackageParser.smali`

1. Locate the signature verification call:
   ```smali
   invoke-static {v2, v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
   ```
   Immediately above this invocation, force the flag register (`v1` in the reference layout) to allow unverified certificates:
   ```smali
   const/4 v1, 0x1
   ```

2. Locate the check for the string `"<manifest> specifies bad sharedUserId name \""`. Immediately before the branch instruction (`if-nez v5, :cond_x` in the reference layout), force the condition register to bypass the check:
   ```smali
   const/4 v5, 0x1
   ```

### `android.content.pm.PackageParser$PackageParserException`

**Target file:** `PackageParser$PackageParserException.smali`

Locate the constructor assignment:
```smali
iput p1, p0, Landroid/content/pm/PackageParser$PackageParserException;->error:I
```
Immediately above this instruction, clear the error code register (`p1`) to indicate success (`0`):
```smali
const/4 p1, 0x0
```

### `android.content.pm.PackageParser$SigningDetails`

**Target file:** `PackageParser$SigningDetails.smali`

Locate the three `checkCapability` overloaded methods:
- `checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z`
- `checkCapability(Ljava/lang/String;I)Z`
- any overloaded variant accepting capability flags

Modify each method body to return `1` (`true`) unconditionally:
```smali
const/4 v0, 0x1
return v0
```

### `android.content.pm.SigningDetails`

**Target file:** `SigningDetails.smali`

1. Locate all `checkCapability` overloaded methods in this class and modify each to return `1` (`true`) unconditionally:
   ```smali
   const/4 v0, 0x1
   return v0
   ```

2. In the same class, locate `hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z` and configure it to return `1` (`true`):
   ```smali
   const/4 v0, 0x1
   return v0
   ```

### `android.util.apk.ApkSignatureSchemeV2Verifier`

**Target file:** `ApkSignatureSchemeV2Verifier.smali`

Locate the digest comparison check:
```smali
invoke-static {v8, v4}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v0
```
Replace `move-result v0` with a constant true assignment:
```smali
const/4 v0, 0x1
```

### `android.util.apk.ApkSignatureSchemeV3Verifier`

**Target file:** `ApkSignatureSchemeV3Verifier.smali`

Locate the digest comparison check:
```smali
invoke-static {v9, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v11
```
Replace the result assignment (`move-result v11`) with:
```smali
const/4 v11, 0x1
```

### `android.util.apk.ApkSignatureVerifier`

**Target file:** `ApkSignatureVerifier.smali`

1. Locate `getMinimumSignatureSchemeVersionForTargetSdk(I)I` and make the method return `0`:
   ```smali
   const/4 v0, 0x0
   return v0
   ```

2. Locate the invocation of `verifyV1Signature`:
   ```smali
   invoke-static {p0, p1, p3}, Landroid/util/apk/ApkSignatureVerifier;->verifyV1Signature(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Z)Landroid/content/pm/parsing/result/ParseResult;
   ```
   Immediately above this invocation, force the boolean flag argument (`p3`) to `0` (`false`):
   ```smali
   const/4 p3, 0x0
   ```

### `android.util.apk.ApkSigningBlockUtils`

**Target file:** `ApkSigningBlockUtils.smali`

Locate the digest equality comparison:
```smali
invoke-static {v5, v6}, Ljava/security/MessageDigest;->isEqual([B[B)Z
move-result v7
```
Replace `move-result v7` with:
```smali
const/4 v7, 0x1
```

### `android.util.jar.StrictJarVerifier`

**Target file:** `StrictJarVerifier.smali`

Locate `verifyMessageDigest([B[B)Z` and make the method return `1` (`true`):
```smali
const/4 v0, 0x1
return v0
```

### `android.util.jar.StrictJarFile`

**Target file:** `StrictJarFile.smali`

Locate the `findEntry` lookup:
```smali
invoke-virtual {p0, v5}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
```
Directly after this lookup, remove the conditional branch (`if-eqz v6, :cond_x`) and its corresponding rejection label that rejects mismatched ZIP entries.

### `com.android.internal.pm.pkg.parsing.ParsingPackageUtils`

**Target file:** `ParsingPackageUtils.smali`

Locate the check for the string `"<manifest> specifies bad sharedUserId name \""`. Immediately before the related conditional branch (`if-eqz v4, :cond_x`), force the condition register:
```smali
const/4 v4, 0x0
```

---

## 2. `services.jar`

Disassemble `services.jar` and patch package manager verification helpers.

### `PackageManagerServiceUtils` & `KeySetManagerService`

**Target files:** `PackageManagerServiceUtils.smali` and `KeySetManagerService.smali`

Patch the following methods to return the specified constant values:

| Class | Method | Modified Return Value |
|---|---|---:|
| `PackageManagerServiceUtils` | `checkDowngrade` | `return-void` |
| `PackageManagerServiceUtils` | `verifySignatures` | `const/4 v0, 0x0` / `return v0` |
| `PackageManagerServiceUtils` | `compareSignatures` | `const/4 v0, 0x0` / `return v0` |
| `PackageManagerServiceUtils` | `matchSignaturesCompat` | `const/4 v0, 0x1` / `return v0` |
| `KeySetManagerService` | `shouldCheckUpgradeKeySetLocked` | `const/4 v0, 0x0` / `return v0` |

### `com.android.server.pm.InstallPackageHelper`

**Target file:** `InstallPackageHelper.smali`

Locate the call:
```smali
invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z
```
At the subsequent conditional branch (`if-eqz v12, :cond_x` in the reference smali), force the evaluation register to `1` using the same result register tested by that branch on your ROM:
```smali
const/4 v12, 0x1
```

### `com.android.server.pm.ReconcilePackageUtils`

**Target file:** `ReconcilePackageUtils.smali`

Inside the class initializer (`.method static constructor <clinit>()V`), locate the boolean flag initialization:
```smali
const/4 v0, 0x0
```
Change the value to `1`:
```smali
const/4 v0, 0x1
```

---

## 3. `miui-services.jar` (Xiaomi / HyperOS only)

If the ROM includes `miui-services.jar`, apply the following modifications to allow system applications to be updated with third-party or test-signed APK packages:

1. Method `verifyIsolationViolation` -> modify the method body to return immediately (`return-void`).
2. Method `canBeUpdate` -> modify the method body to return immediately (`return-void`).

---

For both branch edits, identify the result assignment and branch in the actual method; place the constant after the result assignment and immediately before the branch, so it is not overwritten. Match the branch operand rather than copying example register numbers. Use `const/16` instead of `const/4` if the destination physical register exceeds 15. Reassemble and verify the packaged output as described in [Manual Patch Guide](Patch_Guide_2.0.6.2.md#6-reassemble-and-verify-the-packaged-jars).
