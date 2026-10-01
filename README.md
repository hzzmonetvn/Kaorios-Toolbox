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

`tmp/fw/` contains sample/reference system framework files used for compatibility research. Do not flash them or replace your ROM framework with them. Always patch your own ROM's clean files; see [Included Framework Samples](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md#included-framework-samples).

### ⚡ Automated Patcher CLI (`script/kaorios_patcher_a17.py`)

An automated smali patcher targeting **Android 17 (HyperOS 4 / SDK 37)** as its primary platform is provided in `script/kaorios_patcher_a17.py`. Earlier Android versions (Android 13–16 / MIUI 14 – HyperOS 3) serve as experimental/reference baselines that require manual audit and adaptation according to the patch guide.

The CLI inspects disassembled smali directories or individual files, canonicalizes parameter aliases, injects hooks, validates supported register/control-flow layout, and structurally verifies the resulting hooks before saving.

**Usage:**

```bash
python3 script/kaorios_patcher_a17.py <target_dir_or_file> --mode {1,2,3} [--no-delay]
```

- **Modes**:
  - `1`: **Hooks only** — Patches `ActivityThread`, `ComputerEngine`, `SystemServer`, `SettingsProvider`, `Instrumentation`, `ApplicationPackageManager`, `AndroidKeyStoreKeyPairGeneratorSpi`, and `AndroidKeyStoreSpi`.
  - `2`: **Build Spoof A17 only** — Removes `final` and updates initializers in `Build.smali` and `Build$VERSION.smali`.
  - `3`: **All-in-One** — Executes both Mode 1 (Hooks) and Mode 2 (Build Spoof).
- **Options**:
  - `--no-delay`: Disables terminal typing effect and runs at maximum speed (ideal for CI/automation).

Follow the detailed usage guide here:  
👉 [Kaorios-Toolbox Guide](Toolbox-docs)

Releases: [Kaorios-Toolbox Releases](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases)  
Old release: [Kaorios-Toolbox old_release](https://github.com/wuang26/Kaorios-Toolbox/releases)

### Advanced features: framework patch required

Advanced Features saves user intent in `kaorios_advanced_features`. Settings spoofing requires exact Global/Secure/System nonce responses and a ready, enabled system_server snapshot that acknowledges the current generation. The Settings card remains disabled with a reason while runtime is unconfirmed; retry reads both capability and policy status without rewriting intent. These checks do not verify package visibility or installer hooks, which require independent verified ROM hooks.

For Advanced Features to take effect at runtime, the target ROM requires:
1. **SystemServer Lifecycle Hook**: `initSystemServer()` in `SystemServer.smali` to bootstrap `AdvancedPolicyService`.
2. **Package Visibility Filter Hook**: `shouldHideAppListForCaller` in `ComputerEngine.smali` (`services.jar`) for caller-aware isolation.
3. **SettingsProvider Hooks**: Both `call()` (`filterSettingsCall`) and `query()` (`filterSettingsQueryResult`) in `SettingsProvider.smali` (`SettingsProvider.apk`) to spoof settings per calling package.
4. **SELinux Policy**: Policy allowing `system_server` to add `kaorios_advanced_policy` and allowing the SettingsProvider domain to find and communicate with `AdvancedPolicyService`.

If a ROM lacks these hooks or policy rules, toggling the feature will not take effect on that ROM. See the [English patch guide](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md) or [hướng dẫn tiếng Việt](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0_VI.md) for smali patching and verification procedures.

---

## 📋 Todo List / Roadmap

- [x] ⚡ **Automated Patcher Tool 2.0.6+** (`script/kaorios_patcher_a17.py`)
- [ ] ⚙️ **ROM validation for Fake & Filter System Settings**: Included A13–A17 call/query layouts validated; read-only Global/Secure/System checks and system_server snapshot/generation acknowledgement revalidate saved ON requests at startup, retain intent on failures and offer manual retry. Legacy String snippet is unverified for A13–A16; real-device Binder/SELinux checks remain. [Validation matrix](Toolbox-docs/V2.0.3+/Sample_Compatibility_2.0.6.0.md).
- [ ] 📦 **Spoof Installer Source Package**: Existing per-caller policy, UI controls and patcher/verifier cover both installer read APIs in the five included samples. Only the installing package result is filtered; real-device checks remain. [Scope and checklist](Toolbox-docs/V2.0.3+/Sample_Compatibility_2.0.6.0.md).

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
