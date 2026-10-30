# Kaorios Toolbox

Starting with **version 2.0.4+**, Kousei will no longer be involved in the development or decision-making of Kaorios Toolbox.

📢 [**Original announcement**](https://t.me/KariosToolboxDiscussion/124662)

### Previous Versions

For **version 2.0.4.0 and below**, see:  
[Wuang26/Kaorios-Toolbox](https://github.com/Wuang26/Kaorios-Toolbox)

## ✨ Features

- ✅ Play Integrity fix.
- 🧩 Pixel & properties spoofing.
- 🙈 Hide installed app list.
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

## 1. Patch framework.jar, services.jar, native libraries, and init (Recommend for direct integration into custom ROMs)

See the manual Patch Guide v2.0.6.1 in [English](Toolbox-docs/2.0.6+/Patch_Guide_2.0.6.1.md) or [Tiếng Việt](Toolbox-docs/2.0.6+/Patch_Guide_2.0.6.1_VI.md) for Android 13–17.
- **Framework & Services**: Hook recipes and DEX injection.
- **Native PIF Bridge**: [`bin/lib/`](bin/lib/) — `libkaoripif.so`, `libkaoriospif.so`, `libshadowhook_kaorios.so` for `/system/lib64/` and `/system/lib/`.
- **Init Configuration**: [`bin/init/`](bin/init/) — `init.kaorios.rc` and [`kaorihelper`](bin/resetprop/) for early-boot property spoofing.

Automatic commands are documented separately in the Patcher Guide: [English](Toolbox-docs/2.0.6+/Patcher_Guide_2.0.6.1.md) / [Tiếng Việt](Toolbox-docs/2.0.6+/Patcher_Guide_2.0.6.1_VI.md).

## 2. Use Kaorios Helper module (working in progress) (Recommend for rooted user)

Install any zygisk module + [Kaorios helper](https://github.com/hzzmonetvn/KaoriosHelper)

---

## 👉 Join KaoriosToolbox
- **[KaoriosToolbox-Chanel](https://t.me/KaoriosToolbox)**.
- **[KaoriosToolbox-Discussion](https://t.me/KariosToolboxDiscussion)**.

---

## 🙏 Credits

- **Payload Dumper** — [rcmiku](https://github.com/rcmiku/Payload-Dumper-Compose).
- **AOSP Framework**
- **Trickystore**
- **resetprop-rs (kaorihelper)** — [Enginex0](https://github.com/Enginex0/resetprop-rs)

##
