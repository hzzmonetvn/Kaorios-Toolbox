# Decisions

## 2026-10-12 — Beginner patch guides and manual agent procedure

- Reorganized the four current 2.0.6.1 guides around an end-to-end stock-copy → DEX owner → patch → final-archive verification workflow for readers who know basic smali, retaining exact method and hook examples. Rejected a shorter command-only checklist because register and DEX ownership mistakes require explicit stop conditions.
- Replaced the automatic-patcher-oriented `Toolbox-docs/agent-guide.md` with `Toolbox-docs/agent.md` for evidence-based manual patching on authorized copies. Kept the automatic patcher guide separate; its mode 1 does not cover every manual/optional hook. The agent can adapt a verified ROM-specific layout, not guess one; separate authorization is required to sign, publish, flash, or overwrite stock.
- Described helper and verifier coverage narrowly and required rechecking DEX from the saved archive: an artifact helper or structural PASS is not evidence of all hooks or real-device behavior. Retained stock `SettingsProvider.apk` and archived 2.0.6.0 guides unchanged.

## 2026-10-12 — Public cleanup and ROM patch documentation

- Removed the unused `CURRENT_MODEL` and `SDK_INT` reads from `Toolbox-Update/scripts/update_pif.sh`; neither value influenced the updater's output or fallback. Kept the device and initial SDK values used by fallback logic.
- Retired `verify-settingsprovider-a17-hooks.py` as a fail-closed compatibility entry point, with a regression test for its Python API and CLI. Kept the entry point rather than deleting it because historical guides and automation can still invoke its filename; a successful hook verification would misleadingly imply that the stock provider needs patching. Updated the DEX planner description to reflect its services use.
- Expanded the four current 2.0.6.1 guides and added `Toolbox-docs/agent-guide.md` for patching an authorized **copy**: inventory DEX owners, preserve clean inputs, stop on partial failures, verify the packaged artifact, and keep `SettingsProvider.apk` stock. Kept the 2.0.6.0 guide bodies as historical references with prominent retirement notices instead of rewriting their release history. Rejected a self-running patch bot and any implicit permission to flash, sign, or publish ROM outputs; those are separate operations requiring authorization.
- Did not delete compatibility launchers, ROM hook descriptors, or provider-era documentation wholesale: their external consumers or archival purpose cannot be ruled out by a local source search alone.
