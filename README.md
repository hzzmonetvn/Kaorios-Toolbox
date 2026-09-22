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

> ⚡ **Android 17 Auto Patcher**: available in [`script/`](script). Use the patch guide below for manual anchors and artifact pipelines.   
> See Patch Guide v2.0.6.0 in [English](https://github.com/hzzmonetvn/Kaorios-Toolbox/blob/main/Toolbox-docs/V2.0.3%2B/Patch_Guide_2.0.6.0.md) or [Tiếng Việt](https://github.com/hzzmonetvn/Kaorios-Toolbox/blob/main/Toolbox-docs/V2.0.3%2B/Patch_Guide_2.0.6.0_VI.md).  

Follow the detailed usage guide here:  
👉 [Kaorios-Toolbox Guide](https://github.com/hzzmonetvn/Kaorios-Toolbox/tree/main/Toolbox-docs)

Releases: [Kaorios-Toolbox Releases](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases)
Old release: [Kaorios-Toolbox old_release](https://github.com/wuang26/Kaorios-Toolbox/releases)

### Advanced features: framework patch required

Android 17 builds require the matching framework DEX plus the ROM call-site patches documented in the patch guide. The current A17 patcher targets `ActivityThread`, `ComputerEngine`, `SystemServer`, and `SettingsProvider.call(...)`; the all-in-one Smali patcher also handles the legacy framework, KeyStore, and Build-field hooks.

Use the [English patch guide](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md) or [hướng dẫn tiếng Việt](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0_VI.md), then reboot and validate the target ROM. A version string alone is not proof that every call site is patched.

---

## 📋 Todo List / Roadmap

- [x] ⚡ **Android 17 automated patcher suite**
- [ ] ⚙️ **Expand ROM compatibility tests** for A17 patch anchors across AOSP/OEM variants.
- [ ] 📦 **Spoof Installer Source Package**: Spoof package installer origin per-app (`filterInstallerPackageName`, e.g. masquerade as Google Play Store `com.android.vending`).

---

## 🌍 Localization & Translations

Help us translate Kaorios-Toolbox into your language! 🌐

- Translation files live here: **[Toolbox-languages](https://github.com/hzzmonetvn/Kaorios-Toolbox/tree/main/Toolbox-languages)**
- Base file to translate: `values/strings.xml`

---
## 👉 Join KaoriosToolbox
- **[KaoriosToolbox-Chanel](https://t.me/KaoriosToolbox)**.
- **[KaoriosToolbox-Discussion](https://t.me/KariosToolboxDiscussion)**.

---

## 🙏 Credits

- **Payload Dumper** — [rcmiku](https://github.com/rcmiku/Payload-Dumper-Compose).
- **AOSP Framework**
- **Trickystore**
