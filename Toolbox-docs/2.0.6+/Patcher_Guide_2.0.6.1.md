# Kaorios Toolbox 2.0.6.1 — Automatic smali patcher (Android 13–17)

[Tiếng Việt](Patcher_Guide_2.0.6.1_VI.md) | [Manual hook recipes](Patch_Guide_2.0.6.1.md) | [Secure Flag status and limits](Disable_Secure_Flag.md)

**Bootloop warning:** older Kaorios recipes (2.0.6.0 guides and the original 2.0.6.1 assets) patched `SettingsProvider.apk` to call `KaoriosHook` methods (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) that the current 2.0.6.1 `classes.dex` no longer defines. The system process then throws `NoSuchMethodError`, likely causing a bootloop. If this ROM's `SettingsProvider.apk` was ever patched by an older Kaorios recipe, restore the stock `SettingsProvider.apk` from the same ROM build **before** importing the current 2.0.6.1 `classes.dex`. Do not reuse old patched provider files.

**What this does:** patch supported **smali files**, not whole JARs. It does **not** import payload or patch all optional hooks. The downloadable patcher archive is [kaorios-patcher-2.0.6.1.zip](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/kaorios-patcher-2.0.6.1.zip) (SHA-256: `3e0e761a9121ef83b6339791f8ad60bb4895e6ecb8a2eafcb578333d33e99758`). Work only on authorized **copies** of stock `framework.jar` and `services.jar` from the same ROM build, with clean originals, SHA-256 hashes and a recovery plan. Keep `SettingsProvider.apk` stock. Run from the `public/` repo root; output must differ from stock.

**Source versus archive:** the pinned downloadable archive may predate these source changes; do not assume its checksum describes a newly published build. Use a reviewed current public checkout, or build a reproducible local archive from the public repo root with `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` (output must not exist).

**Stock or already patched:** mode 1 supports recognized stock layouts and verifies recognized existing hooks. Inventory the existing ROM first; preserve unrelated OEM classes/hooks, and never insert a duplicate hook manually. Use `--update` only for supported existing patches; unsupported/ambiguous old layouts require inspection or restoring matching stock files, not forced replacement. The SettingsProvider restoration warning still applies.

**Payload compatibility:** the updated public v2.0.6.1 `classes.dex` (SHA-256: `94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d`) provides both the three-argument `CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` and the one-argument `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` overloads. If an older asset (SHA-256 `ca9489f388e8717463c1f33a56c298a4b6bd5785b82d11f20da1deb65c799c9a`) is used, it exposes only the one-argument overload; patcher validation fails when targeting the three-argument caller and that combination must not be flashed. Always verify generated callee descriptors against the actual payload.

**Toolchain gate:** for the supplied DEX 040 case, use `--api 37 --smali-api 34`: the target API and assembler opcode API are separate, and smali 3.0.8 rejects assembly with API 37 (`dexVersion must be within [0, 999]`). This tested combination is not a universal DEX 041/container or CompactDex compatibility claim. Check the actual input format and tool support separately from Android version. Stop if the tool cannot read/rebuild that format; never rewrite DEX magic/header bytes to bypass the check.

## 1. Find the class and owner DEX

List all `classes*.dex` entries in both JARs and disassemble **each DEX separately** with a toolchain/API compatible with the actual input DEX. Example using a *new empty* workspace and a tested classpath (thin smali JARs need matching dependencies; `java -jar` may not work):

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=34  # example only: tool must support this API AND the actual input DEX/instructions
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

Record `class descriptor → JAR → classes*.dex → matching method`. Search *all* smali trees; e.g. `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`. If the class is absent/duplicated or the expected overload differs, stop. The manual snippets are insertion examples, **not** stock replacements. Discover owners; never assume `classes6.dex` belongs to payload.

## 2. Select the target and mode

| JAR | Exact mode-1 filenames | Function |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `ApplicationPackageManager.smali`, `Settings$NameValueCache.smali`, `AndroidKeyStoreKeyPairGeneratorSpi.smali`, `AndroidKeyStoreSpi.smali` | App initialization, Context, system-feature query / **Unlock GMS Feature** hook, developer/ADB-status entry guard, Keystore hooks. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | HMA visibility, server initialization; installer read APIs **if present as a supported pair**. |

`ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` is the system-feature query hook associated with Unlock GMS Feature; patching it does **not** prove all GMS behavior. `ComputerEngine` installer support requires exactly one recognized `getInstallerPackageName` and one `getInstallSourceInfo` method with supported layout. A missing/partial pair fails; other overloads may stay untouched. If both are absent the installer hook is **skipped**, not verified present. Match actual ROM callers before claiming coverage.

- Android 13–16: **mode 1** for supported hooks.
- Android 17: **mode 1** for supported hooks; optional **mode 2** edits `Build.smali` and `Build$VERSION.smali` fields only; **mode 3** combines 1 and 2 on the same input tree, not across different DEXes/JARs. Modes 2/3 are rejected for Android 13–16.
- **Not automatic:** importing any payload class; [Secure Flag](Disable_Secure_Flag.md) (no general `captureDisplay` recipe), [CorePatch](CorePatch.md), or every OEM overload. See the [manual guide](Patch_Guide_2.0.6.1.md) for the JAR → class → method → exact smali insertion and register checks.
- **Kaorios Helper** is a [separately installed Zygisk module](https://github.com/hzzmonetvn/KaoriosHelper), not a ROM hook or these artifact scripts. It leaves framework/services stock. **Do not enable HMA Helper at the same time as a ROM-patched HMA hook.**

## 3. Patch the smali owner trees

For example, if framework targets belong to `classes2.dex` and services targets to `classes.dex`, run from `public/`:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay \
  --payload-smali /path/to/disassembled-payload
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay \
  --payload-smali /path/to/disassembled-payload
```

Before accepting or flashing any mode-1 output, disassemble the actual payload DEX with a compatible toolchain into a separate empty tree and supply `--payload-smali /path/to/payload-disassembled-root` to **each** patcher invocation. A run without this option is caller-only and is not acceptable for compatibility verification. The updated release payload (SHA-256 `94848e18...`) satisfies both three-argument and one-argument certificate callers; older assets lacking the three-argument overload will be rejected. Do not accept or flash output unless the ABI check succeeds.

Substitute your Android version and **actual owner tree**; repeat for each split with targets. You may pass a single smali file instead. A success on one tree does not prove targets in other splits were found. `script/kaorios_patcher_a17.py` is only a legacy compatibility launcher.

For optional Android 17 Build fields, locate **both** exact files and run mode 2 on each owner even if they live in different DEXes:

```bash
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

The `--update` (or `-u`) option repairs recognized supported hook blocks only. Already-valid hook content remains verified and unchanged, though the file may be rewritten with `--update`; unknown or partial hook layouts fail closed instead of being forcibly rewritten.

These tree names are examples. Mode 3 can replace mode 1 + 2 for **one** tree only when both required Build files and its mode-1 targets are in that tree; still process other trees and services separately.

**Read each file status:** `PATCHED` means changed after verification; `ALREADY_PATCHED` means recognized and verified (normally no write; `--update` can rewrite identical content); `UNSUPPORTED_LAYOUT`/`FAILED` mean stop and inspect that file; no target found is **not** a pass. A directory run preflights all selected target content and tree locations before writing originals; duplicate targets and symlink inputs are rejected. This is not a filesystem-wide atomic transaction: on any write failure, discard partial working copies and restart from clean stock. Never force a similar-looking snippet; check method descriptor, `.locals`/`.registers`, physical `pN`/`vN` aliases, instruction encoding and stock fallback paths. `--no-delay` only disables animated output.

## 4. Import payload and rebuild copies

The patcher **does not import payload**. Follow [manual guide §1](Patch_Guide_2.0.6.1.md#1-import-payload--frameworkjar): import all payload classes individually into the copied **framework** JAR, replacing duplicates as *classes inside their existing owner DEX*, not overwriting an entire stock DEX. Search every DEX: existing payload descriptors may span multiple owner splits. Replace only exact incoming descriptors; never remove an entire namespace or unrelated OEM class. New classes may need a new split. Import payload only into `framework.jar`. Keep all other stock classes. Assemble only changed owner trees with the input-compatible API, retaining each original DEX entry name:

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

Once the framework output also contains `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` and all eight AdvancedPolicy classes, run `python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"` **instead of** `--caller-only`. Both modes check all six required framework callers: ActivityThread, Instrumentation, ApplicationPackageManager, Settings$NameValueCache, AndroidKeyStoreSpi and AndroidKeyStoreKeyPairGeneratorSpi. `--caller-only` skips only callee and AdvancedPolicy class checks; full mode additionally checks that callee overload and class *presence*. The hook manifest is loaded automatically; no extra manifest flag is needed. Services checks visibility and installer APIs when present; SystemServer checks its caller. These verifiers do **not** establish all runtime paths or optional-hook behavior — manually inspect additional paths as in the [manual guide](Patch_Guide_2.0.6.1.md#5-rebuild-and-check-the-saved-jars).

Before accepting output, verify exact facade calls in **both saved-output trees** against the actual payload's disassembled tree:

```bash
python3 -I script/verify-payload-abi.py "$WORK/framework/recheck" \
  --payload-smali /path/to/payload-disassembled-root
python3 -I script/verify-payload-abi.py "$WORK/services/recheck" \
  --payload-smali /path/to/payload-disassembled-root
```

This checks matching public static facade descriptors, not payload implementation correctness, all dependency linkage, or device behavior. A missing three-argument certificate callee is a hard failure even if the other verifiers pass.

3. Confirm exactly one owner per imported payload class and every unrelated ROM class still present. Record actual checks, hashes and DEX owners. A host pass does not prove a real ROM boots or features work on a device. Do not use a failed/partial output; signing, publishing or flashing requires separate authorization and recovery planning.

## 6. Android 17 artifact scripts (narrow scope)

These are **JAR-building scripts**, not the Kaorios Helper Zygisk module. Inspect their `--help`, use copies/output distinct from stock and a supported toolchain:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <payload.dex> --baksmali <tool.jar> --smali <tool.jar> [--api <api>] [--smali-api <opcode-api>] [--update]` requires six framework caller classes: `ActivityThread`, `Instrumentation`, `ApplicationPackageManager`, `Settings$NameValueCache`, `AndroidKeyStoreSpi` and `AndroidKeyStoreKeyPairGeneratorSpi`. A missing required caller fails the candidate, even if another owner tree patched successfully. It imports the supplied payload by exact class descriptor, replaces matching definitions in their existing owners, rebuilds every modified owner DEX and retains unrelated definitions. It does not automatically remove legacy obfuscated classes; cleanup requires verified ownership. Both fat executable JARs and thin JARs (with companion dependency JARs in the same directory) are supported via a fallback classpath wrapper. For the supplied DEX 040 case, pass `--api 37 --smali-api 34`. It verifies the candidate JAR after re-extraction, including the hook manifest, class inventories and facade ABI calls. The `Settings$NameValueCache` entry guard hides only `adb_enabled`, `adb_wifi_enabled` and `development_settings_enabled` when helper policy permits; it does not disable actual ADB.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>] [--smali-api <opcode-api>] [--update]` patches `ComputerEngine`/`SystemServer`, including the supported installer pair if present. It verifies callers from the re-extracted candidate and checks untouched DEX hashes.

Both scripts verify untouched DEX hashes to guarantee byte-for-byte identity. Additionally, to complete the system patch package:
1. **Native PIF Libraries:** Integrate `libkaoripif.so`, `libkaoriospif.so`, `libshadowhook_kaorios.so` into `/system/lib64/` and `/system/lib/` (from `bin/lib/`, permissions 0644, `u:object_r:system_lib_file:s0`).
2. **Init RC Configuration:** Place `kaorihelper` into `/system/bin/` (permissions 0755) and `init.kaorios.rc` into `/system/etc/init/` (from `bin/init/`, permissions 0644, `u:object_r:system_file:s0`).

The public regression suite passed 94 tests with assembly enabled. This is host/synthetic-artifact evidence, not proof of real-device boot, Play Integrity results, or complete cross-JAR linkage. Neither script publishes to a release channel or tests a real ROM/device. Retain clean input copies and follow §5 for additional hooks or checks outside the stated coverage.
