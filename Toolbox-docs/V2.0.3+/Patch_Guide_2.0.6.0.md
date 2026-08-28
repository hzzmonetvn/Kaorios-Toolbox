# Kaorios Toolbox Framework 2.0.6.0 — Beginner Patch Guide

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

Reference smali from a patched HyperOS Android 17 ROM: [`Template/Template_V2060`](../Template/Template_V2060)

> [!IMPORTANT]
> This guide assumes you are starting from **clean, stock `framework.jar` and `services.jar` from the target ROM**.
>
> If those files were already patched by Kaorios, another framework mod, or an older manual patch, this guide does **not** try to detect, undo, or merge the old changes. Restore clean files first, or merge the changes yourself.

This guide explains the patch in the order a first-time ROM builder should do it: add the Kaorios DEX, patch the required framework hooks, patch `SystemServer`, rebuild, boot-test, then add optional hooks.

---

## 1. What you need

Before editing anything, prepare:

- A clean copy of the target ROM's `/system/framework/framework.jar`.
- A clean copy of the target ROM's `/system/framework/services.jar`.
- The Kaorios Framework 2.0.6.0 `classes.dex` artifact.
- `smali` and `baksmali`.
- A ZIP/JAR tool such as `7z`, `zip`, or `unzip`.
- A text search tool such as `rg` (ripgrep).
- A recovery method in case the ROM bootloops.

Keep the original JAR files somewhere safe. Never test with your only copy.

### Android 17 users

Use **smali/baksmali 3.x or newer** and API 37. Read [`notes-a17.md`](notes-a17.md) before patching Android 17 because `Build` fields need one extra change there.

---

## 2. Understand what you are editing

`framework.jar` and `services.jar` can contain more than one DEX:

```text
classes.dex
classes2.dex
classes3.dex
...
```

A class can be in any one of those DEX files. Do **not** assume that a class is always in `classes3.dex` just because the template uses that layout.

You only need to disassemble the DEX that contains the class you want to edit.

For a quick inspection:

```bash
mkdir -p work/framework work/services
unzip -q framework.jar -d work/framework
unzip -q services.jar -d work/services
```

On Android 17, a typical disassemble command is:

```bash
java -jar baksmali-3.0.8.jar d work/framework/classes3.dex --api 37 -o work/fw3
java -jar baksmali-3.0.8.jar d work/services/classes.dex --api 37 -o work/sv1
```

Repeat with the correct `classes*.dex` for your ROM.

> [!NOTE]
> The DEX number and local register numbers shown in examples are examples only. Match the class, method descriptor, and surrounding instructions in **your own ROM**.

---

## 3. Add the Kaorios Framework DEX

Do this before adding hooks.

1. Open the clean stock `framework.jar`.
2. Check the highest existing DEX number.
3. Rename the Kaorios 2.0.6.0 artifact `classes.dex` to the **next unused** DEX name.
4. Add it to the root of `framework.jar`.
5. Keep every stock DEX unchanged.

Example: if stock `framework.jar` contains:

```text
classes.dex
classes2.dex
classes3.dex
classes4.dex
classes5.dex
classes6.dex
```

rename the Kaorios DEX to:

```text
classes7.dex
```

and add `classes7.dex` to `framework.jar`.

**Do not replace a stock DEX with the Kaorios DEX.**

Because this guide is for clean files, `Landroid/security/kaorios/KaoriosHook;` should not already exist in the stock framework. If it already exists, stop here: you are no longer working from the clean starting point assumed by this guide.

### First boot-test

If possible, boot-test once with only the extra Kaorios DEX added and no smali hooks yet. This separates DEX packaging problems from hook problems.

---

## 4. Hook descriptors used by 2.0.6.0

These signatures must be typed exactly:

| Feature | Kaorios hook descriptor |
|---|---|
| App initialization | `initContext(Landroid/content/Context;)V` |
| `system_server` initialization | `initSystemServer()V` |
| System feature spoof | `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` |
| Software key generation | `initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;` |
| Certificate chain replacement | `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` |
| Cached KeyStore2 entry, optional | `OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;` |
| Hide developer status | `shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Hide app list | `shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Installer source spoof | `filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Settings value replacement | `filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Remove a setting | `shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z` |
| Disable `FLAG_SECURE` | `isSecureFlag()Z` |

A wrong parameter order or return type can compile successfully and still crash at runtime, so copy the descriptor exactly.

---

# Part A — Required patches

## 5. `framework.jar`: initialize Kaorios for each app

### Class

```smali
Landroid/app/Instrumentation;
```

There are commonly two `newApplication` overloads. Patch whichever versions exist in your ROM.

### Method A

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

Find the existing `Application.attach()` call. Insert the Kaorios call **after `attach()` and before the application is returned**:

```smali
invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

return-object v0
```

### Method B

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

Use the `Context` parameter from this overload:

```smali
invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V

return-object v0
```

> [!WARNING]
> Do not move `initContext()` before `Application.attach()`.

This hook is required for app-side features such as PIF/property spoofing, Google Photos spoofing, game properties, and other per-app behavior.

---

## 6. `framework.jar`: hook `hasSystemFeature`

### Class

```smali
Landroid/app/ApplicationPackageManager;
```

### Method

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Insert this near the beginning of the method, after the method register/local declaration and before stock feature handling:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock

invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

How it works:

- Hook returns `null` -> continue into the ROM's original code.
- Hook returns a `Boolean` -> use that value immediately.

The hook return type is **`Ljava/lang/Boolean;`**, not primitive `Z`.

> [!NOTE]
> The example uses `v0`. Make sure that using `v0` at this point is valid in your method. Do not blindly increase `.registers` just to create a temporary register.

---

## 7. `framework.jar`: hook software key generation

### Class

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

### Method

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Insert the hook at the **start of the method**, before stock code reaches `getSecurityLevel()` or begins hardware-backed key generation.

The Android 17 reference template has a free object local at `v14`:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios_gen_stock
return-object v14

:cond_kaorios_gen_stock
```

Behavior:

- Non-null result -> Kaorios generated the key, return it.
- Null result -> continue into the ROM's original method.

### Register warning

`v14` is **not universal**. It is only correct for the provided Android 17 template.

Do not use the old rule "increase `.registers` by one and use `registers - 2`" without checking the method. Increasing `.registers` can change how parameter registers map when the original method also references parameters as `vN`.

For another ROM, use a genuinely free object local or adapt the method carefully.

---

## 8. `framework.jar`: hook the certificate chain

### Class

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

### Method

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Near the end of the method, find where the leaf certificate is put into the final `Certificate[]`, then pass that **array** to Kaorios before it is returned.

Typical pattern:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

The important part is not the register number. The important part is that the argument passed to `CertificateChainIfNeeded()` is the same register that contains the final `Certificate[]`.

> [!WARNING]
> Do not pass `{p0, p1}` to this hook. It accepts exactly one `Certificate[]` argument.

If the method has several valid `return-object` branches, either hook each final chain branch or route those branches through one common hooked return path.

---

## 9. Android 17 only: make selected `Build` fields writable

On Android 17, Kaorios cannot reliably replace selected `Build` values while those fields remain `static final`.

If the target ROM is Android 17 / SDK 37, complete the steps in:

[`notes-a17.md`](notes-a17.md)

Do this to the stock `Build.smali` and `Build$VERSION.smali` classes from the target ROM, not to the Kaorios DEX.

Android 12-16 users can skip this section.

---

## 10. `services.jar`: initialize Kaorios in `SystemServer`

### Class

```smali
Lcom/android/server/SystemServer;
```

The purpose is to call:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

once during `system_server` startup.

### Pattern A — AOSP / Qualcomm / current HyperOS Android 17 template

Insert near the beginning of `run()V`:

```smali
.method private run()V
    .registers 20

    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    # original ROM instructions continue here
```

### Pattern B — MediaTek / ROMs where the template structure differs

A practical insertion point is immediately before the existing call to `startOtherServices(...)`:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

The registers used by the ROM's `startOtherServices` call can differ. **Do not copy `{v1, v3}` unless your original method already uses them there.** Only the relative insertion point matters.

This hook initializes Kaorios system-side services including OMK / RootOfTrust handling.

### Boot-test here

At this point you should have:

- the Kaorios DEX inside `framework.jar`;
- `Instrumentation` patched;
- `hasSystemFeature` patched;
- the two KeyStore SPI hooks patched;
- Android 17 `Build` fields patched when required;
- `SystemServer` patched.

Rebuild and boot-test before adding optional features.

---

# Part B — Optional patches

Optional hooks depend more heavily on ROM implementation details. Patch them only after the required core patch boots correctly.

## 11. Hide Developer Options / ADB status

### Class

```smali
Landroid/provider/Settings$NameValueCache;
```

Use the overload that returns `String`:

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Typical hook:

```smali
if-eqz p2, :cond_kaorios_dev_stock

invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0

if-eqz v0, :cond_kaorios_dev_stock

const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

The Kaorios hook returns primitive `Z`. The ROM method you patch must return `Ljava/lang/String;`.

If your ROM has a different overload or returns a `Pair`, do not paste this block into it unchanged.

---

## 12. Hide installed apps per caller

A known Android 17 reference point is:

```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```

In the reference layout:

- `p2` = calling UID
- `p4` = target package state
- `p5` = user ID

Reference hook:

```smali
move/from16 v0, p2
move-object/from16 v1, p4
if-eqz v1, :cond_kaorios_hide_stock

:try_start_kaorios_hide
invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object v2

const/4 v3, 0x0
move/from16 v4, p5

invoke-static {v0, v3, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0

if-eqz v0, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0
:try_end_kaorios_hide
.catch Ljava/lang/Throwable; {:try_start_kaorios_hide .. :try_end_kaorios_hide} :catch_kaorios_hide

:catch_kaorios_hide
:cond_kaorios_hide_stock
```

The hook argument order is exactly:

```text
callingUid, resolver, targetPackageName, userId
```

Do not reuse an older patch that passes `resolver` first.

Because package-manager internals vary across Android versions and OEM ROMs, use [`Template/Template_V2060/AppsFilterBase.smali`](../Template/Template_V2060/AppsFilterBase.smali) only as a reference, not as a file to copy wholesale.

---

## 13. Spoof installer source

A reference target is:

```smali
Lcom/android/server/pm/ComputerEngine;
```

method:

```smali
getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
```

After the stock installer package name has been resolved, pass it through:

```smali
:try_start_kaorios_installer
const/4 v5, 0x0

invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_end_kaorios_installer
.catch Ljava/lang/Throwable; {:try_start_kaorios_installer .. :try_end_kaorios_installer} :catch_kaorios_installer

return-object v2
```

This is a register-layout example from the reference ROM. Before adapting it, identify in your own method:

1. calling UID;
2. user ID;
3. requested package name;
4. stock installer package name.

If user ID is not already available, derive it from the calling UID with `UserHandle.getUserId(callingUid)`.

---

## 14. Replace or remove Settings values

This patch is intentionally ROM-specific. Do not blindly inject it into every Settings read path.

Once you have identified the registers containing:

- namespace;
- setting name;
- returned string value;

pass them through:

```smali
const/4 vC, 0x0

invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

For configuration entries that represent removal (`value: null`), also use:

```smali
shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
```

and map the result to the target ROM's own representation of a missing setting.

`vC`, `vNs`, `vName`, and `vValue` above are labels for explanation, **not literal registers you can paste**.

---

## 15. Cached KeyStore2 entry hook — optional, normally skip

The KeyStore SPI patches in sections 7 and 8 are the normal integration path.

Only use the cached-entry hook when you have correctly identified an object of type:

```smali
Landroid/system/keystore2/KeyDescriptor;
```

Then the pattern is:

```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult

if-eqz vResult, :cond_kaorios_keystore_stock
return-object vResult

:cond_kaorios_keystore_stock
```

The package is `android/system/keystore2`, not `android/security/keystore2`.

---

## 16. Disable `FLAG_SECURE` — optional

This feature uses:

```smali
Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
```

The target implementation can involve:

- `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z`;
- `WindowState` / `WindowStateAnimator` secure-state logic;
- `setSecureLocked(Z)V` depending on the ROM.

Use the dedicated guide instead of trying to infer the patch from this page:

[`Disable_Secure_Flag.md`](Disable_Secure_Flag.md)

Reference files are also available in [`Template/Template_V2060`](../Template/Template_V2060).

---

# Part C — Rebuild and test

## 17. Reassemble only the DEX files you edited

Example for Android 17:

```bash
java -jar smali-3.0.8.jar a -a 37 work/fw3 -o work/framework/classes3.dex
java -jar smali-3.0.8.jar a -a 37 work/sv1 -o work/services/classes.dex
```

Then validate that the DEX is readable:

```bash
java -jar baksmali-3.0.8.jar list classes work/framework/classes3.dex >/dev/null
java -jar baksmali-3.0.8.jar list classes work/services/classes.dex >/dev/null
```

Search the disassembled output one last time:

```bash
rg -n 'Landroid/security/kaorios/KaoriosHook;->' work/fw3 work/sv1
```

Replace only the edited DEX entries inside copies of the original JAR files. Preserve all other JAR entries and all untouched DEX files.

System framework JARs do not need `zipalign`.

---

## 18. Flash / install safely

How you deploy the patched JARs depends on your ROM build system, recovery workflow, Magisk/KernelSU overlay, or image repack process.

The important rules are:

1. Keep clean stock `framework.jar` and `services.jar` ready for rollback.
2. Replace the correct system paths only.
3. Do not mix a new JAR with stale manually preserved optimized artifacts if your deployment method expects them to match.
4. Do not delete unrelated ART / dalvik caches with broad wildcard commands just because a patch guide tells you to.
5. Expect the first boot after framework changes to take longer than normal.

If you build the complete ROM from source, integrating the changes into the build tree and letting the build system regenerate optimized artifacts is preferable.

---

## 19. Recommended patch order for beginners

Do not patch everything at once.

1. Start from clean stock JARs.
2. Add the Kaorios DEX only -> boot-test.
3. Patch `SystemServer.initSystemServer()` -> boot-test.
4. Patch `Instrumentation.newApplication()` and `hasSystemFeature()`.
5. On Android 17, patch the selected `Build` fields from [`notes-a17.md`](notes-a17.md) -> boot-test.
6. Patch `generateKeyPair()` and `engineGetCertificateChain()` -> test key generation / chain behavior.
7. Add hide-dev and hide-app -> test them separately.
8. Add installer spoof, Settings filtering, and `FLAG_SECURE` last because these are the most ROM-specific.

This order makes a bootloop much easier to isolate.

---

## 20. Common mistakes

| Symptom | Most likely cause | What to check |
|---|---|---|
| Bootloop immediately after replacing JARs | Bad smali, wrong register, wrong method descriptor, or wrong DEX replaced | Re-disassemble the rebuilt DEX and check verifier/logcat errors |
| `NoClassDefFoundError` / Kaorios class missing | Kaorios DEX was not added correctly or the wrong JAR was flashed | Confirm the new `classesN.dex` exists inside the final `framework.jar` |
| PIF / Photos hook logs appear but `Build` values do not change on Android 17 | Required `Build` fields are still `final` | Follow [`notes-a17.md`](notes-a17.md) and inspect rebuilt `Build.smali` |
| Software GEN does not activate | Hook was placed too late or the temporary object register is wrong | Put it before stock `getSecurityLevel()` flow and verify the chosen register |
| Certificate chain is unchanged | Wrong register was passed to `CertificateChainIfNeeded()` | Pass the actual final `Certificate[]` register |
| Hide-dev does not work | Wrong `getStringForUser` overload or wrong return type | Target the `String`-returning overload; hook returns primitive `Z` |
| Hide-app hides the wrong packages or callers | Old argument order was reused | Use `uid, resolver, targetPackageName, userId` |

---

## 21. Final checklist

Before considering the ROM finished, confirm:

- [ ] You started from clean stock `framework.jar` and `services.jar`.
- [ ] Kaorios DEX was added as the next unused `classesN.dex` without replacing stock DEX files.
- [ ] `Instrumentation.newApplication()` calls `initContext()` after `Application.attach()`.
- [ ] `ApplicationPackageManager.hasSystemFeature()` uses `Ljava/lang/Boolean;`.
- [ ] `generateKeyPair()` can return the Kaorios `KeyPair` before stock hardware generation.
- [ ] `engineGetCertificateChain()` passes the actual `Certificate[]` to the hook.
- [ ] Android 17 selected `Build` fields were un-finaled, while `SDK_INT` stayed unchanged.
- [ ] `SystemServer` calls `initSystemServer()` once.
- [ ] Every edited DEX reassembles and disassembles successfully.
- [ ] Core patches boot correctly before optional patches are added.

If a clean stock file does not match the reference template, adapt the patch to the target ROM's real control flow. Do not replace whole smali classes from the template.