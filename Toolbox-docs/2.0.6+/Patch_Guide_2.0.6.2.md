# Kaorios Toolbox 2.0.6.2 — Patch guide

[Tiếng Việt](Patch_Guide_2.0.6.2_VI.md) | [Tool reference](../../script/README.md) | [CorePatch](CorePatch.md) | [Secure Flag](Disable_Secure_Flag.md)

Patch matching `framework.jar` / `services.jar` copies, rebuild them, then check the **packaged output**. The six framework caller owners are required; six classes does not mean six individual call sites. `SystemServer` and `ComputerEngine` live in services. Optional edits are identified separately below.

## Contents

1. [Prepare inputs and tools](#1-prepare-inputs-and-tools)
2. [Choose the automated or manual route](#2-choose-the-automated-or-manual-route)
3. [Disassemble and import the payload](#3-disassemble-and-import-the-payload)
4. [Patch framework callers](#4-patch-framework-callers)
5. [Patch services callers](#5-patch-services-callers)
6. [Reassemble and verify the packaged JARs](#6-reassemble-and-verify-the-packaged-jars)
7. [Troubleshooting and evidence](#7-troubleshooting-and-evidence)

## 1. Prepare inputs and tools

- Use both stock JARs from the **same ROM build** and the intended Toolbox framework payload `classes.dex`. KaoriosHelper's module ZIP / HMA DEX is not a replacement for this framework payload.
- Keep original JARs and their checksums outside the edit tree. Recovery is restoring those matching originals through your existing ROM recovery procedure; never overwrite the only copy.
- Work on standard DEX-containing JARs, not an OAT/VDEX-only extraction. Preserve every `classes*.dex` split and unrelated archive entry.
- Use Java, Python 3.9+, Bash, `zip`, `unzip`, and a matching smali/baksmali distribution. The repository's assembly tests use smali **3.0.8** with its runtime dependencies, including **jcommander 1.64**, not 1.82. A thin Maven JAR is not necessarily executable with `java -jar`.

Run from the public repository root. Example input layout:

```text
inputs/framework.jar
inputs/services.jar
inputs/payload.dex        # renamed copy of the intended framework classes.dex
/path/to/smali-3.0.8/     # smali, baksmali, dexlib2, util and dependency JARs
```

```bash
set -euo pipefail
TOOL_CP='/path/to/smali-3.0.8/*'
SMALI_API=34
java -version
python3 --version
java -cp "$TOOL_CP" com.android.tools.smali.smali.Main help assemble
java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main help disassemble
sha256sum inputs/framework.jar inputs/services.jar inputs/payload.dex
unzip -Z1 inputs/framework.jar
unzip -Z1 inputs/services.jar
WORK=$(mktemp -d "$PWD/patch-work.XXXXXX")
```

**Check:** both help commands exit 0; both JARs contain `classes*.dex`. Record the input checksums and tool versions. Do not substitute an Android API number for a supported assembler opcode level: `--api` on the artifact scripts labels the target, while `--smali-api` is passed to smali/baksmali. The examples below use **34 for a DEX 040-compatible input**; this is not a universal conversion rule for newer DEX formats/opcodes.

## 2. Choose the automated or manual route

### Automated artifact route

Use this route when the existing patchers recognize your ROM's layouts. It imports the framework payload, patches all required owners, rebuilds modified splits, re-extracts the candidate, and verifies before publishing a separate output. It does not apply optional Build edits.

```bash
bash script/patch-framework-a17-artifact.sh \
  --input inputs/framework.jar --output "$WORK/framework-patched.jar" \
  --kaorios-dex inputs/payload.dex \
  --baksmali /path/to/smali-3.0.8/smali-baksmali.jar \
  --smali /path/to/smali-3.0.8/smali.jar \
  --api 37 --smali-api "$SMALI_API"
bash script/patch-services-a17-artifact.sh \
  --input inputs/services.jar --output "$WORK/services-patched.jar" \
  --baksmali /path/to/smali-3.0.8/smali-baksmali.jar \
  --smali /path/to/smali-3.0.8/smali.jar \
  --api 37 --smali-api "$SMALI_API"
```

For the scripts' thin-JAR fallback, put `smali-dexlib2.jar`, `smali-util.jar`, `antlr-runtime.jar`, `jcommander.jar` (1.64) and `guava.jar` beside `smali.jar` / `smali-baksmali.jar`. The explicit filenames matter; a Maven version-suffixed filename alone is not found by that fallback. `--update` is for recognized existing hooks, not permission to guess an unsupported layout. An error leaves the candidate unpublished; inspect it rather than dropping a required hook or disabling verification. Continue with [output verification](#6-reassemble-and-verify-the-packaged-jars), not another round of manual injection.

### Manual smali route

Follow sections 3–6. Every snippet is an **insertion fragment**, not a whole method. Retain the actual stock body and control flow. Read the method's complete descriptor and `static` flag before mapping parameters.

**Register rules used throughout:**

- For an instance method, `p0` is `this`; static methods have no implicit receiver. `long`/`double` consume two register words.
- With `L` locals and `P` parameter words, `.registers = L + P`, and old `pN` aliases physical `v(L+N)`. Increasing locals shifts incoming physical parameter slots. Rewrite old numeric aliases to the corresponding `pN` before an ordinary local increase; audit every affected opcode afterward.
- A `p` name is not automatically a low register. Ordinary `invoke-* {…}` operands must each be physical registers 0–15. `/range` needs **contiguous, correctly ordered** argument words. Use `move*/16` or `move*/from16` when copying high registers. `move-result*`, `return*` and `if-eqz` still have 8-bit register limits; `array-length` has 4-bit operands.
- Reserve scratch registers that stock code does not read before reinitialization; for values retained across the stock body, reserve locals stock never writes. Preserve debug/parameter annotations and unique labels. Put entry hooks after metadata, before the first executable instruction or stock branch target.
- Keep each `move-result*` immediately after its producing `invoke-*`. Never insert another executable instruction between them. Null/false fallback labels must reach unchanged stock logic.

## 3. Disassemble and import the payload

Disassemble **all splits**, not just `classes.dex`. Separate input DEXes, editable smali and rebuilt DEXes:

```bash
mkdir -p "$WORK/framework/dex" "$WORK/services/dex"
unzip -q inputs/framework.jar 'classes*.dex' -d "$WORK/framework/dex"
unzip -q inputs/services.jar 'classes*.dex' -d "$WORK/services/dex"
for jar in framework services; do
  for dex in "$WORK/$jar/dex"/classes*.dex; do
    name=$(basename "$dex" .dex)
    java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
      --api "$SMALI_API" --use-locals "$dex" -o "$WORK/$jar/smali/$name"
  done
done
java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
  --api "$SMALI_API" --use-locals inputs/payload.dex -o "$WORK/payload-smali"
```

Find owners by their `.class` descriptors. The same basename in unrelated packages is not an owner match. Each required class must exist exactly once across the split trees.

Import **every class** from the payload, including nested/dependency classes, keeping exactly one owner per descriptor. Replace only matching incoming descriptors; preserve unrelated OEM classes even inside `android/security/`. Do not delete a whole namespace or replace a mixed OEM/payload DEX wholesale. A new `classesN.dex` must use the next available contiguous split name. Respect DEX reference limits; if repartitioning is necessary, recheck the complete class inventory.

APKEditor's [README](https://github.com/REAndroid/APKEditor/blob/master/README.md) is a useful command-oriented reference. Its `d`/`b` help describes its own decode/build route; `-dex` **copies raw DEX and skips smali**, so it is not a way to obtain editable hook code. The commands here use explicit smali/baksmali, not an untested APKEditor framework-JAR conversion.

**Check:** all six framework classes below and both services classes have unique owners; the payload facade exposes the exact `public static` descriptors called below. Do not patch `SettingsProvider.apk` or obsolete `KeyStore2` entrypoints. Restore stock SettingsProvider if it contains historical `filterSettings*` hooks; this payload has no such contract.

## 4. Patch framework callers

### 4.1 Instrumentation — both newApplication overloads

Owner: `Landroid/app/Instrumentation;`. Insert immediately before **every** successful `return-object`, after stock `Application.attach(Context)` has completed. Do not add another attach call.

| Exact method header | Context argument |
|---|---|
| `static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` | `p1` |
| non-static `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` | `p2` |
| non-static `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;` | `p3` |

Use only the row matching the real header for the Class overload:

<!-- snippet: instrumentation-class-static -->
```smali
    invoke-static/range {p1 .. p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

<!-- snippet: instrumentation-class-instance -->
```smali
    invoke-static/range {p2 .. p2}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

For the ClassLoader overload:

<!-- snippet: instrumentation-loader -->
```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Check:** each overload's return count equals its hook count; the hook uses a Context, not the receiver/Class/String argument. Do not place a stock label between hook and return that lets a branch skip initialization.

### 4.2 ActivityThread.handleBindApplication

Owner: `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`. Immediately after the actual `mBoundApplication` assignment, pass the **first/source operand** of `iput-object` (`v9` here), not its receiver (`v1`). The assignment below is an anchor already present in stock, not an additional assignment to insert.

<!-- snippet: activity-thread -->
```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

**Check:** one assignment/hook pair. For a source above physical register 15, use `invoke-static/range {source .. source}` with the actual register name and ensure no incoming branch bypasses the hook.

### 4.3 Settings$NameValueCache.getStringForUser

Owner: `Landroid/provider/Settings$NameValueCache;`, non-static method `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`. At entry, use existing local `v0` (`.locals >= 1` or `.registers >= 5`). Null means stock; a non-null result is returned unchanged.

<!-- snippet: name-value-cache -->
```smali
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_dev_stock
    return-object v0
    :kaorios_dev_stock
```

**Check:** the callee returns `String`, not boolean `Z`. Do not append an unconditional `const-string "0"`. Stock must initialize any local it needs after the fallback.

### 4.4 ApplicationPackageManager.hasSystemFeature

Owner: `Landroid/app/ApplicationPackageManager;`, non-static method `hasSystemFeature(Ljava/lang/String;I)Z`. Example: old `.locals 2` → `.locals 3`, new scratch `v2`. Before increasing, convert old numeric parameter aliases `v2/v3/v4` to `p0/p1/p2`; then audit instruction widths. At entry:

<!-- snippet: system-feature -->
```smali
    invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v2
    if-eqz v2, :kaorios_feature_stock
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
    return v2
    :kaorios_feature_stock
```

**Check:** nullable `Boolean` is unboxed only after the null check. For old `.registers R`, there are three parameter words: the added local is `v(R-3)`, not `vR`. Do not blindly paste `v2` into another allocation.

### 4.5 AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair

Owner: `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`, non-static method `generateKeyPair()Ljava/security/KeyPair;`. Example: old `.locals 2` → `.locals 3`, new `v2`; old numeric `v2` meaning `p0` must first become `p0`. At entry:

<!-- snippet: key-pair -->
```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v2
    if-eqz v2, :kaorios_generate_stock
    return-object v2
    :kaorios_generate_stock
```

**Check:** null reaches the original method. With old `.registers R`, the added local is `v(R-1)`. Keep the actual stock body; the fragment is not a replacement method.

### 4.6 AndroidKeyStoreSpi.engineGetCertificateChain

Owner: `Landroid/security/keystore2/AndroidKeyStoreSpi;`, method `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`. After the **final leaf insertion** and immediately before each populated-array return, filter that exact array and return the hook result. Keep stock null returns unchanged. Example: `.locals 4`, array `v3`, so `p0=v4`, `p1=v5`; all three invoke operands fit 0–15.

<!-- snippet: certificate-chain -->
```smali
    invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

**Check:** the array operand from the final `aput-object`, hook input, `move-result-object`, and `return-object` agree. An earlier insertion inside a loop is not the return boundary. A payload missing the three-argument overload is an ABI mismatch: use the matching payload, not a silently incomplete patch. This non-range template and current verifier do not support arbitrary high-register chain layouts.

### 4.7 AndroidKeyStoreSpi.engineGetCertificate

Same owner, method `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`. When it does not already have the supported chain-delegation path, insert at entry using existing locals `v0/v1` (`.locals >= 2`). A null/empty chain retains stock behavior.

<!-- snippet: certificate-leaf -->
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

**Check:** no duplicate delegation block. The existing verifier recognizes the documented `v0/v1` structure; mere presence of any chain call does not establish correct fallback or coverage.

### 4.8 Optional Build edits — Android 17 only

Not part of the six required caller owners:

- In `Landroid/os/Build;`, remove `final` and set constant String initializers to `null` for `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
- Remove `final` from `TIME:J` without converting it to a String.
- In `Landroid/os/Build$VERSION;`, remove `final` from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
- Leave `SDK_INT` and both `<clinit>` bodies unchanged.

## 5. Patch services callers

### 5.1 SystemServer.run

Owner: `Lcom/android/server/SystemServer;`, method `run()V`. Immediately before the final primary `Looper.loop()`:

<!-- snippet: system-server -->
```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

**Check:** retain the one stock loop. A call in `startOtherServices` or a different loop is not this lifecycle hook.

### 5.2 ComputerEngine.shouldFilterApplication

Owner: `Lcom/android/server/pm/ComputerEngine;`. The existing patcher selects the seven-argument overload when present, otherwise the three-argument overload. Preserve delegation between overloads; do not add duplicate calls along the same path.

| Exact descriptor | Caller UID | User ID | Parameter words including receiver |
|---|---|---|---|
| `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` | `p2` | `p5` | 8 |
| `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` | `p2` | `p3` | 4 |

Low-register example: existing local `v0` is available at entry and every ordinary invoke operand fits 0–15. For seven arguments:

<!-- snippet: visibility-seven -->
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

For the three-argument overload instead:

<!-- snippet: visibility-three -->
```smali
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_visibility_stock
    invoke-static {p2, v0, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_visibility_stock
    const/4 v0, 0x1
    return v0
    :kaorios_visibility_stock
```

#### High-register worked example

For the seven-argument method with **old `.locals 9` only**: change to `.locals 20`; replace every stock parameter operand `p0..p7` with its **old** physical slot `v9..v16`, leaving existing numeric `v9..v16` aliases unchanged. Keep `.param pN` declarations referring to the incoming parameters. The entry copies below restore stock's old physical frame; `v17..v19` are new scratch. Merely increasing locals and pasting these copies while leaving stock `pN` operands unchanged is not this transformation.

<!-- snippet: visibility-high-seven -->
```smali
    move-object/16 v9, p0
    move-object/16 v10, p1
    move/16 v11, p2
    move-object/16 v12, p3
    move/16 v13, p4
    move/16 v14, p5
    move/16 v15, p6
    move/16 v16, p7
    if-eqz v10, :kaorios_visibility_stock
    invoke-interface/range {v10 .. v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v18
    if-eqz v18, :kaorios_visibility_stock
    move/16 v17, v11
    move/16 v19, v14
    invoke-static/range {v17 .. v19}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v17
    if-eqz v17, :kaorios_visibility_stock
    const/16 v17, 0x1
    return v17
    :kaorios_visibility_stock
```

**Check:** the hook dominates stock execution except the two intentional null fallbacks. Recalculate the frame for other allocations; the example's register numbers are not universal.

### 5.3 Optional existing filterAppAccess

Only for an existing non-static `filterAppAccess(Ljava/lang/String;II)Z`, not a replacement for section 5.2. This low-register entry example needs existing local `v0` and physical `p1/p2/p3 <= 15`:

<!-- snippet: filter-app-access -->
```smali
    if-eqz p1, :kaorios_filter_stock
    invoke-static {p2, p1, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_filter_stock
    const/4 v0, 0x1
    return v0
    :kaorios_filter_stock
```

The normal services verifier checks the selected `shouldFilterApplication` path, not complete optional `filterAppAccess` semantics on every OEM ROM.

### 5.4 Installer-source reads — only supported API pairs

The current patcher/verifier requires **exactly one of each API** in `ComputerEngine`: `getInstallerPackageName` and `getInstallSourceInfo`. Each may use `(Ljava/lang/String;)` or `(Ljava/lang/String;I)` parameters. If neither exists, this section is skipped. If only one or additional overloads exist, the automatic route reports an unsupported layout; do not claim a complete verified patch by silently omitting them.

Capture Binder caller UID **before** stock clears identity. Preserve target package and user across the entire body. Filter the resolved installer String at its return, or the **installingPackageName argument** immediately before the `InstallSourceInfo` constructor; do not filter the returned `InstallSourceInfo` object as a String.

**Two-argument worked allocation:** old `.locals 8` → `.locals 16`. Rewrite all stock `p0/p1/p2` operands to `v8/v9/v10`; leave old numeric aliases unchanged. Reserve `v11..v15`, never written by stock. At entry:

<!-- snippet: installer-entry-two -->
```smali
    move-object/16 v8, p0
    move-object/16 v9, p1
    move/16 v10, p2
    const/16 v11, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v12
    move-object/16 v14, v9
    move/16 v13, v10
```

**String-only worked allocation:** old `.locals 9` → `.locals 16`. Rewrite stock `p0/p1` operands to `v9/v10`; reserve the same `v11..v15`. Derive user ID from the original caller UID, not a nonexistent `p2`:

<!-- snippet: installer-entry-one -->
```smali
    move-object/16 v9, p0
    move-object/16 v10, p1
    const/16 v11, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v12
    move-object/16 v14, v10
    invoke-static/range {v12 .. v12}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v13
```

For `getInstallerPackageName`, at each proven resolved installer return (`v2` in this example):

<!-- snippet: installer-return -->
```smali
    move-object/16 v15, v2
    invoke-static/range {v11 .. v15}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

For `getInstallSourceInfo`, immediately before the stock constructor, where its real installingPackageName argument is `v4`:

<!-- snippet: installer-constructor -->
```smali
    move-object/16 v15, v4
    invoke-static/range {v11 .. v15}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
```

**Check:** retain `new-instance`, the constructor and all non-installer arguments. This changes only `installingPackageName`, not independently `initiatingPackageName`. The stock field/source provenance must remain traceable; exception/switch or unrecognized constructor layouts are not covered by this template.

## 6. Reassemble and verify the packaged JARs

For the manual route, assemble each changed/new split into a separate directory. Copy unchanged DEX bytes rather than rebuilding them unnecessarily. The simple loop below rebuilds all trees, so use it only when deliberately validating every split; it does not claim untouched-split byte identity.

```bash
for jar in framework services; do
  mkdir -p "$WORK/$jar/rebuilt"
  for tree in "$WORK/$jar/smali"/classes*; do
    name=$(basename "$tree")
    java -cp "$TOOL_CP" com.android.tools.smali.smali.Main assemble \
      --api "$SMALI_API" "$tree" -o "$WORK/$jar/rebuilt/$name.dex"
  done
  cp "inputs/$jar.jar" "$WORK/$jar-patched.jar"
  (cd "$WORK/$jar/rebuilt" && zip -q -0 "$WORK/$jar-patched.jar" classes*.dex)
done
```

If you removed/repartitioned any split, remove its obsolete ZIP entry in the **candidate copy** too; adding new DEXes does not remove old entries. Check no duplicate members/descriptors, no lost OEM classes, the expected class inventory and untouched-split hashes. The automated artifact route performs those plan/hash checks for its supported import strategy.

For **either route**, re-extract the final candidate JARs into a fresh tree, then disassemble them. Never point final verification at the editable input trees:

```bash
mkdir -p "$WORK/recheck/framework-dex" "$WORK/recheck/services-dex"
unzip -t "$WORK/framework-patched.jar"
unzip -t "$WORK/services-patched.jar"
unzip -q "$WORK/framework-patched.jar" 'classes*.dex' -d "$WORK/recheck/framework-dex"
unzip -q "$WORK/services-patched.jar" 'classes*.dex' -d "$WORK/recheck/services-dex"
for jar in framework services; do
  for dex in "$WORK/recheck/$jar-dex"/classes*.dex; do
    name=$(basename "$dex" .dex)
    java -cp "$TOOL_CP" com.android.tools.smali.baksmali.Main disassemble \
      --api "$SMALI_API" --use-locals "$dex" -o "$WORK/recheck/smali_$jar/$name"
  done
done
python3 -I script/verify-framework-a17-hooks.py "$WORK/recheck/smali_framework"
python3 -I script/verify-services-a17-hooks.py "$WORK/recheck/smali_services"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/recheck/smali_services"
python3 -I script/verify-payload-abi.py "$WORK/recheck/smali_framework" --payload-smali "$WORK/recheck/smali_framework"
python3 -I script/verify-payload-abi.py "$WORK/recheck/smali_services" --payload-smali "$WORK/recheck/smali_framework"
sha256sum "$WORK/framework-patched.jar" "$WORK/services-patched.jar"
```

Use the same supported smali API selected during preparation, replacing the example `34` consistently if needed. **Check:** every command exits 0; framework verification includes the facade and AdvancedPolicy classes, and both caller trees are ABI-checked against the **packaged framework payload**. A caller-only result is an intermediate diagnostic, not final acceptance. Services resolves the facade from framework; do not import a second payload copy into services.

## 7. Troubleshooting and evidence

| Symptom | Inspect / action |
|---|---|
| `Invalid register` / register must be between 0 and 15 | Compute physical `pN` after allocation; use a supported range/copy layout and preserve stock aliases. Do not keep raising locals blindly. |
| Assembles, but verifier reports wrong Context | Read the exact Instrumentation `static` header: Class overload uses static `p1` or instance `p2`; ClassLoader instance uses `p3`. |
| Missing `CertificateChainIfNeeded` overload | Mismatched payload/caller ABI. Keep the required three-argument contract; obtain the matching framework payload. |
| Duplicate target / class descriptor | Inspect all DEX owners and unrelated basenames. Do not delete arbitrary files just to make discovery unique. |
| Installer `UNSUPPORTED_LAYOUT` | Check the exact API pair, original UID capture, stock source provenance and constructor signature. No generic one-register insertion covers every ROM. |
| Help throws `NoSuchMethodError: ...getMainParameter()` | smali 3.0.8 was loaded with incompatible jcommander; use its pinned 1.64 dependency and rerun both help commands. |
| Unsupported API/opcode / DEX version | Match the input format and actual opcode support. `--api 37` metadata does not make a tool understand new opcodes; do not relabel a newer format blindly. |
| Out of memory | Use a deliberate Java heap such as `java -Xmx8g -cp ...`, with available host RAM, or process splits individually. This does not fix invalid bytecode. |
| Boot/runtime failure despite host PASS | Restore matching stock JARs, capture redacted class-resolution/verifier errors, compare ROM/payload/tool versions. Do not publish private key/configuration or raw attestation data. |

The documentation regressions extract the marked smali fragments directly from **both** guides, build representative caller fixtures, assemble/disassemble with real smali, and run the existing structural verifiers. They check static/instance parameters, both visibility overloads, one high-register frame and both installer API shapes. They also execute the literal rebuild/re-extract/verification commands on fixture JARs, checking packaged-facade ABI, multi-DEX output and unrelated ZIP-entry retention. These fixtures do not test real-ROM import or execute the Android framework.

Host syntax, structural checks and facade ABI checks are separate evidence. They do not prove ART type verification on a particular ROM, successful boot, hardware behavior or external integrity verdicts. Physical-device results remain unverified until actually recorded. CorePatch and Secure Flag remain separate guides; this change adds no new runtime backend.
