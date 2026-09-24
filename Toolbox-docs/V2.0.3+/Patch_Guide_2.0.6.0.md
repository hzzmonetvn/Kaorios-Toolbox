# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

> Keep the stock JAR/APK files from the target ROM. Do not replace a stock DEX or copy an entire template class from another ROM.

This guide is shared across Android 13, 14, 15, 16 and 17. Class/method layout can differ between AOSP and OEM ROMs, so templates are references for equivalent logic only. Android 17 differences are called out where needed.

## 1. `framework.jar`

### A. Initialize each app

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Reference smali:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

Patch both methods:

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

No extra register is required.

#### Android 17

Some Android 17 builds also use a process hook in:

```smali
Landroid/app/ActivityThread;
```

Method:

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Find:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Insert immediately after it:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Only add this when the Kaorios DEX being used exposes `initActivityThread(Ljava/lang/Object;)V`.

---

### B. Hook system features

**Class:**
```smali
Landroid/app/ApplicationPackageManager;
```

**Reference smali:** [`ApplicationPackageManager.smali`](../Template/Template_V2060/framework/ApplicationPackageManager.smali)

**Method:**
```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Immediately below `.registers X` or `.locals X`, add:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

When the hook returns `null`, stock code continues.

Use a different label if the target method already contains `:cond_kaorios_feature_stock`.

---

### C. Hook software key generation

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Reference smali:** [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)

**Method:**
```smali
generateKeyPair()Ljava/security/KeyPair;
```

Below the register/local directive add:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

If the method uses `.registers X`:

- increase the register count by 1;
- this instance method only has `p0`, so the new local is `v(new_register_count - 2)`.

Example: `.registers 15` becomes `.registers 16`, then use `v14`.

If the method uses `.locals X`, increase locals by one and use the new local.

---

### D. Hook the certificate chain

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Reference smali:** [`AndroidKeyStoreSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreSpi.smali)

**Method:**
```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Before the final `return-object`, find the last `aput-object` that writes the Certificate array.

Example:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

return-object v3
```

Insert:

```smali
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

The register passed to the hook must hold the Certificate array. The result must be moved into the register used by the final `return-object`.

---

## 2. `services.jar`

### A. Initialize SystemServer

**Class:**
```smali
Lcom/android/server/SystemServer;
```

**Reference smali:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

The goal is to call:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

once inside `SystemServer.run()V`, after core services are initialized but before the main loop runs forever.

### Android 13–16

On many builds, a suitable anchor is immediately before:

```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Example:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-direct {p0, vX}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Opcode/registers may differ by ROM; match the actual `startOtherServices(...)` call.

### Android 17

The current A17 patcher uses the safer `run()V` anchor:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Insert immediately before it:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-static {}, Landroid/os/Looper;->loop()V
```

No extra register is required.

---

## 3. Android 17-only patch

Android 17 / SDK 37 additionally requires the `Build.smali` and `Build$VERSION.smali` field patch.

See [notes-a17.md](notes-a17.md).

Do not apply this section to Android 13–16 unless your framework explicitly requires it.

---

## 4. Supplementary patches

Add only the features you need after the core patch boots correctly.

### A. Hide Developer options / ADB state

**Class:** `Landroid/provider/Settings$NameValueCache;`

**Reference smali:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)

**Reference method:**
```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Below `.registers X` / `.locals X`, add:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Use only the overload returning `String`, not one returning `Pair`.

---

### B. Hide installed apps per caller

The filtering path changes between Android versions and OEM implementations. Patch the Package Manager method that actually decides whether a package is filtered from the caller.

#### Android 13–16 / AppsFilter-based ROMs

Common classes:

```smali
Lcom/android/server/pm/AppsFilterBase;
Lcom/android/server/pm/AppsFilterImpl;
```

Older ABI reference:

```smali
invoke-static {vCallingUid, vResolver, vTargetPackage, vUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result vResult

if-eqz vResult, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0

:cond_kaorios_hide_stock
```

Resolve the real registers on the target ROM.

#### Current Android 17 path

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

The A17 patcher prefers:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

and falls back to:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Current A17 ABI:

```smali
shouldHideAppListForCaller(ILjava/lang/String;I)Z
```

Arguments are:

```text
callingUid, targetPackageName, userId
```

Example for the IIZZ overload:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook
if-eqz vHook, :cond_kaorios_ps_null

invoke-static {p2, vHook, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null
const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Allocate one extra local for `vHook`.

Do not mix the Android 13–16 ABI with the current Android 17 ABI. Verify the actual KaoriosHook signature in the DEX you are shipping.

---

### C. Spoof installer source

The class/method varies across Android versions and OEM ROMs. Patch after Package Manager resolves the stock installer and before the value is returned to the caller.

Reference hook:

```smali
invoke-static {vResolver, vCallingUid, vUserId, vPackageName, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
```

Identify the resolver/null value, calling UID, user ID, queried package and stock installer register on the target ROM.

---

### D. Filter / spoof Settings per calling app

This differs between older framework implementations and the current Android 17 patch.

#### Android 13–16 / String-based hook

Patch the server-side SettingsProvider GET path while the original Binder caller identity is still active.

Do not place the hook:

- in a client cache such as `Settings$NameValueCache`;
- after `Binder.clearCallingIdentity()`;
- in a method that does not return the real Settings value to the caller.

For frameworks using:

```smali
shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
```

reference logic:

```smali
const/4 vNull, 0x0

invoke-static {vNull, vNamespace, vName}, Landroid/security/kaorios/KaoriosHook;->shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
move-result vRemove

if-eqz vRemove, :cond_kaorios_setting_value
const/4 vValue, 0x0
return-object vValue

:cond_kaorios_setting_value
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Preserve required stock cleanup and return flow.

#### Current Android 17 patch

Class:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

Method:

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

Current hook ABI:

```smali
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
```

Inside `call(...)`, find the `getDeviceId()I` call. If a `move-result` follows it, inject after that line but before any later `Binder.clearCallingIdentity()`.

Allocate one extra local `vHook`, then add:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

If the hook returns `null`, stock logic continues.

For `.registers R`, this method has four parameter registers (`p0..p3`):

```text
stock locals = R - 4
vHook = v(R - 4)
new .locals = R - 4 + 1
```

Do not apply this A17 block to a framework that still exposes the `filterSettingValue/shouldRemoveSetting` ABI.

---

## 5. Post-patch verification

Before building/flashing:

- each hook appears only once in the target method;
- new labels do not collide with stock labels;
- new locals do not overlap stock locals/parameters;
- every invoked signature exists in the Kaorios DEX being shipped;
- unrelated stock DEXes remain unchanged;
- Settings hooks run while the correct Binder caller identity is still available;
- `initSystemServer()` is called once.

After building:

1. reassemble the Smali;
2. disassemble the rebuilt artifact and verify the hook is still present;
3. boot the ROM;
4. check logcat/crashes;
5. test each feature separately.

Android 13–17 and OEM updates can move methods/registers, so follow the equivalent logic instead of copying hard-coded registers.

---

## 6. Other documentation

- [Android 17 Build patch](notes-a17.md)
- [Disable Secure Flag](Disable_Secure_Flag.md)
- [CorePatch](CorePatch.md)
- [Smali templates](../Template/Template_V2060)
