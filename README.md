# Kaorios Toolbox

Starting with **version 2.0.4+**, Kousei will no longer be involved in the development or decision-making of Kaorios Toolbox.

📢 [**Original announcement**](https://t.me/KariosToolboxDiscussion/124662)

### Previous Versions

For **version 2.0.4.0 and below**, see:  
[Wuang26/Kaorios-Toolbox](https://github.com/Wuang26/Kaorios-Toolbox)

## ✨ Features

- ✅ Play Integrity fix.
- 🧩 Pixel & properties spoofing. [PIF preset and OTA channel policy](Toolbox-docs/PIF_PRESETS.md).
- ⚙️ Per-app spoofing manager.
- 🙈 Hide installed app list (Caller-aware isolation).
- 🛠️ Hide Developer Options & ADB status.
- 🔓 Disable FLAG_SECURE (Take screenshots & screen record restricted apps).
- ☁️ Google Photos unlimited backup.
- 🧰 Payload dumper integration.
- 🎮 Unlock high-FPS modes in games.
- 📊 Overlay display for FPS and CPU.

---
## 🖼️ Screenshots

<p align="center">
  <a href="https://raw.githubusercontent.com/hzzmonetvn/Kaorios-Toolbox/refs/heads/main/Toolbox-screenshots/Home.png">
    <img src="https://raw.githubusercontent.com/hzzmonetvn/Kaorios-Toolbox/refs/heads/main/Toolbox-screenshots/Home.png" alt="Home Screen" width="45%" style="max-width:320px; border-radius:8px;"/>
  </a>
  <a href="https://raw.githubusercontent.com/hzzmonetvn/Kaorios-Toolbox/refs/heads/main/Toolbox-screenshots/Tools.png">
    <img src="https://raw.githubusercontent.com/hzzmonetvn/Kaorios-Toolbox/refs/heads/main/Toolbox-screenshots/Tools.png" alt="Tools Screen" width="45%" style="max-width:320px; border-radius:8px;"/>
  </a>
</p>

<p align="center">
  <a href="https://github.com/hzzmonetvn/Kaorios-Toolbox/tree/main/Toolbox-screenshots">🔍 See more screenshots →</a>
</p>

---

## 🚀 How to use

## 📦 Framework and patcher release: v2.0.6.1

See the manual Patch Guide v2.0.6.1 in [English](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.1.md) or [Tiếng Việt](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.1_VI.md) for Android 13–17. Automatic commands are documented separately in the Patcher Guide: [English](Toolbox-docs/V2.0.3+/Patcher_Guide_2.0.6.1.md) / [Tiếng Việt](Toolbox-docs/V2.0.3+/Patcher_Guide_2.0.6.1_VI.md). Agents manually patching authorized ROM copies should also follow the [manual-patching agent procedure](Toolbox-docs/agent.md).

[Release 2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0) remains stable/latest and supplies the signed manager APK. [2.0.6.1](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.1) is a pre-release with a replaced Framework `classes.dex` (SHA-256 `46b0f76f41c387ba05b62e740a93b0dc58927aa4a19fbc71434ea4f19af6c029`) and corrected patcher ZIP (SHA-256 `58ed595bf1789502e387e87b806dd418297bdb78a71bbc87adcb04fad1f17597`). Download both again if you saved earlier 2.0.6.1 assets from the same URLs, then verify `SHA256SUMS.txt`. The released manager's direct framework method and field references were checked against the replacement DEX; this does not guarantee ABI compatibility for other consumers of an earlier DEX.

**Bootloop warning:** older Kaorios recipes (2.0.6.0 guides and the original 2.0.6.1 assets) patched `SettingsProvider.apk` to call `KaoriosHook` methods (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) that the current 2.0.6.1 `classes.dex` no longer defines. The system process then throws `NoSuchMethodError`, likely causing a bootloop. If this ROM's `SettingsProvider.apk` was ever patched by an older Kaorios recipe, restore the stock `SettingsProvider.apk` from the same ROM build **before** importing the current 2.0.6.1 `classes.dex`. Do not reuse old patched provider files.

**The 2.0.6.1 ROM patch workflow does not support Google Flags interception.** The replacement DEX contains a callable query-result helper, but importing it or running the patcher does not add a verified ROM Phenotype caller. No Google Flags patch recipe is available for A13–A17. Read the [Google Flags patch status and verification guide](Toolbox-docs/V2.0.3+/Google_Flags.md) ([Tiếng Việt](Toolbox-docs/V2.0.3+/Google_Flags_VI.md)) before making claims about this feature.

### ⚡ Automated Patcher CLI (`script/kaorios_patcher.py`)

**Usage:**

```bash
python3 script/kaorios_patcher.py <target_dir_or_file> --android-version {13,14,15,16,17} --mode {1,2,3} [--no-delay]
```

- **Modes**:
  - `1`: **Hooks Android 13–17** — Patches `ActivityThread`, `ComputerEngine`, `SystemServer`, `Instrumentation`, `ApplicationPackageManager`, `AndroidKeyStoreKeyPairGeneratorSpi`, and `AndroidKeyStoreSpi`.
  - `2`: **Build Spoof A17 only** — Removes `final` and updates initializers in `Build.smali` and `Build$VERSION.smali`.
  - `3`: **Hooks + Build Spoof (Android 17 only)** — Executes Mode 1 plus the A17-only Build patch. Android 13–16 must use Mode 1.
- **Options**:
  - `--no-delay`: Disables terminal typing effect and runs at maximum speed (ideal for CI/automation).

Follow the separate patcher guide here:

👉 [Kaorios Toolbox Patcher 2.0.6.1 guide](Toolbox-docs/V2.0.3+/Patcher_Guide_2.0.6.1.md)

The maintained entry point is `script/kaorios_patcher.py`. The legacy `kaorios_patcher_a17.py` filename is only a compatibility launcher. The patcher edits decompiled smali and fails closed on unsupported layouts. For ROM deployment, always rebuild/re-disassemble the affected DEX and verify against the exact ROM; Template files are references, not drop-in replacements.

Releases: [Kaorios-Toolbox Releases](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases)  
Old release: [Kaorios-Toolbox old_release](https://github.com/wuang26/Kaorios-Toolbox/releases)

---

## 👉 Join KaoriosToolbox
- **[KaoriosToolbox-Chanel](https://t.me/KaoriosToolbox)**.
- **[KaoriosToolbox-Discussion](https://t.me/KariosToolboxDiscussion)**.

---

## 🙏 Credits

- **Payload Dumper** — [rcmiku](https://github.com/rcmiku/Payload-Dumper-Compose).
- **AOSP Framework**
- **Trickystore**



