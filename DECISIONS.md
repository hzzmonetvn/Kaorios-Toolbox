# Kaorios Toolbox — Architecture Decision Records (DECISIONS.md)

This document records the architectural, design, and verification decisions governing the public repository (`Kaorios-Toolbox`). Each record outlines the architectural context, chosen technical approach, alternatives evaluated and rejected, and explicit evidence boundaries separating host-side verification from physical device runtime outcomes.

---

## ADR-013: Complete Native Release Bundle and Shrinker Evidence

- **Date:** 2026-11-09
- **Status:** Implemented locally; runner verification pending
- **Decision:** Build both native PIF targets for ARM64 and ARM32 in the public
  APK workflow using the same private source checkout. Require defined JNI
  exports and matching ELF machine types. Include both targets, application
  native logic, APKs, DEX, CLI, source/run provenance and R8 reports in a
  path-preserving archive, with checksums inside and outside the archive.
- **Rejected:** Attaching legacy `bin/lib` binaries under the new installer's
  name, disabling R8 solely because a DEX is small, and relying on flattened
  individual downloads for a nested checksum manifest.
- **Verification:** Public Python suite: 87 tests, 2 skipped; `actionlint`
  passes on the workflow. The manifest now covers `UNSIGNED-TEST.txt` when it
  is staged. Android NDK compilation and artifact publication require a new
  run. No claim of ROM boot or platform-internal API compatibility is made.

---

## ADR-012: Unreachable Signing Gate & `libkaoripif.so` Name Collision

- **Date:** 2026-11-09
- **Status:** Accepted & Enforced
- **Context:**
  Two defects surfaced while producing a build from private source commit `a52106d` (`551d65b`–`a52106d` port the PIF installer into `libkaoripif`).

  1. Public run `42650406829` failed in "Prepare APKs and extract full framework DEX" with `DOES NOT VERIFY / ERROR: Missing META-INF/MANIFEST.MF`, roughly twelve minutes in. The same workflow passed the day before. Diffing the runner-expanded scripts proved the difference was the dispatch input, not the code: the passing run logged `if [[ "true" == "true" ]]`, the failing run `if [[ "false" == "true" ]]`.
  2. The guard that should have caught this — `refusing to package an unsigned release APK` — sat in the "Remove boot framework helper classes" step *after* an early exit. When the Toolbox APK carried no framework helper classes the step printed `Toolbox APK đã sạch` and returned `0` immediately, so the guard was unreachable by construction. A release dispatch without a keystore therefore failed late, in a step whose error message names neither signing nor configuration.

  Separately, the newly built framework JNI library shares the file name `libkaoripif.so` with the prebuilt reference binary in `bin/lib/`. `readelf` shows they are unrelated: the `bin/lib/` copy carries `SONAME libntpif.so` and exports `shadowhook_interceptor_glue`; the installer exports `JNI_OnLoad` and `Java_android_security_kaorios_KaoriosPifInstaller_nativeInstallPif`. They are deployed to different partitions (`/system` vs `/system_ext`) and loaded by different mechanisms.

- **Chosen Architecture & Implementation:**
  1. **Fail Fast on Signing:** Moved the keystore/`unsigned_test` decision into "Verify source and mask signing properties", which runs before the SDK/NDK download. A dispatch with no credentials and `unsigned_test=false` now stops in seconds with an actionable message instead of failing twelve minutes later at `apksigner`.
  2. **Preserved Release Semantics:** Kept `unsigned_test` defaulting to `false`. The intent that a release build must be verifiable is unchanged; only the detection point moved.
  3. **Documented the Name Collision:** Added section 1.1 to `bin/lib/README.md` comparing both libraries by `SONAME`, exported symbols, deploy path and loader, with `readelf` commands to tell them apart.
  4. **Documented `/system_ext` Deployment:** Added Method 3 covering partition-specific SELinux labelling, since `install.sh` hard-codes `u:object_r:system_lib_file:s0` and targets `/system` only.

- **Alternatives Considered & Rejected:**
  - *Relaxing the verification branch so an unsigned APK passes:* Rejected; this contradicts ADR-007 §1 and would let unusable artifacts reach users under a release name.
  - *Deleting the unreachable guard in the helper-removal step:* Rejected; the guard is correct, it was simply misplaced. It stays as defence in depth for the path where helper classes are present.
  - *Renaming the framework library to avoid the collision:* Rejected for this change; the load path `/system_ext/lib64/libkaoripif.so` is part of the ported loader chain, so renaming is a behaviour change requiring its own verification, not a documentation fix.
  - *Making `unsigned_test` default to `true`:* Rejected; it would make the unsafe mode the default for operators who do have credentials.

- **Evidence Boundary:**
  Dispatch-input difference proven from the workflow runner's expanded script echo, not from the API (the `actions/runs` payload omits `workflow_dispatch` inputs). Run `42653057781` — dispatch with `unsigned_test=true` at public `11002cf`, private source `a52106d` — completed green: all 19 steps passed and the produced artifacts verify against their manifest (`sha256sum -c`, 6/6, including `kaorios-toolbox` extracted from the tarball). The name-collision claims are static: `readelf --dyn-syms` and `readelf -d` on both files. No on-device execution was performed.

---

## ADR-011: Comprehensive Public Documentation Overhaul, Link Remediation & Verification Gates

- **Date:** 2026-11-08
- **Status:** Accepted & Enforced
- **Context:**
  The public documentation across `Toolbox-docs/2.0.6+/`, `bin/`, and the repository root contained dead relative links pointing to nonexistent `../Template/` directories, incomplete technical specifications for native ELF binaries and standalone Rust tools, and ambiguous claims that blurred the line between host-side static checks and physical hardware attestation. A complete overhaul was required to ensure that all documentation reflects verified public repository facts without altering product source or binary code.

- **Chosen Architecture & Implementation:**
  1. **Link Remediation:** Converted 34 dead relative links in `CorePatch.md`, `CorePatch_VI.md`, `Disable_Secure_Flag.md`, and `Disable_Secure_Flag_VI.md` into precise inline code references targeting specific classes (`PackageParser`, `ApkSignatureVerifier`, `StrictJarVerifier`, `PackageManagerServiceUtils`, `InstallPackageHelper`, `miui-services.jar`, `DevicePolicyCacheImpl`, `WindowState`).
  2. **Bilingual Synchronization:** Restructured both English and Vietnamese documentation for all manual and automated patcher guides (`Patch_Guide_2.0.6.1.md`, `Patch_Guide_2.0.6.1_VI.md`, `Patcher_Guide_2.0.6.1.md`, `Patcher_Guide_2.0.6.1_VI.md`, `Rust_CLI_Guide.md`, `Rust_CLI_Guide_VI.md`), ensuring parity across structural layouts, code snippets, and technical terminology.
  3. **Documentation Expansion:** Expanded technical manuals for `bin/init/` (`init.kaorios.rc` post-fs-data execution, SELinux contexts), `bin/resetprop/` (`kaorihelper` CLI and property driver architecture), and `bin/kaorios-toolbox/` (AArch64 standalone native Rust CLI/TUI engine).
  4. **Root Portal Structure:** Restructured `README.md` into five core operational pillars: (1) Framework & Services Patching, (2) Optional Smali Modifications, (3) Standalone Native Rust Engine, (4) Early Boot Init Configuration, and (5) Root Helper Zygisk Alternative.

- **Alternatives Considered & Rejected:**
  - *Generating speculative template files:* Rejected; synthesizing dummy files to satisfy broken links would pollute the repository with unverified assets and violate zero-synthetic-artifact principles.
  - *Deleting undocumented optional guides (CorePatch, Secure Flag):* Rejected; these guides provide critical static bytecode references for advanced ROM builders and security researchers.
  - *Committing or pushing changes during review:* Rejected; the review was completed in the local working tree before any commit or push.

- **Evidence Boundary:**
  All 18 tracked Markdown files verified with custom Python link validation tooling confirming 0 broken internal links. `git diff --check` passes with zero whitespace or line-ending errors. Zero product source files or binary assets modified.

---

## ADR-010: Native PIF Property Bridge & Stub Qualification

- **Date:** 2026-11-08
- **Status:** Accepted & Enforced
- **Context:**
  `bin/lib/README.md` previously described `libshadowhook_kaorios.so` as an inline hooking engine and implied that the presence of Bionic libc property symbols in `libkaoripif.so` guaranteed universal interception across the entire operating system. Detailed ELF inspection using `readelf -s` and `nm -D` revealed that `libshadowhook_kaorios.so` contains 0 dynamic symbols and that interception requires active process injection.

- **Chosen Architecture & Implementation:**
  1. **Companion Stub Characterization:** Documented `libshadowhook_kaorios.so` (1,424 bytes on arm64, 1,028 bytes on arm32) as an empty ELF companion stub library (`.dynsym` contains 0 defined exports) retained for packaging compatibility, rather than an active standalone engine.
  2. **Observed Symbol Documentation:** Documented that `libkaoripif.so` (SONAME `libntpif.so`) defines the exported dynamic symbol `shadowhook_interceptor_glue` and imports Bionic libc property functions (`__system_property_find`, `__system_property_get`, `__system_property_read_callback@LIBC_O`), while avoiding speculative claims about runtime execution or prologue rewriting.
  3. **Import vs. Attachment Boundary:** Established explicit boundaries explaining that undefined Bionic libc imports in an ELF dynamic table do not equate to runtime property spoofing without a verified loading mechanism, runtime execution, and permissive SELinux contexts.

- **Alternatives Considered & Rejected:**
  - *Deleting `libshadowhook_kaorios.so` from the tree:* Rejected; removing prebuilt binaries alters release tree structure and may break downstream ROM build scripts expecting the library's presence.
  - *Leaving inaccurate documentation uncorrected:* Rejected; technical documentation must truthfully describe observed binary headers and symbol tables.

- **Evidence Boundary:**
  Verified via host-side ELF inspection with `readelf -h`, `readelf -d`, `readelf -s`, and `nm -D` on both AArch64 and ARM32 targets. Host inspection proves binary layout and symbol imports; it does not prove that DroidGuard attaches to the library or that Play Integrity verdicts are granted on a physical device.

---

## ADR-009: Centralized Developer Reference & Tooling Invariants (`script/`)

- **Date:** 2026-11-08
- **Status:** Accepted & Enforced
- **Context:**
  The `script/` directory contains seventeen Python and shell programs implementing complex multi-DEX analysis, AST pattern matching, abstract interpretation, and packaging automation. The architectural dependencies, pipeline invariants, and toolchain constraints were dispersed across scripts without a single developer manual.

- **Chosen Architecture & Implementation:**
  1. **Unified Developer Reference:** Created `script/README.md` covering the full tool inventory, sibling dependency graph, CLI syntax, and safety invariants.
  2. **Formal Pipeline Invariants:** Documented the seven mandatory engineering invariants: (1) Fail Closed, (2) Stage-Then-Write Architecture, (3) Exact Descriptor Ingestion, (4) Byte-Identical Preservation of Untouched Splits, (5) Re-Extracted Candidate Verification, (6) Atomic Publishing, and (7) Single Source of Truth.
  3. **Abstract Interpretation Documentation:** Documented the register lattice modeling and worklist algorithm implemented in `patch-installer-source.py`.
  4. **Toolchain Parameterization Gate:** Documented the required separation between `--api 37` (target ROM metadata) and `--smali-api 34` (assembler opcode compatibility) caused by Smali 3.0.8's lack of API 37 opcode mappings for DEX 040.

- **Alternatives Considered & Rejected:**
  - *Embedding developer invariants into user patch guides:* Rejected; user guides are bilingual and focused on operator procedures, whereas developer invariants require detailed architectural analysis of Python ASTs and abstract interpretation lattices.
  - *Relying solely on Python docstrings:* Rejected; multi-file pipeline invariants (such as stage-then-write across shell and Python boundaries) cannot be adequately captured in individual function docstrings.

- **Evidence Boundary:**
  Verified against checked-out Python source code and regression test suite execution: `python3 -m unittest discover -s script` reports 83 tests (81 passing, 2 expected skips gated by `KAORIOS_SMALI_CLASSPATH`).

---

## ADR-008: Separation of Historical Payload Artifact Identifiers from Current Availability Claims

- **Date:** 2026-11-05
- **Status:** Accepted & Enforced
- **Context:**
  Prior documentation referenced specific historical payload DEX and ZIP archive hashes as current download targets, whereas the GitHub release API for `v2.0.6.1` currently reports zero attached assets, and `v2.0.6.0` returns HTTP 404.

- **Chosen Architecture & Implementation:**
  1. **Evidentiary Benchmark Framing:** Preserved historical checksums (171,100 bytes with SHA-256 `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`, and 858,636 bytes with SHA-256 `94848e18...`) strictly as historical benchmark records.
  2. **Local Packaging Workflow:** Instructed operators to build release archives locally from reviewed public source checkouts using `python3 -I script/package_patcher_v2061.py /path/to/archive.zip` and independently calculate SHA-256 digests.
  3. **Purge of Broken Download Links:** Removed misleading external download claims from all documentation.

- **Alternatives Considered & Rejected:**
  - *Re-uploading historical binaries to GitHub releases:* Rejected; modifying remote release tags and publishing unverified artifacts is outside the scope of documentation maintenance.
  - *Deleting historical records entirely:* Rejected; retaining historical digests provides essential auditing records for operators comparing legacy ROM builds.

- **Evidence Boundary:**
  Verified via GitHub API release queries. Local packaging tested with `test_package_patcher_v2061.py`.

---

## ADR-007: Private-Source CI Artifact Packaging Gates

- **Date:** 2026-11-04
- **Status:** Accepted & Enforced
- **Context:**
  Build workflows in `.github/workflows/build-toolbox.yml` required robust packaging gates to prevent unsigned APKs, partial uploads, or stale build artifacts from being published as releases.

- **Chosen Architecture & Implementation:**
  1. **Signature Enforcement:** Required explicit `apksigner verify` validation; missing credentials or verification failures trigger immediate workflow failure.
  2. **Clean Staging:** Removed stale `dist/` directories prior to staging. Computed checksums strictly relative to `dist/`.
  3. **Recursive Enumeration & URL Validation:** Recursively enumerated all output files (including nested native libraries), required 100% upload success, and validated upload API URLs against markdown link injection patterns.

- **Alternatives Considered & Rejected:**
  - *Allowing unsigned fallback APKs:* Rejected; unsigned release builds create security ambiguities for downstream users.
  - *Shallow artifact enumeration:* Rejected; misses nested native `.so` files required by ROM builders.

- **Evidence Boundary:**
  Verified via unit tests in `test_build_toolbox_packaging.py` asserting checksum relative paths, signature gates, and upload validation logic.

---

## ADR-006: Public Package and Guide Alignment

- **Date:** 2026-11-04
- **Status:** Accepted & Enforced
- **Context:**
  Clarification was required regarding the boundaries of the manual ROM patch workflow versus standalone repository assets.

- **Chosen Architecture & Implementation:**
  1. **Manual Patch Scope:** Restricted manual framework patch documentation strictly to `framework.jar` and `services.jar`.
  2. **Asset Separation:** Explicitly separated native ELF libraries (`bin/lib/`) and early-boot scripts (`bin/init/`) as standalone ROM assets rather than components of the Java framework patch.
  3. **Attestation Limits:** Qualified that copying native assets does not guarantee Google Play Integrity attestation outcomes.

- **Evidence Boundary:**
  Confirmed via documentation reviews and static artifact validation.

---

## ADR-005: Historical v2.0.6.1 Pre-Release & Artifact Hardening

- **Date:** 2026-11-03
- **Status:** Historical Record
- **Context:**
  Record of historical hardening updates in the framework DEX:
  - `ThreadLocal<Boolean> sPropertyHookActive` recursion guard in `KaoriosHook.getSpoofedProperty` preventing stack overflow on re-entrant property queries.
  - Longest-suffix wildcard property matching (`*.security_patch` deterministically takes precedence over `*.patch`).
  - Reflective capping of `Build.VERSION.DEVICE_INITIAL_SDK_INT` to $\le 32$ for `com.google.android.gms.unstable` (DroidGuard), avoiding mandatory Android 13+ RKP hardware Keybox enforcement and allowing clean basic attestation fallback.
  - Offloaded all Gradle compilation strictly to GitHub Actions CI runners to protect host resources.

- **Evidence Boundary:**
  Historical CI build run 41648224328 and public ABI test suite (`test_payload_abi.py`).

---

## ADR-004: Retirement of CI Helper Build Targets & Step Cleanup

- **Date:** 2026-10-31
- **Status:** Accepted & Enforced
- **Context:**
  `Kaorios-Helper/` was deleted from the repository in commit `32655d9`, causing CI runs in `.github/workflows/check-tools.yml` to fail with `Start directory is not importable`.

- **Chosen Architecture & Implementation:**
  1. Removed `Kaorios-Helper/**` path filters and verification steps from `check-tools.yml`.
  2. Deleted dead workflow `.github/workflows/build-helper.yml`.
  3. Corrected skip counts in documentation: exactly 2 tests require `KAORIOS_SMALI_CLASSPATH` (`test_patcher_register_encoding.py:108` and `:397`).

- **Evidence Boundary:**
  GitHub Actions run logs and test suite discovery passes.

---

## ADR-003: Elimination of Keystore Smali Hooks & Reduction of Framework Callers

- **Date:** 2026-10-31
- **Status:** Accepted & Enforced
- **Context:**
  Prior guides patched `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi`. Source inspection revealed that the corresponding helper methods in `KaoriosHook` are stubs (`CertificateChainIfNeeded` returns input, `initGenerateSoftwareKeyPair` returns null, `Remove` is empty).

- **Chosen Architecture & Implementation:**
  1. Dropped Keystore hooks from all patchers, verifiers, and documentation. Stock ROM keystore classes remain unpatched.
  2. Documented that keystore helper methods in `KaoriosHook` are stubs; public patchers do not modify keystore classes in ROM smali.
  3. Reduced required framework caller manifest to exactly three active callers: `ActivityThread`, `Instrumentation`, and `Settings$NameValueCache`. (`ApplicationPackageManager` remains in the payload facade for backwards compatibility but is no longer patched in stock ROMs).

- **Evidence Boundary:**
  Source inspection of `KaoriosHook` facade methods and verification passes in `verify-framework-a17-hooks.py --caller-only`.

---

## ADR-002: Native PIF Libraries & Early-Boot Init Property Configuration

- **Date:** 2026-10-30
- **Status:** Accepted & Enforced
- **Context:**
  DroidGuard and native daemons query system properties directly through Bionic libc interfaces prior to Java framework initialization.

- **Chosen Architecture & Implementation:**
  1. Introduced prebuilt native PIF shared libraries (`libkaoripif.so`, `libkaoriospif.so`, `libshadowhook_kaorios.so`) under `bin/lib/` to intercept `__system_property_read_callback`.
  2. Added `init.kaorios.rc` under `bin/init/` to spoof critical boot properties (`ro.boot.vbmeta.device_state locked`, `ro.boot.verifiedbootstate green`, `ro.boot.flash.locked 1`) at `post-fs-data` via `kaorihelper`.
  3. Purged third-party runtime modules and LSPosed ROM references from documentation.

- **Evidence Boundary:**
  Static ELF header verification and file context mapping.

---

## ADR-001: Facade ABI Resolution & Toolchain Parameterization

- **Date:** 2026-10-25
- **Status:** Accepted & Enforced
- **Context:**
  Smali 3.0.8 does not map API 37 in its opcode lookup table (`HeaderItem.getMagicForApi()`), raising `IllegalArgumentException: dexVersion must be within [0, 999]` during assembly.

- **Chosen Architecture & Implementation:**
  1. Decoupled `--api` (target ROM metadata label, defaulting to 37) from `--smali-api` (assembler opcode version, set to 34 for DEX 040 cases).
  2. Implemented automatic classpath resolution in shell pipelines supporting both fat standalone JARs and thin JARs with companion libraries.

- **Evidence Boundary:**
  Automated tests in `test_framework_artifact_plan.py` and assembly test passes with Smali 3.0.8.
