# Kaorios Toolbox Framework 2.0.6.1 — Manual patch, Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.1_VI.md)

This guide explains how to edit the target ROM's smali by hand. Commands and modes for the automatic tool are in the separate [patcher guide](Patcher_Guide_2.0.6.1.md).

## 1. Prepare the stock files and payload

Keep clean `framework.jar`, `services.jar` and `SettingsProvider.apk` from the exact ROM build, plus their original hashes. Work on copies. An OTA requires a new set of stock files.

Obtain the matching published Kaorios framework payload for Toolbox 2.0.6.1. Extract its DEX and inspect the actual class/method descriptors before adding callers. A manager APK alone is not a framework payload. Keep every payload dependency, including AdvancedPolicy classes; importing only `KaoriosHook.smali` is insufficient.

### Select the payload file

The payload asset on the [v2.0.6.1 release](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.1) is named `classes.dex`; The signed manager APK remains on the [2.0.6.0 release](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0); 2.0.6.1 provides the framework payload and patcher update. Do not use a ROM or template `framework.jar` as the payload and import all its Android classes.

Before importing, inspect the payload DEX for the exact hook descriptors in sections 5–7 and these eight fully named classes:

```text
android/security/kaorios/settings/IAdvancedPolicyService
android/security/kaorios/settings/IAdvancedPolicyService$Stub
android/security/kaorios/settings/IAdvancedPolicyService$Stub$Proxy
android/security/kaorios/settings/AdvancedPolicyClient
android/security/kaorios/settings/AdvancedPolicyService
android/security/kaorios/settings/AdvancedPolicySnapshot
android/security/kaorios/settings/ServiceManagerBridge
android/security/kaorios/settings/SettingDecisionParcel
```

The installed-app API also requires named `com.kousei.framework.KaoriosFramework$InstalledAppEntry` and `com.kousei.framework.KaoriosFramework$InstalledAppsSnapshot` types and their fields. Keeping a method name alone is insufficient: renaming its return type changes the descriptor used by the APK.

**New 2.0.6.1 payload (2026-10-05):** `classes.dex` is a rebuilt payload, 573,444 bytes, SHA-256 `479ca2a935e0abe8bc7d429bfd94be1bd2b00c54050c55bfad1e5a534ad845d0`. Checks covered 11 hook methods, the eight AdvancedPolicy classes above, both installed-app snapshot types and the published manager's direct framework references. The payload contains worker-based SystemServer initialization. These are host/artifact checks; device boot, HMA and attestation remain unverified.

Use smali/baksmali and an archive editor. For APK deployment, also arrange the ROM's platform signing process before editing. Changing a DEX invalidates the original APK content signature.

The [versioned templates](../Template/Template_V2060/README.md) are examples from MIUI/HyperOS builds, not replacement classes. Select `a13/`–`a17/` matching Android, then compare the method descriptor and flow against your own ROM. AOSP/Evolution X/OEM register numbers can differ.

---

## 2. Find the owning DEX

Extract and disassemble each DEX separately:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input
for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_$name"
done
rg -n '^\.class .*Landroid/app/ActivityThread;' work/framework
```

Repeat for `services.jar`, `SettingsProvider.apk` and the payload, using separate workspaces. Search every split. Record a table of class descriptor → archive → original DEX → smali path. Never assume a class is in `classes.dex`.

Keep the original manifest, resources and non-DEX entries. Do not rebuild an APK's resources merely to change its bytecode.

---

## 3. Import classes: replace duplicates, retain the ROM

Import the payload into `framework.jar` by **class descriptor** across all its DEX splits:

1. Inventory every original and payload descriptor from the `.class` line, not the filename.
2. If a payload descriptor already exists, replace that class in its original owner DEX. Remove any additional duplicate owner.
3. Add new payload classes to a chosen framework DEX with sufficient method/type/reference capacity. If that split exceeds DEX limits, redistribute the added classes with a multidex-capable tool and check class visibility.
4. Retain every original class whose descriptor is absent from the payload.
5. Edit the Android hook classes from this ROM. Never replace `ActivityThread`, `ComputerEngine` or `SettingsProvider` with a whole template class.
6. Check each output descriptor has exactly one owner. The descriptor set must equal the union of original and payload descriptors; every unmatched original class must remain unchanged.

For example, if `KaoriosHook` already belongs to `classes6.dex`, replace that class inside `classes6.dex`; do not replace the entire split with the release DEX. Otherwise, unrelated ROM classes in that split disappear. Import the complete payload once in the framework; services and provider call those framework classes.

### Using a DEX editor

Open a copy of the original `framework.jar` as an archive, then open its DEX splits in a multidex view. Import **all classes from every payload DEX**. Choose replacement for matching descriptors and addition for new descriptors, while retaining the other classes. If the editor operates on one split at a time, first locate each existing descriptor across the full archive so it is replaced in its owner rather than duplicated in the currently open split. Save/export the changed DEX entries under their original names, then reopen the final archive and search across all splits again.

Use the same editor to modify the Android hook methods below in their original owner DEX. Keep the archive backup outside the editor's working file. A successful import dialog does not prove that dependencies were included or duplicate owners were removed.

---

## 4. Plan registers before inserting a hook

For an instance method, `p0` is `this`. Parameters occupy the last physical registers; `J` and `D` each occupy two slots. Static methods have no implicit `this`. `.locals L` counts only locals; `.registers R` counts locals plus parameter slots.

```smali
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    # 9 locals: v0..v8; p0=v9, p1=v10, p2=v11, p3=v12
```

Adding one local changes this example to `.locals 10` (or `.registers 14`); the new scratch is `v9`, and parameters move to physical `v10..v13`. Before growth, convert **existing parameter operands** `v9..v12` to `p0..p3`, including ranges and debug register references. Keep local operands `v0..v8` intact. Do not rename quoted strings, labels, field names or descriptors.

Before/after operand example (method excerpts, not full method replacements):

```smali
    # Before: .registers 13, p1 is physical v10.
    .registers 13
    move-object v0, v10
    const-string v1, "v10"
```

```smali
    # After: 10 locals + 4 parameter slots = 14 registers.
    .locals 10
    move-object v0, p1
    const-string v1, "v10"
    # v9 is now the fresh local; p1 is physical v11.
```

The first instruction uses `v10` as a parameter alias, so it becomes `p1`; the string `"v10"` stays unchanged. A method originally using `.locals 9` has the same physical alias mapping and needs the same audit.

Growing locals also shifts parameters in methods already using `.locals`. Audit every instruction that uses `pN`: its physical register may now exceed the opcode limit. Ordinary `invoke-* {…}` accepts at most five register words, each at `v0..v15`. `/range` needs a contiguous physical argument sequence. `move-result*` and `return*` use an 8-bit register; `if-eqz` also needs an 8-bit register, while two-register comparisons have tighter limits. Select `move-object/from16`, `move-object/16`, `move/from16` or `move/16` as appropriate to the source/destination.

| Instruction | Physical register limits |
|---|---|
| `invoke-static {…}`, `invoke-interface {…}` | Each argument 0–15; at most 5 words |
| `invoke-*/range {… .. …}` | First register 0–65535; at most 255 consecutive words |
| `move-result*`, `return*`, `if-eqz`, `const/16` | Register 0–255 |
| `move-object/from16` | Destination 0–255, source 0–65535 |
| `move-object/16` | Both registers 0–65535 |
| `const/4`, `if-eq`, `iput-object` | Each encoded register 0–15 |

These are encoding limits; every used register must still fit the declared register frame. Wide values also require a valid second slot.

Opcode limits and result-consumption rules: [AOSP Dalvik specification](https://source.android.com/docs/core/runtime/dalvik-bytecode). Audit stock `const/4`, `iput-object` and other instructions after parameter shifts, not only invocations. The blocks below are insertion/replacement excerpts; an `Original …` comment means retain the original code there.

A range that crosses the old local/parameter boundary changes its argument count when locals grow. Rewrite that call with a proven contiguous argument block, or preserve the old physical slots by copying parameters at entry and using those slots throughout the original body. Do not simply increase `.locals`.

For snippets using `v0`, it must be a real local (at least one local), not the alias of `p0` in a zero-local method. If allocating a local is necessary, complete the parameter-shift/encoding audit before inserting the hook.

Every snippet below states its register assumptions. Scratch registers must be unused or proven dead at the insertion point on every incoming path; choose fresh label names. Insert executable code outside annotation blocks, before a stock entry label when the hook must run only on method entry. Do not move code across exception/monitor boundaries without tracing their behavior.

An `invoke-*` and its consumed `move-result*` must remain adjacent executable instructions. Debug directives and blank lines emit no instruction; inserting a hook between them breaks the pair.

---

## 5. Edit framework.jar

### 5.1 Instrumentation: app context

Class `Landroid/app/Instrumentation;`, both overloads:

- Static `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`: context is `p1`.
- Instance `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`: context is `p3` at entry.

Find the existing `Application.attach(Context)` on the successful application-creation path. Insert `initContext` immediately after attach, using that same Context operand. Keep the application's return register unchanged. Example for the static overload with app in `v0` and context still in `p1`:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    return-object v0
```

For the instance overload, use `p3` only if it still holds the context at that location; trace any aliases. If its physical register exceeds 15, use `invoke-static/range {p3 .. p3}`. Do not hook exception exits.

### 5.2 ActivityThread: process initialization

Class `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

Locate the assignment to `mBoundApplication`. Trace the method-entry `this` and `AppBindData` aliases to that assignment, then insert the hook **after** the field write with the same AppBindData operand. Example where `v1` is this and `v9` is AppBindData:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Do not pass the ActivityThread receiver to this hook. For a high AppBindData register, use `invoke-static/range {vN .. vN}` with the actual register. No extra local is needed.

### 5.3 ApplicationPackageManager: feature result

Method `hasSystemFeature(Ljava/lang/String;I)Z` in `Landroid/app/ApplicationPackageManager;`. At method entry, `p1` is feature name and `p2` is version. Insert before the original first executable instruction. The example assumes `v0` is available and the physical parameter registers are at most 15:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
    # Original first instruction and the complete stock body follow.
```

A null Boolean means continue the stock logic. A non-null Boolean must be unboxed; do not treat the Boolean object itself as a primitive result. At high registers, stage name/version into two consecutive scratch locals and use `/range`.

### 5.4 AndroidKeyStoreKeyPairGeneratorSpi: generation

Method `generateKeyPair()Ljava/security/KeyPair;` in `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`. Insert at method entry, before stock instructions. The example assumes `v0` is available on entry:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
    # Original stock body follows.
```

The receiver is the generator (`p0`), not a context. Null falls back to the complete original generation path. Keep its cleanup and exception handling.

### 5.5 AndroidKeyStoreSpi: certificate chain

Method `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;` in `Landroid/security/keystore2/AndroidKeyStoreSpi;`. Trace where the stock leaf and CA certificates form the final array. Filter each successful complete-chain return path; preserve stock null/error returns.

```smali
    # v3 contains the complete stock certificate array on this path.
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Replace `v3` with the actual array/return register. The `move-result-object` must overwrite the array that is returned. Returning a different, unmodified register discards the rewritten chain. Use a one-register `/range` invocation if needed.

Also patch `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;` in the same class. Insert this block after its register directive, before the original instructions. It uses two existing local scratch registers (`v0`, `v1`); allocate/remap safely first if the method has fewer than two locals. This routes leaf reads through the same chain hook. Keep the complete stock body for trusted-certificate entries and null/empty chains.

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
    # Original stock body follows.
```

Use the framework build containing the AOSP 17 consistency fixes: imported software keys report KeyMint origin IMPORTED, and certificate rewriting uses deterministic ECDSA for identical key/body. Older payloads can still produce different DER signatures on repeated reads. This does not certify hardware provenance or Google Wallet compatibility. Compare `getCertificate(alias).getEncoded()` with `getCertificateChain(alias)[0].getEncoded()` for a new test key under unchanged configuration.

---

## 6. Edit services.jar

### 6.1 SystemServer: service lifecycle

In `Lcom/android/server/SystemServer;->run()V`, find the actual main `Looper.loop()V` after service startup. Insert exactly one hook directly before that invocation:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

No scratch register is needed. Do not place the hook before `startOtherServices`, before provider/service startup, or in a constructor. Use the matching payload whose initialization schedules the potentially blocking work off the boot caller. A correctly placed caller cannot repair an old payload that blocks startup.

### 6.2 ComputerEngine: HMA package visibility

Find the `PackageStateInternal` overload through which this ROM's visibility checks converge:

- `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z`: `p1` package state, `p2` caller UID, `p5` user ID.
- `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z`: `p1` package state, `p2` caller UID, `p3` user ID.

Do not confuse the overload accepting `SharedUserSetting`. Insert at entry before stock checks; retain the entire stock fallback. Example for the seven-parameter overload with available `v0` and all invoke operands within 0..15:

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
    # Original visibility checks follow.
```

For the three-parameter overload, change only the hook's user operand to `p3` after verifying the signature. A true result means **filter/hide**, not allow. Null state/name and false hook results continue stock logic. Pass the target package's name, the original Binder caller UID and the correct user; never substitute the system-server UID.

If registers are high, reserve a consecutive `I, String, I` scratch block, stage UID/name/user with correctly typed moves, then invoke `/range`. Audit stock parameter operands after allocation. Adding the hook to an overload that callers never reach does not implement HMA.

### 6.3 ComputerEngine: installer source reads

Patch both read APIs when present: `getInstallerPackageName(String[, int])` and `getInstallSourceInfo(String[, int])`. Preserve stock package lookup, access checks and errors. Trace the installer string from `InstallSource.mInstallerPackageName` (or the ROM's equivalent) to its return or the **installing-package** constructor argument.

The hook takes `(ContentResolver, callingUid, userId, targetPackage, stockInstaller)` and returns the effective installer. In the supported framework path, a null resolver is passed. Capture caller UID and target/user at entry before stock code can overwrite their registers. For a one-String overload derive the user with `UserHandle.getUserId(callingUid)`; for `(String, int)` use the actual user argument.

Example assumes those values remain in entry `p1/p2` during capture, locals `v10..v14` have been safely reserved, and the stock installer is in `v2`:

```smali
    # Entry capture: p1 = target package, p2 = user ID.
    # v10..v14 must be dedicated locals throughout the stock body.
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Keep the complete stock body between the capture and read sites. At each proven installer String return, replace only `return-object v2` with:

```smali
    # Replace the stock return-object v2 at each proven installer return.
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Keep the captured UID/user/package intact across the stock body; choose another block if those slots are live. For `getInstallSourceInfo`, place the same filter after the stock installing string is known and before its constructor use. Feed the returned String back into that exact installing argument. Retain the initiating/originating package, signing data, package source and all other arguments. Do not stringify/filter the whole `InstallSourceInfo` object, and do not filter unrelated package names.

---

## 7. Edit SettingsProvider.apk

Class `Lcom/android/providers/settings/SettingsProvider;`. Edit the exact methods below in their owning DEX; keep the provider's stock read/write routing and permissions.

### 7.1 call(): spoofed Bundle or stock fallback

Descriptor: `call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;`. At entry: `p0` provider, `p1` method, `p2` setting name, `p3` extras.

Find the stock initialization call to `getDeviceId()I`, or, on layouts without it, `getRequestingUserId(Landroid/os/Bundle;)I`. Keep the original call **and its original `move-result` together**. Insert the hook after that complete pair, before stock routing, while `p1/p2` still hold the method and setting name. The example assumes nine old locals and a safely added scratch `v9`; `v4` remains the stock device ID:

```smali
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I
    move-result v4

    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :kaorios_settings_stock
    return-object v9
    :kaorios_settings_stock
    # Original instruction following the getDeviceId result continues here.
```

On a requesting-user layout, retain its original `invoke-static {p3}, …getRequestingUserId(Bundle)I` and original result register, then insert the same Bundle hook. Never replace the integer `move-result` with `move-result-object`.

A non-null Bundle returns immediately; null continues stock logic. Do not call `Settings.get*` or recursively invoke the provider from this inserted block. Do not replace stock writes or return an empty Bundle for every call.

For high `p1/p2`, the two argument slots are consecutive: use `invoke-static/range {p1 .. p2}`. The result scratch and branch/return registers must remain encodable. If there is no equivalent safe initialization point, trace the OEM method rather than assuming the template anchor exists.

**Known boot failure pattern:** a hook inserted between the stock `invoke` and its integer `move-result` can assemble successfully but leave an invalid result consumer. Re-signing the APK or enabling CorePatch cannot correct that instruction sequence.

### 7.2 query(): keep the original query inputs

Descriptor: `query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;`.

At entry: `p1` URI, `p2` projection, `p3` selection, `p4` selectionArgs, `p5` sortOrder. Optimized stock code can overwrite these parameters. Allocate **three dedicated locals**, normalize old parameter aliases, and save URI/selection/selectionArgs before the first executable stock instruction:

```smali
    # Example: original query had 5 locals. Allocate 3 more: .locals 8.
    move-object/from16 v5, p1
    move-object/from16 v6, p3
    move-object/from16 v7, p4
```

Concrete mapping: this instance query has six parameter slots. Stock `.registers 11` means five locals; old `v5..v10` aliases correspond to `p0..p5`. Normalize those operands first, then use `.locals 8` (14 total registers). The new `v5..v7` locals are no longer parameters; parameters now occupy `v8..v13`.

Keep `v5..v7` untouched throughout the original body. Immediately before **every** `return-object`, filter the stock Cursor using those saved inputs and return the hook's result. Example after growth where `p0` is physically `v8`, so all operands fit the ordinary invocation:

```smali
    # p0 holds the stock Cursor on this example's return path.
    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0
```

Use the actual return register for each path, including stock null returns. Do not use an overwritten `p1/p3/p4` as the query inputs. If a high-register return cannot fit the invocation, stage Cursor/URI/selection/selectionArgs into a separate four-slot contiguous block and use `/range`. Other query overloads require tracing their delegation; do not paste this parameter mapping into a Bundle overload.

---

## 8. Optional Build field edits for Android 17

Apply this section only for an Android 17 profile needing mutable Build spoof fields. Keep the ROM's `<clinit>` initialization.

In `Landroid/os/Build;`, remove `final` and set the String field initializer to `null` for:

`BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.

```smali
    # Before:
.field public static final BRAND:Ljava/lang/String; = "example"
# After:
.field public static BRAND:Ljava/lang/String; = null
```

For `TIME:J`, remove only `final`. In `Landroid/os/Build$VERSION;`, remove `final` only from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Keep `SDK_INT` and unrelated fields unchanged. Do not copy Android 17 field declarations into Android 13–16.

---

## 9. Assemble and package the edited artifacts

Assemble each modified smali tree to its **original DEX entry name**, then replace only those entries in a copy of the stock archive. Example for a `classes2.dex` input compatible with assembler API 34:

```bash
mkdir -p work/framework/output work/framework/recheck/input
smali a --api 34 work/framework/smali_classes2 \
    -o work/framework/output/classes2.dex
cp framework.jar work/framework/output/framework.jar
(cd work/framework/output && zip framework.jar classes2.dex)
unzip -p work/framework/output/framework.jar classes2.dex \
    > work/framework/recheck/input/classes2.dex
cmp work/framework/output/classes2.dex work/framework/recheck/input/classes2.dex
baksmali d work/framework/recheck/input/classes2.dex \
    -o work/framework/recheck/smali_classes2
```

Use plain `zip` to replace the entry, not `zip -u`: `-u` compares timestamps and can retain the stock DEX when the JAR entry is newer than the assembled file. `cmp` compares the assembled DEX with the DEX extracted from the **final JAR**, then re-disassemble that extracted copy. Use a fresh/empty recheck workspace to avoid stale classes.

Select the assembler API from the input DEX format/opcodes and supported toolchain, not by copying the ROM SDK number. Inspect the input/output DEX header. Do not force a newer DEX container format merely because the ROM is Android 17. In the supplied ROM artifact checks, framework/services used API 34 and provider used API 29; these values are evidence for that artifact, not defaults for every ROM.

Repeat for every changed split and preserve untouched DEX hashes. Inspect the final ZIP entry list: no duplicate entry names, no missing splits, no accidental `work/` directory prefix.

For `SettingsProvider.apk`, preserve manifest/resources and sign through the ROM build/platform signing process, then verify the output signature with the SDK's `apksigner verify`. Copying `META-INF` or the original APK Signing Block does not validate modified content. An unsigned host test artifact is not a deployable APK. A system overlay with invalid digests is usable only if the exact ROM's trusted-system scan behavior has been independently established; a generic manual guide cannot assume that bypass.

After signing, check signature validity and signer identity separately:

```bash
apksigner verify --verbose --print-certs SettingsProvider.apk.orig
apksigner verify --verbose --print-certs SettingsProvider-signed.apk
```

Successful verification validates that APK signature. Compare signer certificates/lineage with stock and the ROM platform/shared-UID requirements; an APK signed with a different key can verify yet be rejected by the ROM. Run zipalign before signing and do not modify the ZIP after signing. See the [apksigner documentation](https://developer.android.com/tools/apksigner).

---

## 10. Inspect the final bytecode by hand

Extract and re-disassemble **the packaged output**, not just the pre-assembly workspace. Check:

1. Every payload method referenced by a hook exists with the exact descriptor; all dependency classes are present and uniquely owned.
2. Both Instrumentation overloads call the hook after attach with the actual Context; ActivityThread passes AppBindData after `mBoundApplication` assignment.
3. Each result consumer follows its producer, uses the correct primitive/object/wide variant, and feeds the branch/return that actually uses it.
4. Nullable hooks reach intact stock fallback paths. No stock parameter changed identity after local allocation; no range acquired extra arguments.
5. SystemServer initializes once just before its main loop. HMA runs on the used visibility path and passes caller UID, target name and user correctly.
6. Installer reads filter the installing string at its real return/constructor site. Provider query captures original inputs and filters every Cursor return.
7. Descriptor inventory matches the import plan, untouched DEX hashes match stock, and the provider signature verifies with the intended ROM signer.

Assembler success checks syntax/encoding, not every ART type/control-flow rule. Re-disassembly establishes what was packaged; neither proves a real device boot. Keep host, artifact and device results separate.

---

## 11. Deploy, isolate boot failures and test features

Deploy only artifacts built for the exact ROM. A module must mount framework/services and the provider at their actual stock paths with appropriate ownership and SELinux labeling. Do not install the provider with `pm install`; prepare a recovery route before the first reboot.

First test the framework payload and framework/services hooks with the stock provider. After that boots, add the correctly signed patched provider. Then test Toolbox startup, per-app Settings behavior, HMA and installer-source behavior. Add FLAG_SECURE/CorePatch only after the core integration works.

Capture the earliest available boot failure:

```bash
adb logcat -b all -v threadtime > boot.log
# Run in a separate terminal after the system responds:
adb shell getprop sys.boot_completed
```

If SettingsProvider causes bootloop, disable the overlay module or restore the complete stock artifact set to recover. For module ID `kaorios_rom_hzz`, create a `disable` file in each existing `/data/adb/modules/kaorios_rom_hzz/` and `/data/adb/modules_update/kaorios_rom_hzz/` directory through root/recovery, then reboot. Recovery access requires the data partition to be accessible. Do not erase Settings storage to compensate for a broken method.

After recovery, inspect the first `VerifyError`, `ClassNotFoundException`/`NoSuchMethodError`, signature rejection or SELinux denial. Check the invoke/result pair, registers and payload before changing signing/SELinux policy. If framework/services boot with stock provider but fail with patched provider, that narrows the failure to the provider integration; it does not identify a specific cause without logs.

The supplied `hzz` profile had a reported bootloop and a confirmed provider invoke/result defect. Corrected artifact checks passed; real-device boot remains unverified. For HMA, configure the **caller app** and the template of target apps to hide, force-stop the caller and test again. For attestation, apply the target/mode and generate a fresh key using the [attestation guide](Attestation_Guide_2.0.6.1.md).

### Provider process and SELinux domain

Read the actual manifest: provider-level `android:process` overrides the application's process; the default is the package name, and a `:name` process is package-relative. The supplied profile uses shared process `system`, not `system_server`. A package-name-only process search can miss it.

Match the first NUL-terminated name in `/proc/<pid>/cmdline`, then read `/proc/<pid>/attr/current`. Use the observed domain for the exact ROM. Do not guess `system_app` or make SELinux permissive. Passing file hashes does not validate process/domain detection or runtime Binder permissions.

---

## 12. Optional patches

For developer/ADB status hiding, inspect the String-returning `Settings$NameValueCache.getStringForUser(...)` overload in this ROM. The versioned `framework/Settings$NameValueCache.smali` shows the `shouldHideDevStatusFromNameValueCache(ContentResolver, String, int)Z` entry hook: true returns `"0"`, false continues stock. Verify the resolver/name/user operands and scratch register before using it; keep writes intact.

For the instance descriptor `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`, entry `p1/p2/p3` are resolver/name/user. With an available `v0`, insert this before the original first executable instruction:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
    # Original stock body follows.
```

The range contains exactly the three parameter slots. Do not apply it to a different overload or grow locals without auditing the original instructions.

See the separate [FLAG_SECURE guide](Disable_Secure_Flag.md) and [CorePatch guide](CorePatch.md) for those optional edits. Neither is a repair for invalid SettingsProvider bytecode.
