# Kaorios Toolbox Framework 2.0.6.0 — Android 17 / SDK 37

[**English**](Patch_Guide_2.0.6.0.md) | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

This guide is synchronized with the Android 17 patcher scripts in `script/`.
When the ROM differs from the expected method shape, the dedicated patchers are intended to fail closed instead of guessing.

> Keep the stock JAR/APK files from the target ROM. Do not copy complete stock classes from the template into another ROM.

## 1. Recommended automated flow

Use the artifact patchers when possible:

```bash
# framework.jar: ActivityThread hook + Kaorios framework DEX
script/patch-framework-a17-artifact.sh \
  --input framework.jar \
  --output framework-patched.jar \
  --kaorios-dex classes.dex \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37

# services.jar: ComputerEngine + SystemServer
script/patch-services-a17-artifact.sh \
  --input services.jar \
  --output services-patched.jar \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37

# SettingsProvider.apk: filterSettingsCall hook
# Use either --unsigned-output OR platform signing keys.
script/patch-settingsprovider-a17-artifact.sh \
  --input SettingsProvider.apk \
  --output SettingsProvider-patched.apk \
  --baksmali baksmali.jar \
  --smali smali.jar \
  --api 37 \
  --unsigned-output
```

The artifact scripts discover the owner DEX instead of assuming a fixed `classesN.dex`, rebuild only modified DEXes, verify untouched DEX hashes, then re-disassemble the result for verification.

For a decompiled Smali tree, the all-in-one helper is:

```bash
python script/kaorios_patcher_a17.py /path/to/smali --mode 3 --no-delay
```

- `--mode 1`: hooks
- `--mode 2`: Android 17 `Build` field patch
- `--mode 3`: both

## 2. framework.jar

### 2.1 ActivityThread — process initialization

**Class**

```smali
Landroid/app/ActivityThread;
```

**Method**

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Find the exact assignment:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Insert immediately after it:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

This is the exact anchor used by `patch-activitythread-a17.py`.

---

### 2.2 Instrumentation — application Context initialization

**Class**

```smali
Landroid/app/Instrumentation;
```

Patch both overloads:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Before the final `return-object`:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

And:

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Before the final `return-object`:

```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

---

### 2.3 ApplicationPackageManager — system feature spoof

**Class**

```smali
Landroid/app/ApplicationPackageManager;
```

**Method**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Immediately after the register/local declaration:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

The stock method continues when the hook returns `null`.

---

### 2.4 AndroidKeyStoreKeyPairGeneratorSpi — software keypair override

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Method**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

The Python patcher allocates one additional local/register and inserts:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

If the method uses `.registers N`, the patcher increases it by one and uses the newly available local register.
If it uses `.locals N`, it increases locals by one.

---

### 2.5 AndroidKeyStoreSpi — certificate chain filter

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Method**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

The current patcher finds the final array write before the last `return-object`:

```smali
aput-object vB, vArray, vIndex
```

and inserts:

```smali
invoke-static {vArray}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vReturn
```

where `vReturn` is the register used by the final `return-object`.

---

### 2.6 Android 17 Build fields

See [notes-a17.md](notes-a17.md).

The current Python patcher modifies:

**`Build.smali` String fields**

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
TYPE
USER
```

For those fields, remove `final` and append `= null`.

For `TIME:J`, remove only `final`.

**`Build$VERSION.smali`**

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Do not alter `SDK_INT`.

## 3. services.jar

### 3.1 ComputerEngine — hide installed apps by caller

**Class**

```smali
Lcom/android/server/pm/ComputerEngine;
```

The dedicated patcher prefers this Android 17 overload:

```smali
shouldFilterApplication(
    Lcom/android/server/pm/pkg/PackageStateInternal;
    I
    Landroid/content/ComponentName;
    I
    I
    Z
    Z
)Z
```

and falls back to:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

The injected logic is equivalent to:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook
if-eqz vHook, :cond_kaorios_ps_null

# 7-parameter overload: userId = p5
# 3-parameter overload: userId = p3
invoke-static {p2, vHook, pUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null
const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

The patcher allocates one additional local register instead of reusing an unknown stock register.

---

### 3.2 SystemServer — framework service initialization

**Class**

```smali
Lcom/android/server/SystemServer;
```

**Method**

```smali
run()V
```

The method may be `private`, `public`, or contain other modifiers. The current patcher matches the method by name/signature, not by one fixed visibility modifier.

Find the single call:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Insert immediately before it:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

This replaces the older guide anchor before `startOtherServices(...)`. For Android 17, follow the Python patcher and use the `Looper.loop()` anchor.

## 4. SettingsProvider.apk

### SettingsProvider.call — per-app settings Bundle filter

**Class**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Method**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

The current Python patcher does **not** patch a String-returning GET helper. It patches this Binder-facing `call(...): Bundle` method.

Find the `getDeviceId()I` call inside this method:

```smali
invoke-virtual {...}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
move-result v...
```

Immediately after that anchor, insert:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

The hook must appear before any later `Binder.clearCallingIdentity()` in this method.

The patcher adds one local register safely. If the hook returns `null`, stock SettingsProvider logic continues.

### Signing notes

`patch-settingsprovider-a17-artifact.sh` supports two modes:

- `--unsigned-output`: repacks without signing and removes stale input `META-INF` v1/JAR signature metadata.
- `--platform-key ... --platform-cert ...`: aligns and signs the APK.

Optional:

- `--verify-original-cert`: require the newly signed certificate to match the original APK signer.
- `--allow-mismatched-cert`: explicitly allow a different signer for testing. It cannot be combined with `--verify-original-cert`.

For direct ROM deployment, use the target ROM platform key/certificate.

## 5. Verification

The artifact pipelines verify:

- exactly one owner DEX for each patched class;
- untouched DEX SHA-256 hashes remain unchanged;
- patched DEXes can be reassembled;
- the final candidate can be unpacked/re-disassembled;
- expected caller hooks are structurally present;
- the Kaorios framework DEX exposes the hook methods used by the A17 patch suite;
- required AdvancedPolicy Binder classes exist in the framework DEX.

A structural verification pass is not a substitute for boot/runtime testing on the target ROM.

## 6. Reference files

- [Template framework Smali](../Template/Template_V2060/framework)
- [Template services Smali](../Template/Template_V2060/service)
- [Android 17 Build notes](notes-a17.md)
- [Disable FLAG_SECURE](Disable_Secure_Flag.md)
- [CorePatch](CorePatch.md)
