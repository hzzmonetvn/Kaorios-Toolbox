# Kaorios Toolbox Patcher (`script/`)

Clean-stock Android 13–17 smali patcher, DEX validator, and SELinux checker aligned with the R8-kept framework hook ABI.

## Modules

- `kaorios_hook_spec.py` — Authoritative R8-kept class contract and hook descriptors (`KaoriosHook`, `AdvancedPolicyService`, `KaoriosFramework`, `KaoriosPifInstaller`, `PifNative`).
- `smali_engine.py` — Clean-stock smali parser, Dalvik 4-bit (`v0..v15`) register lowering engine (`move*/from16`, wide `J`/`D` pairs, cycle-safe parallel moves, invoke/move-result adjacency preservation), and hook injectors.
- `dex_packager.py` — Pure-Python DEX binary parser (`v035`–`v041`), payload validator, collision detector, `baksmali`/`smali` runner, and transactional JAR/APK repacker.
- `kaorios_patcher.py` — Unified CLI entrypoint.
- `package_patcher.py` — Builds a deterministic ZIP archive of the patcher toolchain.
- `validate_keybox.py` — Structural XML validator for keybox files.

## Prerequisites

- Python 3.10+ (standard library only)
- Java 17+ and Android `smali` / `baksmali` 3.0.x (or 2.x) configured via one of:
  - `KAORIOS_SMALI_CLASSPATH=/path/to/smali-jars/*`
  - `BAKSMALI_JAR=/path/to/baksmali.jar SMALI_JAR=/path/to/smali.jar`
  - `baksmali` and `smali` executables on `PATH`

## CLI Usage (Clean Stock ROM Inputs Required)

Every command refuses inputs that already contain `android.security.kaorios.*` or `com.kousei.framework.*` classes/calls, and never mutates `--input` in place.

```bash
# Inspect payload classes.dex
python3 script/kaorios_patcher.py inspect-payload --payload dist/classes.dex

# Patch clean stock framework.jar (imports classesN.dex + hooks F1-F7)
python3 script/kaorios_patcher.py patch-framework \
  --input stock/framework.jar \
  --payload dist/classes.dex \
  --output out/framework.jar

# Patch clean stock services.jar (hooks S1-S4; optional --enable-secure-flag / --enable-corepatch)
python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-secure-flag

# Optional: Patch clean stock SettingsProvider.apk + check Android 17 SELinux rules
python3 script/kaorios_patcher.py patch-settings-provider \
  --input stock/SettingsProvider.apk \
  --output out/SettingsProvider.apk

python3 script/kaorios_patcher.py check-sepolicy \
  --service-contexts deployment/android17-sepolicy/service_contexts.fragment \
  --policy deployment/android17-sepolicy/kaorios_advanced_policy.te

# Verify all patched outputs
python3 script/kaorios_patcher.py verify \
  --framework out/framework.jar \
  --services out/services.jar \
  --settings-provider out/SettingsProvider.apk \
  --payload dist/classes.dex \
  --expect-secure-flag

# Build deterministic distributable ZIP
python3 script/package_patcher.py dist/kaorios-patcher.zip
```

## Running Tests

```bash
KAORIOS_SMALI_CLASSPATH="/path/to/smali/*" python3 -m unittest discover -s script -v
```
