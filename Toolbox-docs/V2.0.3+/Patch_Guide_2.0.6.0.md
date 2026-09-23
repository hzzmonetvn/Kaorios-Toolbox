# Kaorios Toolbox Framework 2.0.6.0 — Manual Android 17 / SDK 37 patch guide

[**English**](Patch_Guide_2.0.6.0.md) | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

This document describes the **manual Smali patching** flow and is synchronized with the Android 17 Python patchers under `script/`.

> Always patch the stock JAR/APK from the target ROM. Do not copy complete stock classes from another ROM/template because registers, labels, overloads and DEX layout can differ.

## 1. Preparation

Artifacts involved:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`
- a Kaorios framework DEX matching the Toolbox APK

For every JAR/APK:

1. Unpack the artifact.
2. Identify which `classes*.dex` owns the target class.
3. Disassemble only that DEX.
4. Patch the exact method described below.
5. Reassemble the modified DEX.
6. Keep all untouched stock DEXes unchanged.
7. Repack the artifact.

Do not assume the class is always in `classes.dex` or `classes2.dex`.

### Add the Kaorios DEX to framework.jar

The Kaorios DEX must be present in `framework.jar` so the call sites below can resolve `Landroid/security/kaorios/KaoriosHook;`.

If the ROM does not already contain a Kaorios DEX:

- keep every stock DEX;
- choose the next unused `classesN.dex` slot;
- add the Kaorios DEX there.

Example:

```text
classes.dex
classes2.dex
classes3.dex
classes4.dex
```

Add Kaorios as:

```text
classes5.dex
```

Do not overwrite a stock DEX that contains `ActivityThread`, `Build` or other framework classes.

---

# 2. framework.jar

## 2.1 ActivityThread — process initialization

**Class**

```smali
Landroid/app/ActivityThread;
```

**Method**

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

No extra register is required.

The method must contain exactly one `initActivityThread(Ljava/lang/Object;)V` call after patching.

---

## 2.2 Instrumentation — Context initialization

**Class**

```smali
Landroid/app/Instrumentation;
```

Patch both overloads.

### Overload 1

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Before the final `return-object`:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

### Overload 2

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Before the final `return-object`:

```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

No register increase is required.

---

## 2.3 ApplicationPackageManager — system feature spoof

**Class**

```smali
Landroid/app/ApplicationPackageManager;
```

**Method**

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Immediately after `.registers X` or `.locals X`, insert:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock

invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0

return v0

:cond_kaorios_feature_stock
```

When the hook returns `null`, stock logic continues.

If the ROM already contains the label `:cond_kaorios_feature_stock`, use another unique label.

---

## 2.4 AndroidKeyStoreKeyPairGeneratorSpi — software key pair

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Method**

```smali
generateKeyPair()Ljava/security/KeyPair;
```

### Method using .registers

If stock has:

```smali
.registers 15
```

increase it to:

```smali
.registers 16
```

This instance method only has `p0`, so the new local is:

```text
vX = v(new_register_count - 2)
```

With `.registers 16`, use `v14`.

Insert after the register directive:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios_gen_stock

return-object v14

:cond_kaorios_gen_stock
```

### Method using .locals

If stock has:

```smali
.locals 14
```

change it to:

```smali
.locals 15
```

and use the new local `v14`.

Use another unique label if `:cond_kaorios_gen_stock` already exists.

---

## 2.5 AndroidKeyStoreSpi — certificate chain filter

**Class**

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Method**

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Find the final `return-object`, then find the last `aput-object` before it which populates the Certificate array.

Example:

```smali
aput-object v2, v3, v4

return-object v3
```

Here `v3` is both the array register and final return register.

Insert:

```smali
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

Result:

```smali
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

If the array register differs from the final return register, pass the array register to the hook and move the result into the register used by the final `return-object`.

---

## 2.6 Build.smali — Android 17

**Class**

```smali
Landroid/os/Build;
```

For these String fields, remove `final` and append `= null`:

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

Example:

**Before**

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

**After**

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
```

For `TIME:J`, remove only `final`.

Do not append `= null` to the long field.

---

## 2.7 Build$VERSION.smali — Android 17

**Class**

```smali
Landroid/os/Build$VERSION;
```

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Do not append `= null`.

Keep `SDK_INT` unchanged.

See [notes-a17.md](notes-a17.md).

---

# 3. services.jar

## 3.1 ComputerEngine — caller-aware app hiding

**Class**

```smali
Lcom/android/server/pm/ComputerEngine;
```

The current patcher prefers:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

and falls back to:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

### Step 1 — allocate one extra local

For the `IIZZ` overload, parameter width is 8 registers:

```text
p0 this
p1 PackageStateInternal
p2 int
p3 ComponentName
p4 int
p5 int
p6 boolean
p7 boolean
```

If the method uses `.locals N`, change it to `.locals N+1` and use `vN` as `vHook`.

If it uses `.registers R`:

```text
stock locals = R - 8
new .locals = R - 8 + 1
vHook = v(R - 8)
```

For the `II` overload, parameter width is 4:

```text
stock locals = R - 4
new .locals = R - 4 + 1
vHook = v(R - 4)
```

### Step 2 — inject at the beginning of the method

Insert after the register/local declaration, parameters and leading annotations.

#### IIZZ overload

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

#### II overload

Use `p3` as the user id:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook

if-eqz vHook, :cond_kaorios_ps_null

invoke-static {p2, vHook, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null

const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Replace every `vHook` with the real new local register.

The current script targets one overload according to the priority above; do not blindly patch every overload.

---

## 3.2 SystemServer — initialization hook

**Class**

```smali
Lcom/android/server/SystemServer;
```

**Method**

```smali
run()V
```

Visibility may be `private`, `public`, or another valid modifier combination.

Find the single:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Insert immediately before it:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-static {}, Landroid/os/Looper;->loop()V
```

No register increase is required.

> Older documentation used the `startOtherServices(...)` call as the anchor. The current Android 17 patcher uses the `Looper.loop()` anchor.

---

# 4. SettingsProvider.apk

## 4.1 SettingsProvider.call — caller-aware Settings Bundle filter

**Class**

```smali
Lcom/android/providers/settings/SettingsProvider;
```

**Method**

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

The current patcher patches this Binder-facing Bundle method. It does not patch a String-returning GET helper.

### Step 1 — allocate one extra local

Parameter width is 4:

```text
p0 this
p1 method
p2 name
p3 args
```

If the method uses `.locals N`, change it to `.locals N+1` and use `vN`.

If it uses `.registers R`:

```text
stock locals = R - 4
new .locals = R - 4 + 1
vHook = v(R - 4)
```

### Step 2 — find getDeviceId()

Inside the same `call(...)` method find:

```smali
invoke-virtual {...}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
```

If a `move-result` follows it, inject after that `move-result`.

Then add:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock

return-object vHook

:cond_kaorios_settings_stock
```

Replace `vHook` with the local allocated above.

The hook must remain before a later `Binder.clearCallingIdentity()`, if present.

If the hook returns `null`, stock SettingsProvider logic continues.

### Register example

Stock:

```smali
.registers 12
```

There are four parameter registers, therefore eight stock locals. Change to:

```smali
.locals 9
```

and use `v8` for the hook result.

---

## 4.2 Repack and sign SettingsProvider.apk

After reassembling the modified DEX:

1. Replace only that DEX in the APK.
2. Remove stale v1/JAR signing files if present:
   - `META-INF/MANIFEST.MF`
   - `META-INF/*.SF`
   - `META-INF/*.RSA`
   - `META-INF/*.DSA`
   - `META-INF/*.EC`
3. Preserve unrelated `META-INF` entries.
4. Repack.
5. Zipalign.
6. For direct ROM deployment, sign with the target ROM platform key/certificate.

Do not use a different certificate when the ROM requires SettingsProvider to retain the platform signature.

---

# 5. Post-patch verification

## framework.jar

The Kaorios DEX should expose exactly one of each required signature:

```text
initActivityThread(Ljava/lang/Object;)V
initSystemServer()V
shouldHideAppListForCaller(ILjava/lang/String;I)Z
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
initContext(Landroid/content/Context;)V
hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
```

## services.jar

- one `shouldHideAppListForCaller(...)` call in the selected ComputerEngine method;
- one `initSystemServer()V` call in `SystemServer.run()V`;
- `initSystemServer()V` is before `Looper.loop()V`.

## SettingsProvider.apk

- one `filterSettingsCall(...)` call in `call(...): Bundle`;
- the hook is after `getDeviceId()I`;
- the hook is before `Binder.clearCallingIdentity()`, when present;
- the new local does not overlap a stock register.

## Build

Only the documented fields should lose `final`. Keep `SDK_INT` unchanged.

A successful Smali assemble only proves the bytecode is structurally valid. Boot and runtime-test the patched ROM before release.

---

# 6. Reference templates

Use these only to compare patch placement. Do not replace target-ROM classes with the template classes.

- [Framework template](../Template/Template_V2060/framework)
- [Services template](../Template/Template_V2060/service)
- [Android 17 Build notes](notes-a17.md)
- [Disable FLAG_SECURE](Disable_Secure_Flag.md)
- [CorePatch](CorePatch.md)

The scripts under `script/` remain the reference for exact anchors and register-allocation logic.
