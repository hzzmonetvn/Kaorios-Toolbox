# Kaorios Toolbox 2.0.6.2 — Patch guide

[Tiếng Việt](Patch_Guide_2.0.6.2_VI.md) | [CorePatch](CorePatch.md) | [Secure Flag](Disable_Secure_Flag.md)

Registers below are examples: use free locals and unique labels. Preserve parameter aliases and instruction encoding when increasing `.locals`/`.registers`. Match caller and payload versions.

## framework.jar

Import all payload `classes.dex` classes into framework; redistribute DEX splits if needed. Keep one owner per class.

### Instrumentation
After `Application.attach(Context)` in each `newApplication` overload: `p1` for the static overload, `p3` for the instance overload.

```smali
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### ActivityThread.handleBindApplication
Immediately after assigning `mBoundApplication`; pass its AppBindData operand (`v9` here).

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

### Settings$NameValueCache.getStringForUser
At entry of `(ContentResolver, String, int)String`; requires local `v0`. Null falls through to stock; otherwise return the String unchanged.

```smali
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0
    :kaorios_dev_stock
```

### ApplicationPackageManager.hasSystemFeature
At entry of `(String, int)boolean`. Example: `.locals 2` → `.locals 3`, new local `v2`.

```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v2
    if-eqz v2, :kaorios_feature_stock
    invoke-virtual/range {vN .. v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    return v2
    :kaorios_feature_stock
```

### AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair
At entry of `()KeyPair`. Example: `.locals 2` → `.locals 3`, new local `v2`; retain stock after the label.

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v2
    if-eqz v2, :kaorios_generate_stock
    return-object v2
    :kaorios_generate_stock
```

### AndroidKeyStoreSpi.engineGetCertificateChain
Before returning the populated array, after the final leaf insertion; `v3` is the actual array. Preserve null returns. All three physical registers must be ≤15 in this snippet.

```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

### AndroidKeyStoreSpi.engineGetCertificate
If not already delegating to `engineGetCertificateChain`, insert at entry of `(String)Certificate`; requires locals `v0`, `v1`, with stock after the label.

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

## services.jar

### SystemServer.run
Immediately before the final primary `Looper.loop()`; do not duplicate the stock loop.

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

### ComputerEngine.shouldFilterApplication
At entry of `(PackageStateInternal, int, ComponentName, int, int, boolean, boolean)boolean`; `p2` is callingUid, `p5` is userId. For `(PackageStateInternal, int, int)boolean`, replace `p5` with `p3`.

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

For registers above 15, stage arguments in consecutive locals and use `/range`, with suitable `move*/from16` or `move*/16` instructions.

### ComputerEngine — installer source
Apply to each API present on the ROM. At entry, before `clearCallingIdentity()`, reserve `v14..v18` untouched by stock (at least `.locals 19`):

```smali
    const/16 v14, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v15
    move/16 v16, p2
    move-object/16 v17, p1
```

`getInstallerPackageName(String, int)String`: replace the resolved installer return:

```smali
    move-object/16 v18, v2
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

`getInstallSourceInfo(String, int)InstallSourceInfo`: before the constructor, filter its actual installer argument (`v8` here); retain the stock constructor:

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
```

## Optional Build edits — Android 17

- Remove `final` and set constant String initializers to `null` for: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
- Remove `final` from the primitive field `TIME:J`.
- Remove `final` from: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
- Leave `SDK_INT` and static class initializers (`<clinit>`) completely unmodified.

## Verification

Keep stock JARs for rollback. Assemble modified DEX, package separate JARs, run `unzip -t`, then disassemble the output into `recheck`. Run from the repository:

```bash
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework --caller-only
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/payload-smali
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/payload-smali
```

Do not add SettingsProvider or legacy KeyStore2 hooks. Follow separate CorePatch/Secure Flag guides. Host checks do not establish ROM boot/runtime behavior.
