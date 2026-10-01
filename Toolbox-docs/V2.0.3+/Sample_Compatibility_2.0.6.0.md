# Included sample validation / Kiểm chứng sample đi kèm

Evidence date: 2026-09-30. These observations concern only the five archives in `tmp/fw`, not every ROM with the same Android version. All DEX entries were extracted, input hashes checked, and relevant classes freshly disassembled with smali/baksmali 3.0.8. Patched `ComputerEngine` and `SettingsProvider` classes were assembled, disassembled again and structurally verified for all five samples. This is **VERIFIED_SAMPLE_LAYOUT / VERIFIED_LAYOUT**, not a flashed, signed or device-verified ROM artifact.

## Settings and installer matrix

| Included sample | Settings legacy String snippet | Settings call/query | Advanced probe path | Installer legacy API | InstallSourceInfo installing field |
|---|---|---|---|---|---|
| MIUI14 A13 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS1 A14 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS2 A15 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS3 A16 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS4 A17 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |

The older generic `shouldRemoveSetting` → `filterSettingValue` snippet cannot be inserted directly into the inspected `getGlobalSetting`/`getSecureSetting`/`getSystemSetting` methods: they return `SettingsState$Setting`, not a String, and Bundle packaging does not provide a universal namespace/name contract. No automated legacy String strategy is advertised. For the current Kaorios DEX, the verified call/query strategy also matches the included A13–A16 layouts. It requires the current `AdvancedPolicyService` bootstrap and existing Binder/SELinux integration; an older framework DEX without these entry points is not interchangeable. Do not add both architectures to A17.

Các method GET cũ trong sample trả `SettingsState$Setting`, nên không chèn trực tiếp snippet trả String. Với DEX Kaorios hiện tại, dùng đường call/query đã kiểm chứng cùng bootstrap/service và SELinux tương ứng. Không suy hỗ trợ mọi ROM A13–A17 từ bảng này.

| Sample | call anchor | query stock registers / object returns | Original identity in call/query |
|---|---|---|---|
| A13 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A14 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A15 | getRequestingUserId(Bundle) | .registers 11 / 7 | No clearCallingIdentity in either method |
| A16 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A17 | getDeviceId() preferred; both anchors present | .registers 11 / 8 | No clearCallingIdentity in either method |

The call hook runs after its anchor and before stock GET dispatch. Query filtering covers every object return. A runtime nonce response still requires the provider to reach the registered service with the original caller identity; host/sample tests cannot establish Binder behavior or SELinux access on a device.

## Actual installer hook sites

All inspected sites are in `Lcom/android/server/pm/ComputerEngine;`. The two public read methods share a private stock `getInstallSource` lookup but have different visibility filtering/return construction. Patching the private lookup would risk changing internal users of install provenance; the patcher instead filters the two public results.

| Sample | Legacy descriptor / stock installer | Modern descriptor / constructor installing argument | Stock UID source | Target / user source | Object return counts legacy / modern |
|---|---|---|---|---|---|
| A13 | getInstallerPackageName(String)String / v2 | getInstallSourceInfo(String)InstallSourceInfo / v11 | Binder.getCallingUid: legacy v0; modern v2 | p1; UserHandle.getUserId(caller UID) | 1 / 2 |
| A14 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v14 | Binder.getCallingUid: legacy v0; modern v9 | p1; p2 (modern saved as v8) | 1 / 2 |
| A15 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v14 | Binder.getCallingUid: legacy v0; modern v9 | p1; p2 (modern saved as v8) | 1 / 2 |
| A16 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v9 | Binder.getCallingUid: legacy v0; modern v1 | p1; p2 (modern saved as v2) | 1 / 2 |
| A17 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v8 | Binder.getCallingUid: legacy v0; modern v1 | p1; p2 (modern saved as v2) | 1 / 2 |

These are **stock** register observations, not registers to copy into another ROM. Descriptor notation above is abbreviated; the actual descriptors use `Ljava/lang/String;`, `I`, and `Landroid/content/pm/InstallSourceInfo;`. None of these public methods clears Binder identity. The patch captures UID/target/user at method entry, retains original physical stock registers, then filters the stock String return or just the installing constructor argument. The early null modern result remains stock. Unknown source/argument/control-flow layouts fail closed without saving the input.

The `ContentResolver` argument is null: the current hook evaluates the in-memory Advanced snapshot, with no resolver dereference. Runtime hook exceptions return the stock value. No stored `InstallSource`, package ownership, install sessions, permissions, initiating/originating package, update owner or package-source classification is changed.

## Truthful checker / Checker không báo xanh giả

```sh
python script/check-framework-samples.py
python script/check-framework-samples.py --sample-dir /path/to/decompiled-generations --strict --format json
```

Default input is repository `tmp/fw`, never an implicit machine-specific work directory. Raw archives print `RAW_ARCHIVE_NOT_DECOMPILED — diagnostic skipped`, exit 0 normally and exit nonzero with `--strict`. A missing dataset reports `SAMPLE_MISSING`; class absence in an inspected decompiled tree reports `NOT_FOUND`. `FOUND` means diagnostic source presence, `DIFFERENT_LAYOUT` means a requested structural fact is absent, and conflicting class copies report `UNSUPPORTED_ANALYSIS`. Strict mode requires usable smali in every requested generation; it is not a full verifier or a promise that every hook is compatible. CI runs synthetic tests plus honest raw-archive diagnostics; it does not decompile the sample archives.

Raw archive chưa decompile không được gọi là `NOT_FOUND`. Khi cần audit thật, truyền rõ cây smali đã decompile. `--strict` không biến checker thành bộ verifier ROM.

## Read-only device Settings check

With Advanced OFF, run from the Toolbox/app caller context, using Android Settings API rather than a shell UID. Generate a fresh 16-byte SecureRandom value encoded as 32 lowercase hex characters. Read `kaorios_advanced_probe_<nonce>` separately through `Settings.Global.getString`, `Settings.Secure.getString`, and `Settings.System.getString`. Require exact `kaorios-advanced-v1:<namespace>:<nonce>`; print only PASS/FAIL for each namespace. Do not write or persist the key. Repeat with a new nonce, missing hooks, and the policy service unavailable. Normal settings without rules must remain stock.

Legacy handshake requires both stages on the same provider thread and consumes the challenge once. The modern provider/service path uses the same protocol independent of the Advanced flag. The app reports per-namespace reachability and path UNKNOWN because the response cannot distinguish implementations. Saved intent, Settings reachability and system_server policy status are separate: effective Settings requires saved ON, all three probes, a ready/enabled service snapshot and generation acknowledgement. Null/wrong responses report Unavailable; exceptions report Check failed/retry. Saved ON is retained on failures. Manual retry reads probes and read-only snapshot status without rewriting the flag. A partial flag write preserves intent and remains uncertain until a newer service generation acknowledges it. Settings probes do not prove package/installer hooks. See [runtime semantics](Patch_Guide_2.0.6.0.md#advanced-settings-runtime).

## Installer device checklist / Checklist trên thiết bị

From the **same configured caller**, compare both `PackageManager.getInstallerPackageName(target)` and `PackageManager.getInstallSourceInfo(target)?.getInstallingPackageName()`:

- Installed non-system target: Play Store (`com.android.vending`).
- System target: stock unless the system-source option is on; then null.
- Caller querying itself: stock if self exemption is on; otherwise normal policy.
- Unconfigured caller and manager app: stock.
- Unknown/uninstalled target: preserve stock null/exception behavior.
- Shared UID: any eligible package rule may activate filtering; a manager package in that UID exempts it. Confirm intended behavior with the actual package list.
- Disable the rule or Advanced: stock restored after the normal `kaorios_time` snapshot refresh. Check a successful refresh and partial-write warning behavior.
- Save/cancel a rule, toggle its parent off/on and reopen: children and unrelated rule fields must survive; cancel must not persist edits.

Record PASS/FAIL for each API/case, successful boot and absence of new PackageManager failures/AVCs. Real install provenance and permission decisions must remain unchanged. No new installer Binder service or SELinux rules are required.

## Reproduce sample evidence (dev only)

Run from the public repository with Python 3.9+ and Java. [refresh-sample-compatibility.py](../../script/refresh-sample-compatibility.py) uses a temporary directory, extracts every root `classes*.dex` in numeric split order, checks extracted hashes against ZIP entries, disassembles all classes required by the diagnostics, including both AppsFilter classes, plus lifecycle/Build/keygen and installer entry classes, and runs the checker in explicit strict decompiled mode. `--verify-patches` additionally patches ComputerEngine/SettingsProvider, checks idempotence, assembles and re-disassembles each patched class, then runs its structural verifier. Temporary trees are removed; no decompiled files should be committed. JSON records archive/DEX/tool hashes and sorted relative source observations, not device certification. Archive content and pinned tools define the reproducible inputs; temporary directory names do not enter the report.

The pinned tool set is smali/baksmali/dexlib2/util **3.0.8**, ANTLR **3.5.2**, JCommander **1.82**, Guava **31.1-android**. Fetch the exact filenames:

```sh
sample_tools=$(mktemp -d)
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali/3.0.8/smali-3.0.8.jar -o "$sample_tools/smali-3.0.8.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-baksmali/3.0.8/smali-baksmali-3.0.8.jar -o "$sample_tools/baksmali-3.0.8.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-dexlib2/3.0.8/smali-dexlib2-3.0.8.jar -o "$sample_tools/smali-dexlib2.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-util/3.0.8/smali-util-3.0.8.jar -o "$sample_tools/smali-util.jar"
curl -fsSL https://repo.maven.apache.org/maven2/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar -o "$sample_tools/antlr-runtime.jar"
curl -fsSL https://repo.maven.apache.org/maven2/com/beust/jcommander/1.82/jcommander-1.82.jar -o "$sample_tools/jcommander.jar"
curl -fsSL https://repo.maven.apache.org/maven2/com/google/guava/guava/31.1-android/guava-31.1-android.jar -o "$sample_tools/guava.jar"
python3 script/refresh-sample-compatibility.py --tool-dir "$sample_tools" --report /tmp/kaorios-sample-report.json --verify-patches
```

The helper does not run in normal CI. CI syntax-checks it and runs synthetic tests plus honest raw archive diagnostics. Samples remain development inputs, never runtime dependencies or a universal ROM oracle.

## Installer caller/user re-audit

The included Binder entry is IPackageManagerBase, inherited by PackageManagerService$IPackageManagerImpl; client ApplicationPackageManager calls IPackageManager. Entry delegation must retain Binder identity. Root/system appIds bypass policy even for internal system_server calls; an application-UID internal reentrant call is not independently distinguishable from its Binder caller, so device verification remains necessary. No new package-installer exception is added: unconfigured application callers are stock; privileged UIDs use the existing bypass.

A13 stock getInstallSource derives user from the supplied calling UID. A14–A17 ComputerEngine overloads use explicit target user; the patch preserves that parameter even for cross-user calls. In these samples, the legacy Binder API derives its forwarded user from calling UID; the modern client API forwards ApplicationPackageManager.getUserId(). Do not replace modern target user with caller user. InstallSourceInfo constructors store `p1` as initiating, `p3` as originating and `p4` as installing (invocation index 4 including receiver). Tests reject swapping the installing provenance. A null **stock installer field** can be spoofed for an installed non-system target; an early null InstallSourceInfo object remains stock.

## Additional device cases

Use a small test app with the actual caller package/UID. Launch its test Activity via adb; do not use shell Settings reads as capability evidence. Log fresh-nonce namespace PASS/FAIL and both PackageManager read results from inside that app. No install database writes are needed.

- Reboot and load saved Advanced ON: fresh capability check must run.
- ROM/framework replacement missing hooks: desired ON remains saved, effective OFF with warning.
- Service startup failure or SELinux denial: gate fails without clearing preference; retry after recovery restores effective Settings only when the ready/enabled system_server snapshot and generation also acknowledge the saved request, without rewriting the flag.
- Normal unrelated Settings remain stock; configured replacement/removal yields replacement/null. Missing one namespace blocks enable.
- System installer-hide OFF preserves stock; self-exemption OFF allows normal spoof; Advanced OFF restores stock for both installer APIs.
- For cross-user reads, compare the actual target-user result; both APIs must agree where their stock target-user semantics match.

Các bước trên cần caller app thật. Helper sample chỉ tái lập bằng chứng HOST/SAMPLE LAYOUT; Binder, SELinux, reboot/update và hiệu lực policy trên thiết bị vẫn là NEEDS_DEVICE_TEST.
