# Decisions

## 2026-10-16 — Kow bot PIF daily source

- Supersede the earlier stable-OTA updater policy below: daily default is Pixel 7 Pro (`cheetah`), and only Pixel 7 Pro, Pixel 7, Pixel 7a and Pixel 6a are eligible catalog entries. Resolve the bot HEAD once and fetch its manifest and four property files at that SHA; reject malformed or mismatched records before updating either JSON. Rejected OTA HTML scraping and publishing other upstream models.
- Normalize five factual fields into our existing JSON schema without copying upstream scripts. The upstream [KOWX712/PlayIntegrityFix](https://github.com/KOWX712/PlayIntegrityFix) repository advertises [GPL-3.0](https://github.com/KOWX712/PlayIntegrityFix/blob/inject_s/LICENSE); the `bot` branch does not contain a separate license file. Source snapshot: [`08592e9d4488813a182e51470220811e643e59c1`](https://github.com/KOWX712/PlayIntegrityFix/tree/08592e9d4488813a182e51470220811e643e59c1). Its eligible records are `_beta`/CANARY, not verified stable builds or guaranteed Play Integrity verdicts.
- Stage both JSON files and roll back the default if replacing the catalog fails; if rollback also fails, retain the original default backup on disk and report its path. This is not a cross-file atomic transaction under process termination or power loss. Offline mocks exercise HEAD pinning, rejection and rollback before any live data update.

## 2026-10-16 — Pixel ≤ 7 PIF data and stable-only updater

- Supersede the earlier Pixel ≤ 9 catalog and priority below: restrict the default PIF and selectable public catalog to numbered Pixel 7-family and older devices. The current Pixel 7 Pro record uses the existing historical catalog fingerprint; this is not a claim of current Play Integrity success.
- The scheduled updater accepts stable OTA links and stable-shaped matching metadata only. Reject the previous automatic QPR/beta fallback: Google's stable page may present terms without ZIP links, and automatically publishing a beta fingerprint in that case mislabels its channel. If no eligible stable link is accessible, fail without changing either JSON. No stable Pixel 7 OTA metadata was independently verified in this task; do not invent a newer fingerprint.

## 2026-10-16 — Pixel ≤ 9 PIF Priority & In-App Presets Catalog

- Restricted PIF automated updater (`Toolbox-Update/scripts/update_pif.sh`) and priority list to Google Pixel 9 and older devices (Pixel 9 Pro XL down to Pixel 4/5), dropping speculative Pixel 10 and 11 targets. Updated `Toolbox-data/Pif-props.json` to Pixel 9 Pro XL (`komodo`).
- Generated and maintained `Toolbox-data/pif-devices.json` providing a catalog of valid Pixel ≤ 9 PIF presets. Updated `.github/workflows/update_pif.yaml` to commit both `Pif-props.json` and `pif-devices.json`.
- Synced `classes.dex` SHA-256 in public documentation to verified release pre-release v2.0.6.1 asset hash `d145963fc369c8d0fe683b850adece96b449c57f151bdd4572ca18e9a910d5b7`.

## 2026-10-16 — Old provider patch warning, hide-Toolbox removal, ignore hardening

- Chose warning-only (user decision): the four 2.0.6.1 guides and README.md now say to restore the stock `SettingsProvider.apk` from the same ROM build before importing the current 2.0.6.1 `classes.dex` if any older Kaorios recipe patched it, because those recipes call `KaoriosHook` methods the current DEX no longer defines (`NoSuchMethodError` in the system process, likely bootloop). Rejected restoring pass-through provider bridges in the DEX: that keeps a retired route alive. The packaged ZIP README is unchanged; the published ZIP asset is not being replaced.
- Removed the "Hide Toolbox package from apps" feature; users hide Toolbox themselves. A tracked-file search found no public README, guide, Toolbox-data or language-string mention to remove, so no public doc changed for it.
- Added `KeySign/`, `*.jks`, `*.keystore`, `keystore.properties` and `local.properties` to `.gitignore` so signing material and local build config cannot be committed by accident.

## 2026-10-15 — Remove the retired SettingsProvider patch route

- Removed the three retired provider patch/verifier entry points, their dedicated test, five A13–A17 provider smali samples and four historical 2.0.6.0 guides. The public 2.0.6.1 ZIP source inventory no longer includes those four script/test members. Removed the obsolete "Spoof setting value per app" feature bullet from README.md. This changes the source and future packaged ZIPs, not an already published release asset; release replacement requires separate verification.
- Rejected keeping fail-closed wrappers and provider-era recipes as historical entry points: they imply a supported patch path that is no longer offered. Retained explicit stock `SettingsProvider.apk` guidance and regression checks that provider-only input fails and mixed-directory runs never alter provider bytes. Kept the stock-provider SELinux diagnostic and the distinct `framework.jar` `Settings$NameValueCache` hook; neither patches the provider APK. Earlier decisions below remain historical, not current instructions.

## 2026-10-15 — Verified 2.0.6.1 pre-release refresh

- Replaced the DEX and patcher ZIP in the existing pre-release after exact-source CI and saved-asset checks; downloaded both again with `SHA256SUMS` passing. Current SHA-256: DEX `f2d9f754bf87a96f4202d332f68c8f155e6e1beb947b719eef6378131a0af4c6`, ZIP `58ed595bf1789502e387e87b806dd418297bdb78a71bbc87adcb04fad1f17597`. The older values below record earlier release states, not current downloads. The stable/latest 2.0.6.0 release was not changed; previous 2.0.6.1 downloaders must fetch the new bytes.
- Rejected reusing the older ZIP after source tests alone and claiming Google Flags ROM support from a compiled bridge. Checked 21 direct manager method references, eight field references and 10 manual hook descriptors against defined DEX members; verified that the seven removed SettingsProvider hook bridges are completely absent. No general ABI, saved-ROM or real-device result follows from those checks.

## 2026-10-15 — Patcher and guide audit for 2.0.6.1

- Reproduced and corrected false `ALREADY_PATCHED`/`PATCHED` results for Build String initializers, misplaced Keystore generator hooks, mismatched `.class` owners, crossing parameter `/range` operands, and shifted literal instruction encoding. Keystore entry hooks now follow parameter metadata; ambiguous leading labels and unverifiable stock fallbacks fail closed. Rejected treating hook-name presence, matching filenames, or register bounds alone as proof that stock behavior survives.
- Retired the optional Secure Flag `captureDisplay` recipe because its method descriptor and result register disagree with its linked example; do not guess a replacement. The paired EN/VI links now describe its limited status. Keep Google Flags ROM interception unsupported until an attributable owner/callsite, insertion contract and saved-ROM verifier exist; a compiled bridge is not a caller.
- Package the patcher from an explicit, deterministic public-source inventory, keep historical provider filenames as fail-closed entry points, and test extracted ZIP bytes rather than source tests alone. Rejected deleting wrappers still reachable by outside scripts; rejected publishing the older ZIP whose provider entrypoint differs from current source. Release replacement remains conditional on CI and downloaded-asset checksum verification.
- Preserve an existing COPG opt-in when a startup retry fails; first-enable failure still removes only the flag created by that attempt. Describe current Full-only Helper workflow and hidden Plugins UI accurately, while labeling older profile artifacts and licensing observations as historical. Host and CI results are not ROM/device validation.
- Six `Toolbox-data/device-model.json` fingerprint presets (lines 27, 36, 45, 169, 259 and 377 at this revision) fail the Android CDD fingerprint format: four contain whitespace, one is only a model token and one lacks the final type/tags segment. Do not invent replacements without trustworthy ROM values and a verified missing-field fallback. A public-only scan cannot establish every external consumer or the absence of bugs.

## 2026-10-15 — 2.0.6.1 pre-release payload replacement

- Supersedes the earlier 2026-10-14/15 statements about the published 2.0.6.1 DEX being older than Google Flags or keeping that asset unchanged: replaced `classes.dex` in the existing 2.0.6.1 release with the verified compiled payload (SHA-256 `786decf137ad0d662ee7e82a0ee3575fc9883144388c7268e0e665088377cb95`) and updated `SHA256SUMS`; retained the patcher ZIP. Marked 2.0.6.1 pre-release while 2.0.6.0 remains stable/latest. The released 2.0.6.0 manager's direct framework references and existing manual hook descriptors remain available in the replacement DEX; compatibility with other callers of the old DEX is not guaranteed.
- Chose to document the callable Google Flags query-result helper without claiming supported ROM interception: the patcher and manual guides have no verified Phenotype caller, ROM-specific insertion recipe or saved-ROM verifier for A13–A17. Rejected treating compiled source, a same-tag replacement or host tests as device validation. Keep private source/build details out of public docs and do not replace stock ROM classes or guess a query hook.

## 2026-10-15 — Google Flags patch guidance

- Keep the published 2.0.6.1 payload and its manual/automatic hook recipes intact, with explicit cross-links and warnings against substituting an unpublished Framework DEX. Do not put private Framework CI artifact details or internal source status in public guidance; an artifact build is not a released Google Flags payload.
- Reject a Phenotype smali recipe or patcher mode for A13–A17: no attributable stock ROM query-result method, owner DEX, register layout or saved-artifact verifier has been established for any version. A compiled bridge plus passing tests cannot install or verify the missing caller. Do not publish a new release or claim ROM/device behavior from build-only evidence.

## 2026-10-14 — Google Flags documentation boundary

- Added paired English/Vietnamese status guides and README links rather than a smali insertion recipe: the published 2.0.6.1 payload predates Google Flags, and importing it or running the patcher cannot supply the missing behavior. The existing system-feature query hook remains distinct.
- Rejected treating A13–A17 template labels as proof of a ROM callsite. A future recipe needs a published compatible payload and a traced, verified callsite on the exact authorized ROM before patching and device validation. Kept historical guides unchanged.

## 2026-10-12 — Functional audit and guide clarity

- Replaced the Build spoof field initializer rather than appending a second one; an initialized stock field otherwise produced invalid smali. Added a regression for patching and rejecting the previously malformed output.
- Required the ComputerEngine visibility hook to appear before an unconditional return/throw, rather than accepting an unreachable pre-existing hook. Kept the verifier scoped to this provable case rather than claiming general control-flow analysis.
- Canonicalized artifact input/output paths and compared existing file identity before invoking toolchains to prevent lexical, symlink and hardlink aliases from overwriting the input; kept output names free to differ. Retained the compatibility launchers and unknown external entry points.
- When first-time `enable-tee` fails to start the supervisor, remove only the opt-in flag created by that attempt; preserve a flag that existed before retry. Do not remove runtime user configuration or key material.
- Recast the four bilingual 2.0.6.1 guides into short JAR → class → method → insertion steps modeled on the Secure Flag guide while retaining register/owner/packaged-JAR stop checks. Kept the system-feature hook scope distinct from full GMS functionality and the separately installed Helper module distinct from artifact patch scripts; rejected a bare command-only recipe because it obscures split DEX ownership and partial writes.
- No dead-code deletion was justified in the audited public paths: external entry points and module hooks can be reached outside local callers.

## 2026-10-12 — Beginner patch guides and manual agent procedure

- Reorganized the four current 2.0.6.1 guides around an end-to-end stock-copy → DEX owner → patch → final-archive verification workflow for readers who know basic smali, retaining exact method and hook examples. Rejected a shorter command-only checklist because register and DEX ownership mistakes require explicit stop conditions.
- Replaced the automatic-patcher-oriented `Toolbox-docs/agent-guide.md` with `Toolbox-docs/agent.md` for evidence-based manual patching on authorized copies. Kept the automatic patcher guide separate; its mode 1 does not cover every manual/optional hook. The agent can adapt a verified ROM-specific layout, not guess one; separate authorization is required to sign, publish, flash, or overwrite stock.
- Described helper and verifier coverage narrowly and required rechecking DEX from the saved archive: an artifact helper or structural PASS is not evidence of all hooks or real-device behavior. Retained stock `SettingsProvider.apk` and archived 2.0.6.0 guides unchanged.

## 2026-10-12 — Public cleanup and ROM patch documentation

- Removed the unused `CURRENT_MODEL` and `SDK_INT` reads from `Toolbox-Update/scripts/update_pif.sh`; neither value influenced the updater's output or fallback. Kept the device and initial SDK values used by fallback logic.
- Retired `verify-settingsprovider-a17-hooks.py` as a fail-closed compatibility entry point, with a regression test for its Python API and CLI. Kept the entry point rather than deleting it because historical guides and automation can still invoke its filename; a successful hook verification would misleadingly imply that the stock provider needs patching. Updated the DEX planner description to reflect its services use.
- Expanded the four current 2.0.6.1 guides and added `Toolbox-docs/agent-guide.md` for patching an authorized **copy**: inventory DEX owners, preserve clean inputs, stop on partial failures, verify the packaged artifact, and keep `SettingsProvider.apk` stock. Kept the 2.0.6.0 guide bodies as historical references with prominent retirement notices instead of rewriting their release history. Rejected a self-running patch bot and any implicit permission to flash, sign, or publish ROM outputs; those are separate operations requiring authorization.
- Did not delete compatibility launchers, ROM hook descriptors, or provider-era documentation wholesale: their external consumers or archival purpose cannot be ruled out by a local source search alone.
