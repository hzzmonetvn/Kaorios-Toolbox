# CorePatch Guide — Optional Signature & Downgrade Bypass (Clean Stock Android 13–17)

Optional pure-smali patches for **clean stock** Android 13–17 `framework.jar` and `services.jar` (plus optional MIUI/HyperOS `miui-services.jar`) allowing APK downgrade installations and bypassed APK signature verification. CorePatch requires **no** Kaorios payload DEX calls.

> [!WARNING]
> Disabling Android package signature and downgrade verification weakens OS app-update integrity checks across the entire device. **Keep CorePatch disabled unless you explicitly require it** (for example, modified system APKs or intentional unsigned/downgraded installs).
> - **Vietnamese version:** [`CorePatch_VI.md`](CorePatch_VI.md).

---

## Option 1: Automated Patcher (`--enable-corepatch`)

```bash
python3 script/kaorios_patcher.py patch-framework \
  --input stock/framework.jar \
  --payload dist/classes.dex \
  --output out/framework.jar \
  --enable-corepatch

python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-corepatch

python3 script/kaorios_patcher.py verify \
  --framework out/framework.jar \
  --services out/services.jar \
  --payload dist/classes.dex \
  --expect-corepatch
```

---

## Option 2: Manual Smali Patching

### Part A: `framework.jar`

#### 1) `SigningDetails` — Allow Capability & Ancestor Checks

- **Class:**
  ```smali
  Landroid/content/pm/SigningDetails;
  ```
- **Target Methods (replace body of every matching overload present):**
  1. `checkCapability(Landroid/content/pm/SigningDetails;I)Z`
  2. `checkCapability(Ljava/lang/String;I)Z`
  3. `hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z`
- **Replace entire method body with:**
  ```smali
  .locals 1

  const/4 v0, 0x1

  return v0
  ```

##### Register Note
- Using `.locals 1` works for every overload regardless of how many parameters the method accepts (`v0` is always register `0`, well inside the 4-bit `const/4` limit).
- If your smali tool prefers `.registers`, compute `registers = 1 + param_slots` (for example, instance method `checkCapability(SigningDetails, int)Z` has `p0`, `p1`, `p2` = `3` params -> **`.registers 4`**).

---

#### 2) `ApkSignatureVerifier` — Minimum Signature Scheme Version

- **Class:**
  ```smali
  Landroid/util/apk/ApkSignatureVerifier;
  ```
- **Method:**
  ```smali
  getMinimumSignatureSchemeVersionForTargetSdk(I)I
  ```
- **Replace entire method body with:**
  ```smali
  .locals 1

  const/4 v0, 0x1

  return v0
  ```

##### Register Note
- Static method with 1 `int` parameter (`p0`): `.locals 1` is equivalent to **`.registers 2`**.
- Returning `0x1` (`SignatureSchemeVersion.JAR` / V1) permits V1-signed APKs on Android 13–17 targets that normally require V2/V3.

> [!TIP]
> **Full unsigned / modified-digest APK installs (advanced optional):** If you also need to bypass APK v2/v3 digest mismatches beyond what `--enable-corepatch` applies, inspect your exact ROM's `ApkSignatureSchemeV2Verifier.smali`, `ApkSignatureSchemeV3Verifier.smali`, and `StrictJarVerifier.smali` (`verifyMessageDigest([B[B)Z` -> return `0x1`), replacing `move-result vX` after `MessageDigest;->isEqual([B[B)Z` with `const/4 vX, 0x1` using the **exact** register `vX` present in your ROM.

---

### Part B: `services.jar`

#### 3) `PackageManagerServiceUtils` — Bypass Downgrade & Signature Mismatch Checks

- **Class:**
  ```smali
  Lcom/android/server/pm/PackageManagerServiceUtils;
  ```
- **Method 1 (signature varies slightly across Android 13–17 — match any `checkDowngrade(...)V`):**
  ```smali
  checkDowngrade(...)V
  ```
- **Replace entire method body with:**
  ```smali
  .locals 0

  return-void
  ```

- **Method 2:**
  ```smali
  compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
  ```
- **Replace entire method body with** (`0x0` = `PackageManager.SIGNATURE_MATCH`):
  ```smali
  .locals 1

  const/4 v0, 0x0

  return v0
  ```

##### Register Note
- `checkDowngrade(...)V` needs zero locals (`.locals 0`), so it never shifts or conflicts with any parameter count across Android 13–17.
- `compareSignatures([Signature, [Signature)I` is static with 2 params (`p0`, `p1`): `.locals 1` equals **`.registers 3`**.
- Optional companion methods on older/OEM trees (only if needed): `matchSignaturesCompat(...)Z` -> return `0x1`, and `KeySetManagerService.shouldCheckUpgradeKeySetLocked(...)Z` -> return `0x0`.

---

### Part C: Optional Xiaomi MIUI / HyperOS Extra (`miui-services.jar`)

On Xiaomi MIUI / HyperOS ROMs that ship `/system_ext/framework/miui-services.jar` and enforce extra vendor installation blocks in `PackageManagerServiceImpl`:

- **Class:** `Lcom/android/server/pm/PackageManagerServiceImpl;` (inside `miui-services.jar`)
- **Methods:**
  - `verifyIsolationViolation(...)V` -> replace body with `.locals 0` + `return-void`
  - `canBeUpdate(...)V` -> replace body with `.locals 0` + `return-void`

*(Vendor-only patch; skip completely on Pixel, One UI, ColorOS/OPlus, OriginOS, and AOSP ROMs.)*

---

## Verification

1. **Host verification:**
   ```bash
   python3 script/kaorios_patcher.py verify \
     --framework out/framework.jar \
     --services out/services.jar \
     --payload dist/classes.dex \
     --expect-corepatch
   ```
2. **On-device verification:** After pushing patched JARs, clearing ART/oat caches, and rebooting, verify with a controlled downgrade test (`adb install -r -d <older-test-apk>`).
