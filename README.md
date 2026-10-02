# Kaorios Toolbox

Starting with **version 2.0.4+**, Kousei will no longer be involved in the development or decision-making of Kaorios Toolbox.

📢 [**Original announcement**](https://t.me/KariosToolboxDiscussion/124662)

### Previous Versions

For **version 2.0.4.0 and below**, see:  
[Wuang26/Kaorios-Toolbox](https://github.com/Wuang26/Kaorios-Toolbox)

## ✨ Features

- ✅ Play Integrity fix.
- 🧩 Pixel & properties spoofing.
- ⚙️ Per-app spoofing manager.
- 🙈 Hide installed app list (Caller-aware isolation).
- 🛠️ Hide Developer Options & ADB status.
- 🔓 Disable FLAG_SECURE (Take screenshots & screen record restricted apps).
- ☁️ Google Photos unlimited backup.
- 🧰 Payload dumper integration.
- 🎮 Unlock high-FPS modes in games.
- 📊 Overlay display for FPS and CPU.
- ⚙️ Spoof setting value per app

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

## 📦 Latest release: v2.0.6.0

See Patch Guide v2.0.6.0 in [English](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md) or [Tiếng Việt](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0_VI.md). For Android 17 (SDK 37), also refer to the [Android 17 Build Patch Notes](Toolbox-docs/V2.0.3+/notes-a17.md) ([Tiếng Việt](Toolbox-docs/V2.0.3+/notes-a17_VI.md)).

### ⚡ Automated Patcher CLI (`script/kaorios_patcher.py`)

**Usage:**

```bash
python3 script/kaorios_patcher.py <target_dir_or_file> --android-version {13,14,15,16,17} --mode {1,2,3} [--no-delay]
```

- **Modes**:
  - `1`: **Hooks Android 13–17** — Patches `ActivityThread`, `ComputerEngine`, `SystemServer`, `SettingsProvider`, `Instrumentation`, `ApplicationPackageManager`, `AndroidKeyStoreKeyPairGeneratorSpi`, and `AndroidKeyStoreSpi`.
  - `2`: **Build Spoof A17 only** — Removes `final` and updates initializers in `Build.smali` and `Build$VERSION.smali`.
  - `3`: **Hooks + Build Spoof (Android 17 only)** — Executes Mode 1 plus the A17-only Build patch. Android 13–16 must use Mode 1.
- **Options**:
  - `--no-delay`: Disables terminal typing effect and runs at maximum speed (ideal for CI/automation).

Follow the maintained patch guide here:  
👉 [Kaorios Toolbox Framework 2.0.6.0 guide](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md)

The public patcher edits decompiled smali and fails closed on unsupported layouts. For ROM deployment, always rebuild/re-disassemble the affected DEX and verify against the exact ROM; Template files are references, not drop-in replacements.

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



