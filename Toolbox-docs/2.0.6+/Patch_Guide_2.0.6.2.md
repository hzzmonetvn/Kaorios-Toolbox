# Kaorios Toolbox 2.0.6.2 — Manual ROM Smali Patching Guide (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.2_VI.md) | [Disable Secure Flag](Disable_Secure_Flag.md) | [CorePatch](CorePatch.md) | [Root README](../../README.md)

## 1. Import the Payload DEX into `framework.jar`

Download the latest `classes.dex` from the release and import its classes into the final DEX split. Redistribute classes across DEX splits if needed.

## 2. Hook Implementations in `framework.jar`

The required manifest covers six classes and eight methods: `ActivityThread`, `Instrumentation` (2), `ApplicationPackageManager`, `Settings$NameValueCache`, `AndroidKeyStoreSpi` (2), `AndroidKeyStoreKeyPairGeneratorSpi`.

### 2.1 Application Context Initialization — `Instrumentation`
- **Class:** `Landroid/app/Instrumentation;`
- **Target Methods:**
  - `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`
  - `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
- **Placement:** Immediately after the original `Application.attach(Context)` method invocation on each attached application return path, passing the exact Context register.

#### Snippet for First Overload (Static, parameter `p1` holds Context):
```smali
    # Stock application attachment invocation
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Kaorios Context Initialization Hook
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

#### Snippet for Second Overload (Instance, parameter `p3` holds Context):
```smali
    # Stock application attachment invocation
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Kaorios Context Initialization Hook
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

*Notes:* If the physical Context register index exceeds 15, use `invoke-static/range`. Ensure the hook does not separate an invoke from its `move-result`.

---

### 2.2 Process Binding & Initialization — `ActivityThread`
- **Class:** `Landroid/app/ActivityThread;`
- **Target Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`
- **Placement:** Immediately following the stock assignment of `mBoundApplication`. Pass the `AppBindData` instance (the first operand of `iput-object`), not `this`.

```smali
    # Stock field assignment (example register v9 holds AppBindData)
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    # Kaorios Process Initialization Hook
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

*Notes:* Verify that register `v9` contains the `AppBindData` object. If the operand index is 16 or greater, use `/range {vN .. vN}`. Do not duplicate the `iput-object` instruction.

---

### 2.3 Developer Options & ADB Status Guard — `Settings$NameValueCache`
- **Class:** `Landroid/provider/Settings$NameValueCache;`
- **Target Method:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- **Parameters:** `p1` = `ContentResolver`, `p2` = `String name` (the Settings key), `p3` = `int userHandle`.
- **Placement:** At method entry, requiring one available local register (`v0`).

```smali
    # Kaorios Developer / ADB Status Interception
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0

    :kaorios_dev_stock
    # Method execution continues to original stock instructions...
```

`null` continues stock logic; a non-null String is returned unchanged. The payload handles null keys and policy checks; do not hardcode "0" in the caller.

---

### 2.4 Remaining required hooks

#### `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z`

At method entry (after register/parameter metadata), reserve a dedicated local `vN`:

```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object vN
    if-eqz vN, :kaorios_feature_stock
    invoke-virtual/range {vN .. vN}, Ljava/lang/Boolean;->booleanValue()Z
    move-result vN
    return vN
    :kaorios_feature_stock
```

#### `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair()Ljava/security/KeyPair;`

At method entry, reserve a dedicated local `vN`; retain the complete stock fallback:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object vN
    if-eqz vN, :kaorios_generate_stock
    return-object vN
    :kaorios_generate_stock
```

#### `AndroidKeyStoreSpi.engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`

Immediately before the populated certificate-array return, after the final leaf insertion, filter the actual array register (`v3` is only an example). Preserve stock null-return paths:

```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Do not hook an earlier loop insertion or discard the returned array. All three physical arguments must fit v0–v15 for this non-range example; unsupported layouts must stop rather than emit invalid bytecode.

#### `AndroidKeyStoreSpi.engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`

If stock does not already delegate to `engineGetCertificateChain`, insert this entry block with two existing locals, retaining stock instructions after the label:

```smali
    invoke-virtual/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    move-result-object v0
    if-eqz v0, :kaorios_certificate_stock
    array-length v1, v0
    if-eqz v1, :kaorios_certificate_stock
    const/4 v1, 0x0
    aget-object v0, v0, v1
    return-object v0
    :kaorios_certificate_stock
```

`vN` is a placeholder, not valid smali. Use a fresh local (index ≤255 for result/branch instructions), normalize physical parameter aliases before increasing register counts, and choose unique labels. Do not duplicate existing hooks. These methods have live implementations in the current payload, not unconditional stubs.

---

## 3. Hook Implementations in `services.jar`

### 3.1 System Server Initialization — `SystemServer`
- **Class:** `Lcom/android/server/SystemServer;`
- **Target Method:** `run()V`
- **Placement:** Immediately preceding the final, primary `Looper.loop()V` invocation at the conclusion of system service initialization.

```smali
    # Kaorios System Server Initialization Hook
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    # Stock primary loop invocation
    invoke-static {}, Landroid/os/Looper;->loop()V
```

*Notes:* `Looper.loop()V` is an existing stock instruction. Do not duplicate the loop call or place the hook before an intermediate helper loop.

---

### 3.2 Application Visibility Filtering (HMA) — `ComputerEngine`
- **Class:** `Lcom/android/server/pm/ComputerEngine;`
- **Target Method:** `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` (or the 3-parameter overload `(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` if that is the overload actively invoked by your ROM).
- **Placement:** At method entry, requiring one available local register (`v0`).

#### 7-Parameter Overload (`p2` = callingUid, `p5` = userId):
```smali
    # Kaorios Application Visibility Hook
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_visibility_stock
    invoke-static {p2, v0, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_visibility_stock
    const/4 v0, 0x1
    return v0

    :kaorios_visibility_stock
    # Execution continues to stock visibility checks...
```

#### 3-Parameter Overload (`p2` = callingUid, `p3` = userId):
Substitute `p3` in place of `p5` in the `invoke-static` instruction above.

*Register Allocation Note:* If physical register indices exceed 15, allocate three consecutive fresh local registers (e.g. `v20..v22`), move `p2`, `p1.getPackageName()`, and `p5`/`p3` into them, and execute `invoke-static/range {v20 .. v22}`.

---

### 3.3 Installer Package & Source Information Interception (Conditional) — `ComputerEngine`
- **Applicability:** Required **only if** the ROM actively implements the installer read APIs `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` and `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;`.

#### Setup at Method Entry (Both Methods):
Reserve five consecutive fresh local registers (e.g. `v14..v18`) representing `(ContentResolver resolver = null, int callingUid, int userId, String targetPackage, String installerPackage)`:
```smali
    const/16 v14, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v15
    move/16 v16, p2
    move-object/16 v17, p1
```
*Calling UID Capture:* `getCallingUid()` must be captured **before** any invocation of `Binder.clearCallingIdentity()`.

The register numbers are examples, not a fixed allocation. Reserve five locals unused by the entire stock method (at least `.locals 19` for `v14..v18`); preserve them until the hook. Before increasing `.locals`, convert stock physical parameter references to `pN` aliases and check instruction encoding. Keep this block separate from the constructor range `v4..v10`. In the constructor example, `v8` is the installer package argument; verify the actual descriptor and argument mapping on your ROM.

#### Hook in `getInstallerPackageName`:
Locate the stock return of the resolved installer package name (e.g. `return-object v2`). Replace only that return sequence with:
```smali
    move-object/16 v18, v2
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

#### Hook in `getInstallSourceInfo`:
Locate the instantiation of `InstallSourceInfo` (`invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(...)`). Immediately before the constructor call, filter the installer package argument register:
```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    # Stock constructor invocation follows...
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

---

## 4. Optional Android 17 Build Field Spoofing (Mode 2)

On Android 17 ROMs, `Build` fields can be dynamically spoofed at runtime by removing the `final` access modifier and clearing constant String initializers:

1. **`Landroid/os/Build;`:**
   - Remove `final` and set constant String initializers to `null` for: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
   - Remove `final` from the primitive field `TIME:J`.
   - *Example Transformation:*
     ```smali
     # Before:
     .field public static final BRAND:Ljava/lang/String; = "OEM"
     # After:
     .field public static BRAND:Ljava/lang/String; = null
     ```
2. **`Landroid/os/Build$VERSION;`:**
   - Remove `final` from: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
   - Leave `SDK_INT` and static class initializers (`<clinit>`) completely unmodified.

---

## 5. Verify Payload Facade ABI Compatibility

Run against the disassembled payload from the repository root:

```bash
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

## 6. Reassemble and Verify the Packaged JARs

Keep stock JARs for rollback. Assemble every modified DEX split with a compatible smali toolchain, replace only those splits in a separate candidate JAR, and run `unzip -t` on the output. Extract the candidate into a new empty directory and disassemble every split into separate directories beneath `recheck/smali_framework` or `recheck/smali_services`. Check each class has exactly one owner and inspect all edited register flows. Run these checks on the extracted output, not the working smali:

```bash
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework --caller-only
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

These verifiers cover Kaorios caller hooks and ABI, not optional CorePatch or secure-flag edits. Assembly and host checks do not establish device boot or runtime behavior; verify those separately on the target ROM.

### Compatibility boundary

Use caller hooks and payload from the same version. Legacy `KeyStore2` hooks `OnGetKeyEntry`, `Remove`, and `generateKey` are currently no-op/null facade entries, not additional required callers. Do not restore the retired SettingsProvider hook. Optional CorePatch and secure-flag recipes are separate from the required caller manifest.
