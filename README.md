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

An automated smali patcher targeting **Android 17 (HyperOS 4 / SDK 37)** as its primary platform is provided in `script/kaorios_patcher_a17.py`. The included A13–A17 sample call-site layouts have now passed full-Dex roundtrips with the current hook ABI; other ROMs still require their own layout audit and device validation. Mode 2 applies A17 spoof values and is not a general recommendation to spoof earlier ROMs.

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

### Raw sample evidence

The 2026-10-01 audit extracted all 48 DEX entries from 15 included archives and roundtripped 25 full containing DEX trees, covering all 50 auto-target classes. It found and corrected entry aliases in ActivityThread, reused query parameter slots, and absent optional A13 attestation fields. The A17 input already contains five hooks and an older payload. [Hashes, layouts, modes and full-Dex evidence](Toolbox-docs/V2.0.3+/Sample_Compatibility_2.0.6.0.md) describe included samples only; Binder/SELinux and real caller behavior remain NEEDS_DEVICE_TEST. Never flash those sample copies.

### Advanced features: framework patch required

Advanced Features saves user intent in `kaorios_advanced_features`. Settings spoofing requires exact Global/Secure/System nonce responses and a ready, enabled system_server snapshot that acknowledges the current generation. The Settings card remains disabled with a reason while runtime is unconfirmed. ON/OFF writes require an acknowledged snapshot matching the saved request; unavailable status after OFF leaves shutdown pending. Retry reads policy status and, for saved ON, Settings capability without rewriting intent; saved OFF without pending acknowledgement offers no Retry. These checks do not verify package visibility or installer hooks, which require independent verified ROM hooks.

For Advanced Features to take effect at runtime, the target ROM requires:
1. **SystemServer Lifecycle Hook**: `initSystemServer()` in `SystemServer.smali` to bootstrap `AdvancedPolicyService`.
2. **Package Visibility Filter Hook**: `shouldHideAppListForCaller` in `ComputerEngine.smali` (`services.jar`) for caller-aware isolation.
3. **SettingsProvider Hooks**: Both `call()` (`filterSettingsCall`) and `query()` (`filterSettingsQueryResult`) in `SettingsProvider.smali` (`SettingsProvider.apk`) to spoof settings per calling package.
4. **SELinux Policy**: Policy allowing `system_server` to add `kaorios_advanced_policy` and allowing the SettingsProvider domain to find and communicate with `AdvancedPolicyService`.

If a ROM lacks these hooks or policy rules, toggling the feature will not take effect on that ROM. See the [English patch guide](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0.md) or [hướng dẫn tiếng Việt](Toolbox-docs/V2.0.3+/Patch_Guide_2.0.6.0_VI.md) for smali patching and verification procedures.

---

## 📋 Todo List / Roadmap

- [x] ⚡ **Automated Patcher Tool 2.0.6+** (`script/kaorios_patcher_a17.py`)
- [ ] ⚙️ **ROM validation for Fake & Filter System Settings**: Included A13–A17 call/query layouts validated; read-only Global/Secure/System checks and system_server snapshot/generation acknowledgement revalidate saved ON requests at startup, retain intent on failures and offer manual retry. Legacy String snippet is not applicable to the inspected Setting-returning methods; query hooks preserve entry arguments; real-device Binder/SELinux checks remain. [Validation matrix](Toolbox-docs/V2.0.3+/Sample_Compatibility_2.0.6.0.md).
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

### Keybox validation

Keybox Hub XML supports EC-only, RSA-only or both. Check structure locally with `python3 script/validate_keybox.py <Keybox.xml>`; cryptographic and device validation remain separate. See the guide in [English](Toolbox-docs/V2.0.3+/Keybox_Guide_2.0.6.0.md) or [Tiếng Việt](Toolbox-docs/V2.0.3+/Keybox_Guide_2.0.6.0_VI.md).

### Interface

The Android app uses Material 3 Expressive with a branded light/dark palette, responsive button shapes and adaptive bottom-bar/rail navigation. Previous appearance choices migrate to Expressive. Compose Expressive APIs remain experimental; see [AndroidX Material3](https://developer.android.com/jetpack/androidx/releases/compose-material3). Visual checks on real devices remain a separate release check.

Giao diện Android chuyển sang Material 3 Expressive, dùng bảng màu sáng/tối thống nhất, button phản hồi khi nhấn và navigation thích ứng theo chiều rộng. Các lựa chọn style cũ được chuyển sang Expressive. Kiểm tra hình ảnh trên thiết bị thật vẫn là bước kiểm chứng riêng.
