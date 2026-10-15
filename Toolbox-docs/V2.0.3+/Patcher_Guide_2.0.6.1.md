# Kaorios Toolbox 2.0.6.1 — Automatic smali patcher (Android 13–17)

[Tiếng Việt](Patcher_Guide_2.0.6.1_VI.md) | [Manual hook recipes](Patch_Guide_2.0.6.1.md) | [Secure Flag example](Disable_Secure_Flag.md) | [Google Flags patch status](Google_Flags.md)

**What this does:** patch supported **smali files**, not whole JARs. It does **not** import payload or patch all optional hooks. Work only on authorized **copies** of stock `framework.jar` and `services.jar` from the same ROM build, with clean originals, SHA-256 hashes and a recovery plan. Keep `SettingsProvider.apk` stock. Run from the `public/` repo root; output must differ from stock.

**Payload boundary:** This patcher covers only the listed ROM hooks; it does not insert a Phenotype query-result caller, even with the current 2.0.6.1 pre-release DEX. The [Google Flags guide](Google_Flags.md) explains the missing evidence and stop condition. Verify the current release asset checksum before import; a patcher PASS does not establish Google Flags support.

## 1. Find the class and owner DEX

List all `classes*.dex` entries in both JARs and disassemble **each DEX separately** with a toolchain/API compatible with the actual input DEX. Example using a *new empty* workspace and a tested classpath (thin smali JARs need matching dependencies; `java -jar` may not work):

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=37  # example only; match your input DEX/toolchain
BAKSMALI_CP=/path/to/working-baksmali-classpath
SMALI_CP=/path/to/working-smali-classpath
sha256sum "$STOCK/framework.jar" "$STOCK/services.jar"
for jar in framework services; do
    unzip -Z1 "$STOCK/$jar.jar"  # include non-DEX entries in your inventory
    mkdir -p "$WORK/$jar/input"
    unzip -q "$STOCK/$jar.jar" 'classes*.dex' -d "$WORK/$jar/input"
    for dex in "$WORK/$jar/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/smali_$name"
    done
done
```

Record `class descriptor → JAR → classes*.dex → matching method`. Search *all* smali trees; e.g. `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`. If the class is absent/duplicated or the expected overload differs, stop. [A13–A17 templates](../Template/Template_V2060/README.md) are examples, **not** stock replacements.

## 2. Select the target and mode

| JAR | Exact mode-1 filenames | Function |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `ApplicationPackageManager.smali`, `AndroidKeyStoreKeyPairGeneratorSpi.smali`, `AndroidKeyStoreSpi.smali` | App initialization, Context, system-feature query / **Unlock GMS Feature** hook, Keystore hooks. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | HMA visibility, server initialization; installer read APIs **if present as a supported pair**. |

`ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` is the system-feature query hook associated with Unlock GMS Feature; patching it does **not** prove all GMS behavior. `ComputerEngine` installer support requires exactly one recognized `getInstallerPackageName` and one `getInstallSourceInfo` method with supported layout. A missing/partial pair fails; other overloads may stay untouched. If both are absent the installer hook is **skipped**, not verified present. Match actual ROM callers before claiming coverage.

- Android 13–16: **mode 1** for supported hooks.
- Android 17: **mode 1** for supported hooks; optional **mode 2** edits `Build.smali` and `Build$VERSION.smali` fields only; **mode 3** combines 1 and 2 on the same input tree, not across different DEXes/JARs. Modes 2/3 are rejected for Android 13–16.
- **Not automatic:** importing any payload class; optional `Settings$NameValueCache` developer/ADB-status hook, [Secure Flag](Disable_Secure_Flag.md), [CorePatch](CorePatch.md), or every OEM overload. See the [manual guide](Patch_Guide_2.0.6.1.md) for the JAR → class → method → exact smali insertion and register checks.
- **Kaorios Helper** is a [separately installed Zygisk module](../../Kaorios-Helper/README.md), not a ROM hook or these artifact scripts. It leaves framework/services stock. **Do not enable HMA Helper at the same time as a ROM-patched HMA hook.**

## 3. Patch the smali owner trees

For example, if framework targets belong to `classes2.dex` and services targets to `classes.dex`, run from `public/`:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay
```

Substitute your Android version and **actual owner tree**; repeat for each split with targets. You may pass a single smali file instead. A success on one tree does not prove targets in other splits were found. `script/kaorios_patcher_a17.py` is only a legacy compatibility launcher.

For optional Android 17 Build fields, locate **both** exact files and run mode 2 on each owner even if they live in different DEXes:

```bash
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

These tree names are examples. Mode 3 can replace mode 1 + 2 for **one** tree only when both required Build files and its mode-1 targets are in that tree; still process other trees and services separately.

**Read each file status:** `PATCHED` means written after per-file verification; `ALREADY_PATCHED` means recognized and verified without a write; `UNSUPPORTED_LAYOUT`/`FAILED` mean stop and inspect that file; no target found is **not** a pass. A directory run may have written earlier files before a later failure. A nonzero exit does **not** roll back the directory: **discard partial working copies and restart from clean stock**. Never force a similar-looking snippet; check method descriptor, `.locals`/`.registers`, physical `pN`/`vN` aliases, instruction encoding and stock fallback paths. `--no-delay` only disables animated output.

## 4. Import payload and rebuild copies

The patcher **does not import payload**. Follow [manual guide §1](Patch_Guide_2.0.6.1.md#1-import-payload--frameworkjar): import all payload classes individually into the copied **framework** JAR, replacing duplicates as *classes inside their existing owner DEX*, not overwriting an entire stock DEX. New classes may need a new split. Do **not** import payload into services/provider. Keep all other stock classes. Assemble only changed owner trees with the input-compatible API, retaining each original DEX entry name:

```bash
jar=framework; name=classes2  # example: repeat for each changed owner split
mkdir -p "$WORK/$jar/rebuilt"
java -cp "$SMALI_CP" com.android.tools.smali.smali.Main \
  assemble "$WORK/$jar/smali_$name" --api "$API" \
  --output "$WORK/$jar/rebuilt/$name.dex"
```

Export every changed split and any newly added payload split to `rebuilt/`. Start output from **stock JAR copies in a different path**. `zip -j` puts DEX names at the archive root:

```bash
mkdir -p "$WORK/output"
for jar in framework services; do
    cp "$STOCK/$jar.jar" "$WORK/output/$jar-patched.jar"
    for dex in "$WORK/$jar/rebuilt"/classes*.dex; do
        test -f "$dex" || continue
        zip -q -0 -j "$WORK/output/$jar-patched.jar" "$dex"
    done
    unzip -tq "$WORK/output/$jar-patched.jar"
done
```

If the ROM/toolchain needs another archive layout, use a compatible multidex editor rather than forcing `zip`. Preserve all untouched DEX and non-DEX entries.

## 5. Check the saved JARs

1. Extract **every DEX from the saved `framework-patched.jar` and `services-patched.jar`** into new empty recheck folders. Compare each changed packaged DEX byte-for-byte with its assembled file, untouched DEX hashes and non-DEX entries with stock. Disassemble the extracted DEX, **not** the working tree:

```bash
for jar in framework services; do
    mkdir -p "$WORK/$jar/recheck/input"
    unzip -q "$WORK/output/$jar-patched.jar" 'classes*.dex' -d "$WORK/$jar/recheck/input"
    for dex in "$WORK/$jar/recheck/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        if test -f "$WORK/$jar/rebuilt/$name.dex"; then
            cmp "$WORK/$jar/rebuilt/$name.dex" "$dex" || exit 1
        fi
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/recheck/smali_$name"
    done
done
```

2. Run applicable verifiers on **these extracted output trees**:

```bash
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck" --caller-only
python3 -I script/verify-services-a17-hooks.py "$WORK/services/recheck"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/services/recheck"
```

Once the framework output also contains `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` and all eight AdvancedPolicy classes, run `python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"` **instead of** `--caller-only`. Caller-only checks only ActivityThread; full checks that callee overload and class *presence*. Services checks visibility and installer APIs when present; SystemServer checks its caller. These verifiers do **not** cover Instrumentation, system feature/Unlock GMS Feature, Keystore, optional hooks or all runtime paths — manually inspect them as in the [manual guide](Patch_Guide_2.0.6.1.md#5-rebuild-and-check-the-saved-jars).

3. Confirm exactly one owner per imported payload class and every unrelated ROM class still present. Record actual checks, hashes and DEX owners. A host pass does not prove a real ROM boots or features work on a device. Do not use a failed/partial output; signing, publishing or flashing requires separate authorization and recovery planning.

## 6. Android 17 artifact scripts (narrow scope)

These are **JAR-building scripts**, not the Kaorios Helper Zygisk module. Inspect their `--help`, use copies/output distinct from stock and a supported toolchain:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <payload.dex> --baksmali <standalone.jar> --smali <standalone.jar> [--api <api>]` patches **ActivityThread only** and inserts a prebuilt payload DEX. Whole-DEX replacement is permitted only if it loses no ROM class and duplicates no descriptor. If class-wise merge is needed, use §4. Framework script calls `java -jar`, so thin tool JARs will not work. It does **not** patch Instrumentation, system feature, Keystore or Build.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]` patches `ComputerEngine`/`SystemServer`, including supported installer pair if present. It can use adjacent dependencies for a thin tool JAR; it does not guarantee missing/unsupported installer paths.

Both check untouched DEX hashes. **Services script limitation:** it verifies re-disassembled **unpacked pre-pack DEX**, not DEX extracted from the candidate/output JAR; `unzip -tq` checks archive readability only. You **must** extract and verify the final services output as in §5. Even for framework's packed-candidate check, manually confirm other hooks and final inventory. Neither script proves device behavior.
