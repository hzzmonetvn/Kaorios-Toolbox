# Decisions

## 2026-10-30 — Native PIF Libraries and Early-Boot Init Configuration

- **Chosen:**
  1. Add native PIF libraries (`libkaoripif.so`, `libkaoriospif.so`, `libshadowhook_kaorios.so`) for both `arm64-v8a` and `armeabi-v7a` architectures under `bin/lib/`. These provide libc hooks on `__system_property_read_callback` directly in target processes (e.g. `com.google.android.gms.unstable`) without classloader leaks.
  2. Add init configuration `init.kaorios.rc` and deployment scripts under `bin/init/` to spoof critical boot properties (`ro.boot.vbmeta.device_state locked`, `ro.boot.verifiedbootstate green`, `ro.boot.flash.locked 1`, `ro.secure 1`, `ro.debuggable 0`, etc.) at `post-fs-data` via `kaorihelper`.
  3. Purge third-party/legacy branded library and LSPosed ROM references from public documentation and patch bundles. Focus exclusively on native PIF libraries, init RC scripts, and surgical framework/services patching.
- **Considered:**
  - Retaining third-party ROM runtime modules or legacy names: rejected to maintain strict brand isolation, codebase cleaniness, and eliminate external runtime dependencies.
  - Relying solely on framework Java hooks for property spoofing: rejected because native DroidGuard / Keystore callers query system properties directly through libc Bionic interfaces prior to Java framework initialization.

## 2026-10-25 — Payload ABI resolution and artifact toolchain enhancement

- **Chosen:**
  1. Record resolution of the CertificateChainIfNeeded ABI mismatch: the updated release payload `classes.dex` (`94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d`) provides both the three-argument `CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` and one-argument `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` overloads, satisfying both caller variants.
  2. Implement `run_baksmali()` and `run_smali()` classpath auto-resolution fallback in `patch-framework-a17-artifact.sh` (mirroring `patch-services-a17-artifact.sh`), allowing both fat standalone JARs and thin JARs with companion libraries (`smali-dexlib2.jar`, `smali-util.jar`, `antlr-runtime.jar`, `jcommander.jar`, `guava.jar`) to run seamlessly.
  3. Document toolchain parameterization: smali 3.0.8 does not map API 37 in `HeaderItem.getMagicForApi()`, triggering `IllegalArgumentException: dexVersion must be within [0, 999]` when assembling. Use `--api 37 --smali-api 34` for the supplied DEX 040 case; this does not establish universal DEX 041/container or CompactDex support.
- **Considered:**
  - Hardcoding `--api 29` inside the bash script: rejected to preserve explicit caller configuration and flexibility for future smali versions supporting API 37 natively.
  - Modifying DEX magic header bytes to disguise DEX 041/040 versions: rejected as an unsafe practice that risks silent runtime failure and bootloops.

## 2026-10-25 — Complete framework caller manifest and class ownership

- **Chosen:** Require `ActivityThread`, `Instrumentation`, `ApplicationPackageManager`, `Settings$NameValueCache`, `AndroidKeyStoreSpi` and `AndroidKeyStoreKeyPairGeneratorSpi` in the framework candidate manifest. A missing caller fails the candidate. Verify the saved candidate after re-extraction, replace only exact incoming payload descriptors, rebuild every modified owner DEX and retain unrelated definitions.
- **Policy boundary:** The NameValueCache entry guard reports `"0"` only for `adb_enabled`, `adb_wifi_enabled` and `development_settings_enabled` when the helper policy permits. It does not disable actual ADB.
- **Rejected:** Accepting a partial owner-tree success as complete framework coverage, or deleting old obfuscated classes by namespace/name similarity. Legacy cleanup is not automatic and requires a verified ownership inventory.
- **Evidence boundary:** The public regression suite passed 94 tests with assembly enabled. Host/synthetic-artifact checks do not establish real-device boot or Play Integrity outcomes.
