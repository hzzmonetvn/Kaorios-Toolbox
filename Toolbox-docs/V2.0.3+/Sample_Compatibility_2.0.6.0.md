# Included sample validation / Kiểm chứng sample đi kèm

Evidence date: 2026-10-01. Evidence comes from **15 raw archives**, not old decompiled files or templates: all 48 DEX entries were hashed/inventoried; 16 required classes were freshly located in each generation. The main CLI ran modes 1/2/3 twice per generation. All 25 full containing DEX trees were assembled, re-disassembled and verified, covering 50 auto-target classes. All 15 archive copies passed inventory/integrity checks; every untouched entry remained byte-identical. All originals match the hashes recorded before extraction. This is **VERIFIED_SAMPLE_LAYOUT**, with runtime **NEEDS_DEVICE_TEST**.

Ngày kiểm chứng: 2026-10-01. Đã giải nén 15 archive thật, inventory 48 DEX, khảo sát 16 class mỗi generation, chạy CLI cả ba mode hai lần, assemble/re-disassemble đủ 25 DEX chứa target và verify 50 class auto-target. Cả 15 archive copy giữ nguyên entry không sửa; hash originals không đổi. Đây là bằng chứng layout sample, chưa phải chứng nhận runtime trên thiết bị.

[Machine-readable evidence / Bằng chứng JSON](Sample_Compatibility_2.0.6.0.json) records archive/DEX hashes and sizes, locations, descriptors, physical parameter aliases, returns, branches/catches, identity/anchor/provenance events, patch status, full-DEX roundtrip, idempotence, copied-archive checks and tool hashes. The final release DEX ABI was checked separately against production hooks and documented hook calls; only public ABI metadata is recorded. No absolute temporary paths or decompiled trees are committed.

**The A17 input is already modified.** Instrumentation, ApplicationPackageManager, KeyPairGenerator, KeyStoreSpi and SystemServer already contain accepted Kaorios hooks; these five results are `ALREADY_PATCHED`, not fresh insertion. Its framework.jar/classes7.dex contains an older embedded Kaorios payload and is preserved unchanged in the development copy. Do not deploy that copy or mix its payload with the current DEX. JSON `stock_layout` means the original included input layout, not a guarantee of clean stock.

**Input A17 đã có patch.** Năm class nêu trên trả `ALREADY_PATCHED`; framework.jar/classes7.dex đã có payload Kaorios cũ. Chúng được giữ nguyên trong copy kiểm chứng, không phải file để triển khai. `stock_layout` trong JSON là layout input sample, không xác nhận stock sạch.

## Full sample patch matrix / Ma trận patch sample thật

`R` = PATCHED + FULL DEX ASSEMBLE + RE-DISASSEMBLE + VERIFY + IDEMPOTENCE PASS. `R*` = the same roundtrip, but the input hook was ALREADY_PATCHED. All rows use current hook ABI; sample Android labels do not select an older payload ABI.

`R` = đủ các bước full DEX đều PASS; `R*` = hook đã có trong input, vẫn roundtrip/verify/idempotence PASS. Nhãn Android của sample không quyết định ABI payload cũ.

| Patch | A13 | A14 | A15 | A16 | A17 |
|---|---|---|---|---|---|
| ActivityThread | R | R | R | R | R |
| Instrumentation, both overloads | R | R | R | R | R* |
| hasSystemFeature | R | R | R | R | R* |
| Software KeyPair | R | R | R | R | R* |
| Certificate chain | R | R | R | R | R* |
| SystemServer | R | R | R | R | R* |
| ComputerEngine visibility | R | R | R | R | R |
| Installer String API | R | R | R | R | R |
| InstallSourceInfo installing field | R | R | R | R | R |
| Settings call | R | R | R | R | R |
| Settings query, preserved entry args | R | R | R | R | R |
| Build (mode 2) | R | R | R | R | R |
| Build$VERSION (mode 2) | R | R | R | R | R |
| AppsFilterBase / AppsFilterImpl direct hook | Reference only | Reference only | Reference only | Reference only | Reference only |

Mode 1 first run changed 8 targets on A13–A16 and 3 on A17 (5 already patched). Mode 2 changed 2 per sample. Mode 3 changed 10 on A13–A16 and 5 on A17 (5 already patched). All 30 CLI invocations exited 0; second runs confirmed ALREADY_PATCHED for 8/2/10 targets respectively. Mode 3 full trees contain the same target outputs as the individual patch functions; the union of mode 1/2 changes was roundtripped in full.

## Archive and DEX location inventory / Inventory archive và vị trí DEX

| Sample | framework.jar DEX entries | services.jar DEX entries | SettingsProvider.apk |
|---|---|---|---|
| miui14-a13 | classes.dex, classes2.dex, classes3.dex, classes4.dex | classes.dex, classes2.dex | classes.dex |
| os1-a14 | classes.dex, classes2.dex, classes3.dex, classes4.dex, classes5.dex | classes.dex, classes2.dex, classes3.dex | classes.dex |
| os2-a15 | classes.dex, classes2.dex, classes3.dex, classes4.dex, classes5.dex | classes.dex, classes2.dex, classes3.dex | classes.dex |
| os3-a16 | classes.dex, classes2.dex, classes3.dex, classes4.dex, classes5.dex, classes6.dex | classes.dex, classes2.dex, classes3.dex, classes4.dex | classes.dex |
| os4-a17 | classes.dex, classes2.dex, classes3.dex, classes4.dex, classes5.dex, classes6.dex, classes7.dex | classes.dex, classes2.dex, classes3.dex, classes4.dex | classes.dex |

In every included sample, ActivityThread/Instrumentation/ApplicationPackageManager/InstallSourceInfo are in framework.jar/classes.dex; KeyStoreSpi/KeyPairGenerator/Build/Build$VERSION are in framework.jar/classes3.dex. SystemServer is in services.jar/classes.dex. ComputerEngine and AppsFilter/Binder reference classes are in services.jar/classes2.dex for A13–A15, classes3.dex for A16–A17. SettingsProvider is in its APK/classes.dex. All 16 required descriptors were FOUND after searching every DEX; inherited methods are distinguished from declared methods in the report.

Trong sample đi kèm, vị trí class đã tìm trên mọi DEX như trên; không assume framework class luôn ở classes.dex. Class có mặt không chứng minh feature hoạt động runtime.

## Framework method differences / Khác biệt method framework

All entries below are original included-input counts. `R` means `.registers`; Context registers are resolved from the actual static/instance declaration.

| Method/layout | A13 | A14 | A15 | A16 | A17 |
|---|---|---|---|---|---|
| handleBindApplication(AppBindData)V R / data,owner aliases | 35 / v2,v1 | 35 / v10,v9 | 38 / v10,v9 | 32 / v9,v1 | 39 / v9,v1 |
| static newApplication(Class,Context) R / Context / returns | 3 / p1=v2 / 1 | 3 / p1=v2 / 1 | 3 / p1=v2 / 1 | 3 / p1=v2 / 1 | 3 / p1=v2 / 1 |
| instance newApplication(ClassLoader,String,Context) R / Context / returns | 5 / p3=v4 / 1 | 5 / p3=v4 / 1 | 5 / p3=v4 / 1 | 5 / p3=v4 / 1 | 5 / p3=v4 / 1 |
| hasSystemFeature(String,int)Z R / returns | 5 / 1 | 5 / 1 | 5 / 2 | 7 / 3 | 7 / 4* |
| generateKeyPair()KeyPair R / returns | 6 / 2 | 15 / 1 | 15 / 1 | 15 / 1 | 16 / 2* |
| engineGetCertificateChain(String)Certificate[] R / returns | 11 / 3 | 11 / 3 | 11 / 3 | 11 / 3 | 11 / 3* |
| Build.<clinit>()V R / returns | 7 / 1 | 7 / 1 | 7 / 1 | 7 / 1 | 7 / 1 |
| Build$VERSION.<clinit>()V R / returns | 6 / 1 | 6 / 1 | 5 / 1 | 5 / 1 | 5 / 1 |

ActivityThread copies entry `this`/AppBindData into local aliases; a literal `iput-object p1,p0` search fails in all five samples. The patcher now proves those entry copies, rejects alias clobber/back edges and hooks the actual data register without growing locals. KeyStore's populated-array leaf is `aput-object v2,v3,v4`, then debug directives and `return-object v3`; two null exits remain untouched, including the final textual return. ApplicationPackageManager and KeyPair allocate fresh scratch after canonicalizing parameter aliases. A13 Build has none of the five `_FOR_ATTESTATION` fields: absent optional fields are NOT_APPLICABLE and are not fabricated. Required fields remain mandatory. Mode 2 assembly success on older samples is structural evidence, not a recommendation to apply an A17 workaround to every ROM; SDK_INT stays unchanged.

ActivityThread dùng alias entry thật, không phải literal p1,p0. Leaf mảng chứng chỉ trả cùng v3; hai đường null không sửa. Scratch mới không ghi đè local stock. Năm field attestation không có ở A13 không được tự tạo; field bắt buộc vẫn phải có. Mode 2 PASS trên sample cũ chỉ chứng minh cấu trúc; không khuyến nghị áp workaround A17 mọi ROM, không đổi SDK_INT.

## SystemServer and visibility / SystemServer và visibility

SystemServer.run()V uses R17/R16/R16/R19/R20, zero normal returns, and 8/7/10/10/10 catch directives respectively. createSystemContext() precedes startOtherServices(), which precedes Looper.loop(). New A13–A16 hooks are immediately before Looper.loop(); the existing A17 hook before startOtherServices is accepted. No scratch growth is needed and the original try/catch structure is retained.

ComputerEngine's production visibility hook uses PackageStateInternal `II` on A13/A14 and ComponentName `IIZZ` on A15–A17. Caller UID comes from the method argument, not a guessed register or Settings nonce. AppsFilterImpl extends AppsFilterLocked, which extends AppsFilterBase; the latter declares shouldFilterApplication(PackageDataSnapshot,int,Object,PackageStateInternal,int) and a cache path. Those reference classes were inspected and remained unpatched. Direct cache/AppsFilter injection is not certified by this audit; nor is complete runtime visibility coverage from a class/method match.

SystemServer có context trước các anchor; hook mới A13–A16 ở trước loop, A17 đã có hook trước startOtherServices. Visibility dùng overload II ở A13/A14, IIZZ ở A15–A17. AppsFilter là reference khảo sát, không phải đường auto-patch đã chứng nhận runtime; Settings probe không kiểm chứng domain này.

## Settings and installer matrix

| Included sample | Settings legacy String snippet | Settings call/query | Advanced probe path | Installer legacy API | InstallSourceInfo installing field |
|---|---|---|---|---|---|
| MIUI14 A13 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS1 A14 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS2 A15 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS3 A16 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
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

All call methods use .registers 13, physical p0..p3=v9..v12; return counts are 15/15/15/16/17. Query has six parameter words; original p1/p3/p4 are v5/v7/v8 for R10, v6/v8/v9 for R11. **All five query bodies overwrite those parameter slots** (projection/table/name/boolean temporaries). They cannot be passed directly at return. The patch canonicalizes aliases and saves entry URI/selection/args in three fresh locals before stock instructions; R10 becomes .locals 7 (saved v4/v5/v6), R11 becomes .locals 8 (saved v5/v6/v7). Each of 7/7/7/7/8 returns filters its own cursor with those saved arguments. Existing unsaved hooks are rejected. Raw layouts have no query catch directives or identity clear; unknown identity/exception/range layouts and high 35c registers fail closed.

Cả năm query đều tái sử dụng p1/p3/p4. Patcher lưu đối số gốc tại entry vào ba local mới, canonicalize alias trước khi tăng locals và dùng bản lưu ở mọi return; không dùng p-register đã đổi kiểu. Hook cũ không lưu args bị từ chối. Các đường exception/identity/range không nhận diện an toàn và register cao vẫn fail closed.

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

Legacy handshake requires both stages on the same provider thread and consumes the challenge once. The modern provider/service path uses the same protocol independent of the Advanced flag. The app reports per-namespace reachability and path UNKNOWN because the response cannot distinguish implementations. Saved intent, Settings reachability and system_server policy status are separate: effective Settings requires saved ON, all three probes, a ready/enabled service snapshot and generation acknowledgement. Null/wrong responses report Unavailable; exceptions report Check failed/retry. Saved ON is retained on failures. Manual retry reads generation and read-only snapshot status, with probes for saved ON, without rewriting the flag. After a successful OFF write, shutdown remains pending until a ready disabled snapshot acknowledges the generation; null status cannot clear this warning. Saved OFF without pending acknowledgement needs no retry or runtime reads. A partial flag write preserves intent and remains uncertain until a newer service generation acknowledges it. Settings probes do not prove package/installer hooks. See [runtime semantics](Patch_Guide_2.0.6.0.md#advanced-settings-runtime).

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

Run from the public repository with Python 3.9+ and Java. [refresh-sample-compatibility.py](../../script/refresh-sample-compatibility.py) hashes all archives, extracts every root classes*.dex in numeric order, inventories all DEX classes, and freshly surveys all target/reference methods. With --verify-patches it full-disassembles each containing DEX, runs the actual CLI modes 1/2/3 twice, compares individual target outputs, assembles the mode-3 full trees, re-disassembles, verifies all targets and checks idempotence. It rebuilds archive copies, preserves every untouched entry and checks originals again. This is full-Dex validation for every present supported auto-target, not a two-class mini-DEX test. Unknown layouts remain unsupported. Temporary trees are removed after saving the report unless an explicit workspace is retained. Never commit decompiled trees or patched archives. JSON contains relative observations and hashes, not device certification.

Chạy từ public repo với Python 3.9+ và Java. --verify-patches khảo sát mọi DEX/target, full-disassemble DEX chứa target, chạy CLI cả ba mode hai lần, assemble full tree, re-disassemble, verify/idempotence toàn bộ và rebuild archive copy bảo toàn entry. Không chỉ kiểm tra hai class hoặc mini DEX. Report được lưu trước khi dọn workspace; không commit tree hoặc archive copy.

The pinned tool set is smali/baksmali/dexlib2/util **3.0.8**, ANTLR **3.5.2**, JCommander **1.64**, Guava **31.1-android**. Fetch the exact filenames:

```sh
sample_tools=$(mktemp -d)
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali/3.0.8/smali-3.0.8.jar -o "$sample_tools/smali-3.0.8.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-baksmali/3.0.8/smali-baksmali-3.0.8.jar -o "$sample_tools/baksmali-3.0.8.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-dexlib2/3.0.8/smali-dexlib2-3.0.8.jar -o "$sample_tools/smali-dexlib2.jar"
curl -fsSL https://dl.google.com/dl/android/maven2/com/android/tools/smali/smali-util/3.0.8/smali-util-3.0.8.jar -o "$sample_tools/smali-util.jar"
curl -fsSL https://repo.maven.apache.org/maven2/org/antlr/antlr-runtime/3.5.2/antlr-runtime-3.5.2.jar -o "$sample_tools/antlr-runtime.jar"
curl -fsSL https://repo.maven.apache.org/maven2/com/beust/jcommander/1.64/jcommander-1.64.jar -o "$sample_tools/jcommander.jar"
curl -fsSL https://repo.maven.apache.org/maven2/com/google/guava/guava/31.1-android/guava-31.1-android.jar -o "$sample_tools/guava.jar"
python3 script/refresh-sample-compatibility.py --tool-dir "$sample_tools" --report /tmp/kaorios-sample-report.json --verify-patches
```

Full framework trees retain hidden-API flags, so do not assemble with the default API 15. With pinned 3.0.8, --api 35 or newer emits an invalid DEX 041 container header (`Unexpected container offset in header` on redisassembly). The helper selects **assembler API 29 for stock DEX 039, API 34 for stock DEX 040**, preserves the input magic, and checks that a DEX was actually produced before redisassembly. This selector controls output format/opcodes, not the ROM's Android version or SDK spoofing. JCommander 1.82 is incompatible with the numeric-option annotations; use 1.64 from the pinned tool dependency set. No binary header is edited to hide assembler failures.

Full tree cần API hỗ trợ hidden flags; không dùng mặc định 15. Tool 3.0.8 có lỗi writer DEX 041 ở API >=35, nên helper chọn API assembler theo format input 039/040 và xác nhận magic giữ nguyên. Đây không phải đổi Android/SDK của ROM. Dùng JCommander 1.64; không sửa header binary để che lỗi.

The helper supports optional `--workspace work/sample-audit` (new empty directory outside tmp/fw) and `--framework-dex <current classes.dex>` for public ABI metadata checks. The committed report also records a separate final-release ABI cross-check; pipeline_dex_sha256 preserves the artifact originally checked during the full run. Outputs are development copies only, never signed/flashed/published sample ROM artifacts.

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
