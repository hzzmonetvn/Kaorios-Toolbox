# Kaorios Toolbox — Manual patch guide 2.0.6.1 (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.1_VI.md)

## Preparation

Use a DEX/smali editor and these three stock files from **the exact ROM build you use**:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`

Keep backups to restore if the device fails to boot.

Download [classes.dex 2.0.6.1](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex). Use the manager APK from [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0).

Open each file and search **all DEX entries** (`classes.dex`, `classes2.dex`…). The [smali templates](../Template/Template_V2060/README.md) have `a13`–`a17` folders; choose your Android version. Register numbers in this guide are examples: match them to your ROM method.

### Reading the insertion blocks

- A block using `v0` needs at least one local; `v0`, `v1` need two. Do not overwrite a value still needed by the original code.
- Never insert between an `invoke-*` and its `move-result*`.
- At method entry, insert outside `.annotation` blocks and before original labels/code. Keep the original method body.
- If you need more locals, read the register example under SettingsProvider first.

## `framework.jar`

### 1. Import the payload

1. Open the DEX entries of `framework.jar` in a multidex view.
2. Import **all classes** from the 2.0.6.1 `classes.dex`.
3. **Replace each matching class in the DEX that already contains it**; add new classes. Keep the other ROM classes.
4. Check that each class appears only once across all DEX entries. If a DEX is full, use a multidex-capable tool to add the new classes.

Example: if `KaoriosHook` is in `classes6.dex`, replace that class inside `classes6.dex`, **not the entire DEX file**. Import the payload into framework only; services and provider use it from there.

### 2. Initialize Context

**Class:**

```smali
Landroid/app/Instrumentation;
```

**Example smali (Android 17):** [Instrumentation.smali](../Template/Template_V2060/a17/framework/Instrumentation.smali)

**Method:**

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Find `Application.attach(Context)`. Insert immediately after it, using the same Context register. Example with Context in `p1`:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Method:**

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Repeat for this overload. Context is `p3` on entry; use the register actually passed to `attach`. If that is `p3`, insert:

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### 3. Initialize the app process

**Class:**

```smali
Landroid/app/ActivityThread;
```

**Example smali (Android 17):** [ActivityThread.smali](../Template/Template_V2060/a17/framework/ActivityThread.smali)

**Method:**

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Find the assignment to `mBoundApplication`. Insert after it, passing the **first register of `iput-object`**. Example:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

### 4. Filter system features

**Class:**

```smali
Landroid/app/ApplicationPackageManager;
```

**Example smali (Android 17):** [ApplicationPackageManager.smali](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali)

**Method:**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Insert after `.registers` or `.locals`, before the first original instruction. Keep the original code below the final label:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

If `p1`, `p2` are above physical register 15, use `invoke-static/range {p1 .. p2}` for the hook call.

### 5. Generate keys

**Class:**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Example smali (Android 17):** [AndroidKeyStoreKeyPairGeneratorSpi.smali](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)

**Method:**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Insert after `.registers` or `.locals`, before the first original instruction. Keep the original code below the final label:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

### 6. Read certificates

**Class:**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Example smali (Android 17):** [AndroidKeyStoreSpi.smali](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali)

**Method:**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Find the `return-object` that returns the complete leaf-and-CA certificate array. Insert before that return. Example with the array in `v3`:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Replace all three `v3` operands with the actual array register. Patch each complete-chain return; keep error/null paths.

**Method:**

```smali
engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
```

Insert after `.registers` or `.locals`, before the first original instruction. Keep the original code below the final label:

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

This block needs **two locals, `v0`, `v1`**, so the single certificate matches the first chain element.

## `services.jar`

### 1. Initialize SystemServer

**Class:**

```smali
Lcom/android/server/SystemServer;
```

**Example smali (Android 17):** [SystemServer.smali](../Template/Template_V2060/a17/service/SystemServer.smali)

**Method:**

```smali
run()V
```

Find the main `Looper.loop()V` after service startup. Insert immediately before it:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

Insert only once at this location.

### 2. HMA — hide the app list

**Class:**

```smali
Lcom/android/server/pm/ComputerEngine;
```

**Example smali (Android 17):** [ComputerEngine.smali](../Template/Template_V2060/a17/service/ComputerEngine.smali)

**Method:**

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

Insert after `.registers` or `.locals`, before the first original instruction. Keep the original code below the final label:

```smali
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
```

If your ROM routes visibility checks through the overload below, insert there and change the hook user operand from `p5` to `p3`:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Do not choose the overload accepting `SharedUserSetting`. Hook the method your ROM actually calls. Ordinary calls accept physical registers 0–15; if needed, stage UID, package name and user into three consecutive locals and call with `/range`.

### 3. Filter the installer package name

In the same `ComputerEngine` class, patch `getInstallerPackageName` and `getInstallSourceInfo` when present. This example is for `(String, int)` overloads: `p1` is the target package, `p2` is the user.

Reserve **five unused consecutive locals**, for example `v10..v14`. Save the inputs at method entry:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Keep `v10..v13` unchanged throughout the original body. For a String-only overload, replace `move/16 v12, p2` with:

```smali
    invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v12
```

In `getInstallerPackageName`, find the installer-name return. If it is `return-object v2`, replace it with:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

In `getInstallSourceInfo`, insert the same hook after reading `mInstallerPackageName`, before the `InstallSourceInfo` constructor. Use the hook result for the **installing package** argument; omit `return-object v2`. Keep the other arguments. Match the example registers to your ROM.

## `SettingsProvider.apk`

**Class:**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Example smali (Android 17):** [SettingsProvider.smali](../Template/Template_V2060/a17/settingsprovider/SettingsProvider.smali)

### Allocate locals before editing

Do not just increase `.registers`: parameter registers move. Example: `call()` with `.registers 13` has nine locals, `v0..v8`; `v9..v12` are `p0..p3`.

1. Change original **parameter operands** `v9`, `v10`, `v11`, `v12` to `p0`, `p1`, `p2`, `p3`. Leave strings, labels and field names alone.
2. Change `.registers 13` to `.locals 10`.
3. Use `v9` as the new local. Check that parameter instructions and `/range` calls remain valid after the shift.

For a different register count, calculate the mapping for that method instead. Ordinary calls use at most five physical registers in 0–15; `/range` needs consecutive arguments. Rewrite ranges crossing the old local/parameter boundary when adding locals.

### 1. `call()`

**Method:**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

Find the `getDeviceId()I` call and its `move-result`. **Keep both**, and insert after `move-result`. Example using the new `v9` local allocated above:

```smali
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v4

    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :kaorios_settings_stock
    return-object v9
    :kaorios_settings_stock
```

If your ROM has no `getDeviceId`, find the `getRequestingUserId(Bundle)I` / `move-result` pair and insert after both, while `p1`, `p2` still hold the method and setting name. Keep the original integer result register. **Inserting between invoke and move-result can cause bootloop.**

### 2. `query()`

**Method:**

```smali
query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
```

Reserve three new locals to save the inputs. Example with original `.registers 11` (five locals):

1. Convert original parameter operands `v5..v10` to `p0..p5` as above.
2. Change `.registers 11` to `.locals 8`.
3. Insert at method entry:

```smali
    move-object/from16 v5, p1
    move-object/from16 v6, p3
    move-object/from16 v7, p4
```

Keep `v5..v7` unchanged. Find **every** `return-object` and insert before it. Example with the returned Cursor in `p0`:

```smali
    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0
```

Replace `p0` in all three lines with that branch's actual Cursor register. Use this mapping only for the stated overload; do not pass input parameters overwritten by the original code.

## Optional patches

### 1. Hide developer/ADB status

**Class:**

```smali
Landroid/provider/Settings$NameValueCache;
```

**Example smali (Android 17):** [Settings$NameValueCache.smali](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali)

**Method:**

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Insert after `.registers` or `.locals`, before the first original instruction. Keep the original code below the final label:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

### 2. Build fields on Android 17

Only edit these if you need mutable Build spoof fields on Android 17. In `Landroid/os/Build;`, remove `final` and set the String initializer to `null`. Example:

Find:

```smali
.field public static final BRAND:Ljava/lang/String; = "example"
```

Replace with:

```smali
.field public static BRAND:Ljava/lang/String; = null
```

Repeat for:

`BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.

For `TIME:J`, remove only `final`. In `Landroid/os/Build$VERSION;`, remove only `final` from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Keep `SDK_INT` and original `<clinit>` code.

### 3. Secure Flag and CorePatch

[Disable Secure Flag](Disable_Secure_Flag.md) | [CorePatch](CorePatch.md)

## Save and check

1. Assemble/export edited DEX entries under their original names in the JAR/APK. Keep untouched DEX entries, manifest and resources.
2. Reopen the **saved file**. Check payload classes are present without duplicates and hooks are in the stated locations. Each `move-result*` must follow its matching call.
3. Sign `SettingsProvider.apk` using the ROM's platform key/signing process. A different key can be rejected due to shared UID. Do not edit the APK after signing.

Test framework/services with the **stock SettingsProvider** first. Once that boots, add the edited, correctly signed provider. Prepare a way to disable the module/restore stock files before rebooting. Successful assembly does not confirm device boot.

HMA: select the caller app whose view you want to filter, assign a template containing the apps to hide, then force-stop the caller and retry.
