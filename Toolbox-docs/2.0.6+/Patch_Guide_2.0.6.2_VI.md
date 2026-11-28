# Hướng Dẫn Patch Kaorios Toolbox (v2.0.6.2 — ROM Gốc Android 13–17)

Tài liệu này hướng dẫn chi tiết từng bước cách patch **ROM stock sạch (chưa chỉnh sửa)** Android 13–17 (`framework.jar`, `services.jar`, và tùy chọn `SettingsProvider.apk` + SELinux policy + thư viện Native PIF) cho **Kaorios Toolbox v2.0.6.2**.

> [!IMPORTANT]
> - **Luôn bắt đầu từ file ROM gốc (clean stock).** Không patch đè lên `framework.jar` hoặc `services.jar` đã từng cài hook Kaorios cũ hoặc mod spoof khác.
> - **Quy tắc ABI R8 bắt buộc:** Ở bản release (`framework/proguard-rules.pro`), R8 sẽ mã hóa và gom các class nội bộ vào package `com.kousei.framework.*`. Mọi hook smali **CHỈ ĐƯỢC** gọi vào hai class được giữ cố định:
>   - `Landroid/security/kaorios/KaoriosHook;` (cho `framework.jar` **F1–F7** và `services.jar` **S1–S5**)
>   - `Landroid/security/kaorios/settings/AdvancedPolicyService;` (cho tùy chọn `SettingsProvider.apk` **SP1**)
> - Tuyệt đối không gọi vào các class nội bộ bị R8 đổi tên hoặc các hàm no-op đã ngừng dùng từ hướng dẫn v2.0.3 cũ.

> [!TIP]
> **Patch ROM hãng (OEM)?** Xem hướng dẫn chuyên sâu theo từng hãng tại [`OEM_ROM_Patch_Guide_VI.md`](OEM_ROM_Patch_Guide_VI.md) cho **Xiaomi MIUI / HyperOS (1/2/3)**, **Samsung One UI (6/7/8)**, **OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)**, **vivo OriginOS / FuntouchOS**, và **Google Pixel / AOSP / Custom AOSP**.
> **Bản tiếng Anh:** [`Patch_Guide_2.0.6.2.md`](Patch_Guide_2.0.6.2.md).

---

## 1. Các File Release & Contract R8-Kept

Tải hoặc build bộ artifact v2.0.6.2:

| File Artifact | Vai trò | Vị trí trên máy / ROM |
|---|---|---|
| `KaoriosToolbox-release.apk` | Ứng dụng quản lý (`com.kousei.kaorios`, `arm64-v8a`) | Cài như app thường hoặc app hệ thống |
| `classes.dex` (trích từ `KaoriosFramework-release.apk`) | Payload framework đã nén/tối ưu R8 | Chép vào `framework.jar` ở slot `classesN.dex` kế tiếp |
| `libkaoripif.so` (`arm64-v8a` / `armeabi-v7a`) | Tùy chọn: Native Bionic `prop_area` PIF spoof | `/system_ext/lib64/libkaoripif.so` (hoặc `/system/lib64/`); 32-bit vào `lib/` |
| `libkaoripif_diagnostic.so` (`arm64-v8a` / `armeabi-v7a`) | Tùy chọn: Thư viện chẩn đoán **chỉ đọc** | `/system/lib64/libkaoripif_diagnostic.so` (`lib/` cho 32-bit) |

### Các Class Được Giữ Cố Định Qua R8 (`framework/proguard-rules.pro`)

- `android.security.kaorios.KaoriosHook` — Facade static thống nhất cho mọi hook smali (`F1–F7`, `S1–S5`)
- `android.security.kaorios.settings.AdvancedPolicyService` (+ `AdvancedPolicyClient`, `AdvancedPolicyRuntimeStatus`, `AdvancedPolicySnapshot`, `IAdvancedPolicyService`, `SettingDecisionParcel`, `ServiceManagerBridge`) — Dịch vụ Binder chính sách & hook `SettingsProvider` (`SP1`)
- `com.kousei.framework.KaoriosFramework` (+ `$InstalledAppEntry`, `$InstalledAppsSnapshot`, `$HideConfig`) — API giao tiếp giữa app và framework
- `android.security.kaorios.KaoriosPifInstaller` — Trình nạp Native PIF có cổng kiểm tra tiến trình (`libkaoripif.so`)
- `android.security.kaorios.PifNative` (+ `PifNativeStatus`) — API chẩn đoán chỉ đọc (`libkaoripif_diagnostic.so`)

---

## 2. Cách Nhanh Nhất: Patch Tự Động (`script/kaorios_patcher.py`)

Khuyên dùng công cụ Python 3.10+ đi kèm Java 17+ và `smali`/`baksmali` 3.0.x để tự động tính thanh ghi (`> v15`), hạ thanh ghi bằng `move*/from16` và kiểm tra ABI:

```bash
export KAORIOS_SMALI_CLASSPATH="/path/to/smali-3.0.8-libs/*"

# 1. Kiểm tra payload DEX có đủ toàn bộ class/method R8-kept
python3 script/kaorios_patcher.py inspect-payload --payload dist/classes.dex

# 2. Import classes.dex vào framework.jar và patch F1–F7
python3 script/kaorios_patcher.py patch-framework \
  --input stock/framework.jar \
  --payload dist/classes.dex \
  --output out/framework.jar

# 3. Patch services.jar S1–S4 (thêm --enable-secure-flag / --enable-corepatch nếu cần)
python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-secure-flag

# 4. Tùy chọn: Patch SettingsProvider.apk + kiểm tra SELinux Android 17
python3 script/kaorios_patcher.py patch-settings-provider \
  --input stock/SettingsProvider.apk \
  --output out/SettingsProvider.apk

python3 script/kaorios_patcher.py check-sepolicy \
  --service-contexts deployment/android17-sepolicy/service_contexts.fragment \
  --policy deployment/android17-sepolicy/kaorios_advanced_policy.cil \
  --settings-domain system_app

# 5. Xác minh toàn bộ file đã patch trên máy tính
python3 script/kaorios_patcher.py verify \
  --framework out/framework.jar \
  --services out/services.jar \
  --settings-provider out/SettingsProvider.apk \
  --payload dist/classes.dex \
  --expect-secure-flag
```

---

## 3. Quy Tắc Thanh Ghi (Bắt Buộc Đọc Trước Khi Patch Tay)

Mỗi method smali dùng `.locals L` (số thanh ghi cục bộ `v*`) hoặc `.registers R` (tổng `locals + params`).

### 4 Quy Tắc Tránh Lỗi Assemble `smali` & Treo Logo (Bootloop)

1. **Tính chỉ số thanh ghi vật lý (effective index):**
   - `locals_count = L` (nếu dùng `.locals L`), hoặc `locals_count = R - param_slots` (nếu dùng `.registers R`).
   - Đếm `param_slots`: cộng `1` cho `this` (`p0`) nếu method không `static`, cộng `1` cho mỗi tham số thường, và cộng **`2`** cho mỗi tham số 64-bit `long` (`J`) hoặc `double` (`D`).
   - Chỉ số thật của tham số `pK` là **`locals_count + K`**.
2. **Giới hạn 4-bit `v0..v15` của lệnh `invoke-*` thường:**
   - Các lệnh `invoke-static {a, b}`, `invoke-virtual {a}`, `invoke-interface {a}` CHỈ mã hóa được thanh ghi từ `v0` đến `v15`.
   - Nếu bất kỳ tham số nào có chỉ số thật **`> 15`**, BẮT BUỘC chép xuống thanh ghi thấp (`v0..v4`) bằng `move/from16`, `move-object/from16` hoặc `move-wide/from16` trước khi gọi `invoke-*` (hoặc dùng `invoke-*/range {pA .. pB}` nếu các thanh ghi liên tiếp nhau).
3. **Tăng `.locals` hoặc `.registers` sẽ đẩy toàn bộ `pK` lên cao hơn:**
   - Luôn tính lại `locals_count + K` **sau khi** tăng `.locals` hoặc `.registers`.
   - Nếu code gốc dưới `.registers` gọi tham số bằng tên số (`v14` thay vì `p0`), phải đổi về `p0` trước khi tăng `.registers`.
4. **Không chèn lệnh vào giữa `invoke-*` và `move-result*`:**
   - `move-result` / `move-result-object` phải nằm ngay sát bên dưới `invoke-*`.

### Ví Dụ Minh Họa Số Cụ Thể

#### Ví dụ A — Tăng `.registers` (`generateKeyPair()` trong F5)
- Method gốc: `.registers 15`, non-static không đối số (`p0 = this`, nên `param_slots = 1`).
  - Trước khi sửa: locals `v0..v13` (14 local), `p0 = v14`.
- Tăng `.registers 15` -> **`.registers 16`**:
  - Sau khi sửa: locals `v0..v14`, thanh ghi tạm mới là **`v14`** (`registers - 2`), còn `p0` dịch sang `v15` (`<= 15`, vẫn dùng được `invoke-static {p0}`).
- Nếu ROM gốc đã là `.registers 16` thì sao?
  - Tăng lên `.registers 17` sẽ đẩy `p0` thành `v16` (`> 15`) -> `invoke-static {p0}` sẽ báo lỗi biên dịch!
  - **Cách xử lý:** Tận dụng ngay `v0` ở đầu method (không cần tăng `.locals` nếu đã có `.locals >= 1`) bằng `move-object/from16 v0, p0` + `invoke-static {v0}, ...`, hoặc dùng `invoke-static/range {p0 .. p0}, ...`.

#### Ví dụ B — Hạ Thanh Ghi Cao (`> v15`) Bằng `move*/from16` (`NameValueCache` trong F7)
- Method: `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- Header gốc: `.locals 14` (`p0 = v14`, `p1 = v15`, `p2 = v16`, `p3 = v17`).
- Vì `p2` (`16`) và `p3` (`17`) đều lớn hơn `15`, `invoke-static {p1, p2, p3}` sẽ lỗi!
- **Cách xử lý chuẩn (chạy tốt cho mọi `.locals >= 3`):**
  ```smali
  move-object/from16 v0, p1
  move-object/from16 v1, p2
  move/from16 v2, p3
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  move-result-object v0
  ```
  *(Hoặc viết gọn bằng `invoke-static/range {p1 .. p3}, ...` vì `p1..p3` liên tiếp nhau.)*

#### Ví dụ C — Tham Số 64-Bit `long` (`J`) Chiếm 2 Thanh Ghi (`generatePackageInfo` trong S4)
- Method: `generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;`
- Biến `long flags` chiếm **2 thanh ghi liên tiếp**: `p2` (32 bit thấp) và `p3` (32 bit cao).
- Nếu `.locals 14`, ta có `p2 = v16`, `p3 = v17` (`> 15`). Chép `vPi -> v0` và cặp `p2..p3 -> v1..v2`:
  ```smali
  move-object/from16 v0, vPi
  move-wide/from16 v1, p2
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object v0
  return-object v0
  ```

---

## 4. `framework.jar` — Import Payload & Các Hook (F1–F7)

### Bước 0 — Chép Payload `classes.dex` Vào `framework.jar`

1. Kiểm tra danh sách `classes*.dex` trong `framework.jar` gốc (ví dụ `classes.dex` đến `classes5.dex`).
2. Đảm bảo `framework.jar` gốc **chưa** có package `android/security/kaorios/` hay `com/kousei/framework/`.
3. Chép file `classes.dex` từ `KaoriosFramework-release.apk` vào `framework.jar` theo **số thứ tự liên tiếp kế tiếp** (ví dụ `classes6.dex`). Không nhảy cóc số thứ tự vì ART quét liên tục `classes.dex`, `classes2.dex`, `classes3.dex`, ...
4. Với từng hook F1–F7 bên dưới, chỉ giải nén (`baksmali disassemble`) đúng file `classes*.dex` chứa class cần sửa, rồi đóng gói lại (`smali assemble`) với `--api 33` (Android 13) hoặc `--api 34` (Android 14–17 khi dùng `smali 3.0.8`, vì `smali 3.0.8` xuất DEX 040 tương thích ngược tốt nhất ở `--api 34` và sẽ báo lỗi `IllegalArgumentException: dexVersion must be within [0, 999]` nếu truyền `--api 36+`).

---

### F1) `Instrumentation` — Khởi Tạo Context, PIF & GameProps

- **File mẫu đối chiếu:** [`Template/Instrumentation.smali`](Template/Instrumentation.smali)
- **Class:**
  ```smali
  Landroid/app/Instrumentation;
  ```
- **Method 1 (Static 2 tham số — `Context` là `p1`):**
  ```smali
  newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
  ```
- **Tìm** (ngay trước **mọi** dòng `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Thêm** ngay phía trên `return-object`:
  ```smali
  invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
  ```
- **Method 2 (Instance 3 tham số — `Context` là `p3`):**
  ```smali
  newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
  ```
- **Tìm** (ngay trước **mọi** dòng `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Thêm** ngay phía trên `return-object`:
  ```smali
  invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
  ```

#### Lưu ý thanh ghi
- Bắt buộc patch **cả hai** overload và trước **mọi** nhánh `return-object` (sau khi `app.attach(context)` chạy xong).
- Nếu trên ROM OEM có `effective(pCtx) > 15`, đảm bảo `.locals >= 2`, chọn thanh ghi tạm khác `vRet` (ví dụ `v1` nếu `vRet = v0`) và hạ bằng `move-object/from16 v1, p3` trước `invoke-static {v1}`.

---

### F2) `ActivityThread` — Khởi Tạo Sớm PIF & GameProps Khi Bind App

- **File mẫu đối chiếu:** [`Template/ActivityThread.smali`](Template/ActivityThread.smali)
- **Class:**
  ```smali
  Landroid/app/ActivityThread;
  ```
- **Method:**
  ```smali
  handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
  ```
- **Vị trí chèn:** Đầu method — ngay bên dưới `.locals` / `.registers` (và các dòng `.param` / `.annotation` nếu có).
- **Thêm:**
  ```smali
  # Trường hợp phổ biến (handleBindApplication thường có 20–50 locals nên p1 > v15):
  move-object/from16 v0, p1
  invoke-static {v0}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
  ```

#### Lưu ý thanh ghi
- Trên Android 13–17, `handleBindApplication` hầu như luôn có `> 15` locals (ví dụ `.locals 18` -> `p0 = v18`, `p1 = v19`). Chép `p1` vào `v0` ở đầu method là hoàn toàn an toàn vì code gốc chưa dùng `v0`.
- Nếu ROM của bạn có `effective(p1) <= 15`, có thể gọi thẳng:
  ```smali
  invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
  ```
- Overload `(Ljava/lang/Object;)V` tự đọc `processName` và `appInfo.packageName` qua reflection nên tương thích xuyên suốt Android 13–17.

---

### F3) `SystemProperties` — Spoof Thuộc Tính Hệ Thống Lớp Java (Fallback)

- **File mẫu đối chiếu:** [`Template/SystemProperties.smali`](Template/SystemProperties.smali)
- **Class:**
  ```smali
  Landroid/os/SystemProperties;
  ```
- **Method 1 (Luôn patch):**
  ```smali
  get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ```
- **Method 2 (CHỈ patch nếu thân hàm KHÔNG gọi sang bản 2 tham số `get(String, String)`):**
  ```smali
  get(Ljava/lang/String;)Ljava/lang/String;
  ```
- **Tìm** (ngay trước **mọi** dòng `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Thêm** ngay phía trên `return-object v0`:
  ```smali
  invoke-static {p0, v0}, Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  move-result-object v0
  ```

#### Lưu ý thanh ghi
- Đổi `v0` đúng theo thanh ghi của lệnh `return-object vRet` trong ROM của bạn.
- Nếu `effective(p0) > 15` hoặc `effective(vRet) > 15`, đặt `.locals >= 3`, dùng `move-object/from16` chép `p0 -> v0` và `vRet -> v1`, gọi `invoke-static {v0, v1}`, `move-result-object v0`, rồi `return-object v0`.

---

### F4) `ApplicationPackageManager` — Ẩn Feature Chứng Thực Phần Cứng

- **File mẫu đối chiếu:** [`Template/ApplicationPackageManager.smali`](Template/ApplicationPackageManager.smali)
- **Class:**
  ```smali
  Landroid/app/ApplicationPackageManager;
  ```
- **Method:**
  ```smali
  hasSystemFeature(Ljava/lang/String;I)Z
  ```
- **Vị trí chèn:** Đầu method — ngay bên dưới `.registers X` / `.locals X` (sau `.param` / `.annotation`).
- **Thêm:**
  ```smali
  invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
  move-result-object v0

  if-eqz v0, :kaorios_hsf_passthrough_0
  invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
  move-result v0
  return v0

  :kaorios_hsf_passthrough_0
  ```

#### Lưu ý thanh ghi
- Cần `.locals >= 2` (hoặc `.registers >= 5` vì có `p0`, `p1`, `p2`).
- Ví dụ: ROM gốc dùng `.registers 7` -> `locals = 4` (`v0..v3`), `p1 = v5`, `p2 = v6` (đều `<= 15`), dùng trực tiếp `{p1, p2}` và `v0`.
- Nếu `effective(p2) > 15`, hạ `p1 -> v0` (`move-object/from16`) và `p2 -> v1` (`move/from16`), sau đó gọi `{v0, v1}`.
- Chỉ ẩn `strongbox_keystore`, `app_attest_key`, và `device_id_attestation` cho các app trong danh sách mục tiêu TrickyStore; các app khác trả `null` để chạy code gốc.

---

### F5) `AndroidKeyStoreKeyPairGeneratorSpi` — Sinh Cặp Khóa Phần Mềm (Chế Độ `GENERATE`)

- **File mẫu đối chiếu:** [`Template/AndroidKeyStoreKeyPairGeneratorSpi.smali`](Template/AndroidKeyStoreKeyPairGeneratorSpi.smali)
- **Class:**
  ```smali
  Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
  ```
- **Method:**
  ```smali
  generateKeyPair()Ljava/security/KeyPair;
  ```
- **Vị trí chèn:** Đầu method — ngay bên dưới `.registers X` / `.locals X` (sau `.param` / `.annotation`).
- **Thêm:**
  ```smali
  invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
  move-result-object vX

  if-eqz vX, :kaorios_gen_passthrough_0
  return-object vX

  :kaorios_gen_passthrough_0
  ```

#### Lưu ý thanh ghi
- **Trường hợp 1 (`.registers <= 15`):** Tăng `.registers` thêm `1` và thay `vX = v(registers_mới - 2)`:
  - Ví dụ: `.registers 15` -> sửa thành **`.registers 16`**, đổi `vX` thành **`v14`** (`p0` thành `v15 <= 15`).
- **Trường hợp 2 (`.registers >= 16` hoặc `.locals >= 15`):** `p0` đã vượt quá `v15`. Không gọi `invoke-static {p0}` trực tiếp! Hãy tận dụng `v0` ở đầu method (không cần tăng thanh ghi nếu `.locals >= 1`):
  ```smali
  move-object/from16 v0, p0
  invoke-static {v0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
  move-result-object v0

  if-eqz v0, :kaorios_gen_passthrough_0
  return-object v0

  :kaorios_gen_passthrough_0
  ```

---

### F6) `AndroidKeyStoreSpi` — Ghi Đè Chuỗi Chứng Chỉ + Lưu SELF (`LEAF_HACK`)

- **File mẫu đối chiếu:** [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali)
- **Class:**
  ```smali
  Landroid/security/keystore2/AndroidKeyStoreSpi;
  ```
- **Method 1 (Bắt buộc):**
  ```smali
  engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
  ```
- **Tìm** (đoạn trả mảng chứng chỉ thật — giữ nguyên các nhánh trả `null` gốc):
  ```smali
  const/4 vA, 0x0
  aput-object vB, vC, vA
  return-object vC
  ```
- **Thêm** ngay giữa `aput-object vB, vC, vA` và `return-object vC`:
  ```smali
  invoke-static {p0, p1, vC}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
  move-result-object vC
  ```

#### Ví dụ cụ thể (trên AOSP `.registers 11`, mảng nằm ở `v3`)
```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

#### Lưu ý thanh ghi
- Luôn dùng bản **3 tham số** `(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` để đồng bộ lưu chuỗi vào Keystore2 (SELF persistence).
- Thanh ghi mảng `vC` phải trùng khớp giữa `aput-object`, `invoke-static`, `move-result-object`, và `return-object`.
- Nếu `effective(p1) > 15` hoặc `effective(vC) > 15`, dùng `.locals >= 4`, chép `p0 -> v0`, `p1 -> v1`, `vC -> v2` bằng `move-object/from16`, gọi `invoke-static {v0, v1, v2}`, `move-result-object v0`, rồi `return-object v0`.

- **Method 2 (Khuyên thêm kèm — đồng bộ chứng chỉ lá khi app gọi `getCertificate()`):**
  ```smali
  engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
  ```
- **Thêm** ở đầu method (cần `.locals >= 2`; xem [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali)):
  ```smali
  invoke-virtual/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
  move-result-object v0
  if-eqz v0, :kaorios_certificate_stock
  array-length v1, v0
  if-eqz v1, :kaorios_certificate_stock
  const/4 v1, 0x0
  aget-object v0, v0, v1
  return-object v0

  :kaorios_certificate_stock
  ```

---

### F7) `Settings$NameValueCache` — Ẩn Tùy Chọn Nhà Phát Triển, ADB & Trợ Năng

- **File mẫu đối chiếu:** [`Template/Settings$NameValueCache.smali`](Template/Settings$NameValueCache.smali)
- **Class:**
  ```smali
  Landroid/provider/Settings$NameValueCache;
  ```
- **Method:**
  ```smali
  getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  ```
- **Vị trí chèn:** Đầu method — ngay bên dưới `.registers X` / `.locals X` (sau `.param` / `.annotation`).
- **Thêm:**
  ```smali
  # An toàn cho MỌI số lượng thanh ghi (.locals >= 3), kể cả khi p2/p3 > v15:
  move-object/from16 v0, p1
  move-object/from16 v1, p2
  move/from16 v2, p3
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  move-result-object v0

  if-eqz v0, :kaorios_nvc_passthrough_0
  return-object v0

  :kaorios_nvc_passthrough_0
  ```

#### Lưu ý thanh ghi
- **Kiểu trả về là `Ljava/lang/String;`** (KHÔNG phải kiểu `Z` boolean cũ). Trả về `"0"` / `""` khi cần ẩn hoặc `null` để chạy code gốc.
- Cách viết gọn thay thế: vì `p1`, `p2`, `p3` liên tiếp nhau, có thể gọi trực tiếp bằng `invoke-static/range` mà không cần `move*/from16` (chỉ cần `.locals >= 1` cho `v0`):
  ```smali
  invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  ```
- Áp dụng cho 8 key (`adb_enabled`, `development_settings_enabled`, `adb_wifi_enabled`, `package_verifier_user_consent`, `verify_apps_over_usb`, `accessibility_enabled`, `enabled_accessibility_services`, `accessibility_display_inversion_enabled`), bỏ qua UID `< 10000` và tự bật cờ `kaorios_hide_dev_work = 1`.

---

## 5. `services.jar` — Các Hook Cốt Lõi (S1–S4)

Chỉ giải nén đúng file `classes*.dex` trong `services.jar` chứa `SystemServer` và `ComputerEngine` (hoặc `AppsFilterBase` / `IPackageManagerBase` nếu ROM của bạn tách lớp).

---

### S1) `SystemServer` — Khởi Động Dịch Vụ Hệ Thống & Policy

- **File mẫu đối chiếu:** [`Template/SystemServer.smali`](Template/SystemServer.smali)
- **Class:**
  ```smali
  Lcom/android/server/SystemServer;
  ```
- **Method:**
  ```smali
  startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
  ```
  *(hoặc `startOtherServices()V` trên ROM đời cũ)*
- **Vị trí chèn:** Đầu method — ngay bên dưới `.registers X` / `.locals X`.
- **Thêm:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
  ```

#### Lưu ý thanh ghi
- Không dùng thanh ghi nào (`{}`) -> **không cần** sửa `.locals` hay `.registers`.
- Đặt 1 lần ở đầu `startOtherServices` (chuẩn theo patcher) hoặc đặt trong `run()V` ngay trước `startOtherServices(...)` / `Looper.loop()` đều tương đương nhau vì `initSystemServer()` đồng bộ, chỉ chạy 1 lần và đẩy sang luồng nền `"KaoriosSystemInit"`. Chỉ thêm **duy nhất 1 vị trí**.

---

### S2) `ComputerEngine` (hoặc `AppsFilterBase`) — Ẩn Danh Sách Ứng Dụng & Chính Sách HMA

- **File mẫu đối chiếu:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
  *(Hoặc `Lcom/android/server/pm/AppsFilterBase;` nếu ROM lọc ở đó)*
- **Các Method mục tiêu (patch TẤT CẢ các overload cụ thể có mặt trong class):**
  1. `shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` (`p1`=targetPs, `p2`=callingUid, `p3`=userId)
  2. `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` (`p1`=targetPs, `p2`=callingUid, `p3`=userId)
  3. `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` (`p1`=targetPs, `p2`=callingUid, **`p5`**=userId)
  4. `AppsFilterBase`: `shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z` (`p2`=callingUid, **`p4`**=targetPs, **`p5`**=userId)
- **Vị trí chèn:** Đầu method (đảm bảo `.locals >= 3`).
- **Thêm** (bản 3 tham số khi `p1`, `p2`, `p3 <= v15`):
  ```smali
  if-eqz p1, :kaorios_hideapp_passthrough_0
  invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
  move-result-object v1
  invoke-static {p2, v1, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
  move-result v0

  if-eqz v0, :kaorios_hideapp_passthrough_0
  const/4 v0, 0x1
  return v0

  :kaorios_hideapp_passthrough_0
  ```

#### Lưu ý thanh ghi (Ví dụ `> v15` cho bản 7 tham số)
- Ở bản 7 tham số, `userId` là `p5`. Nếu `.locals 12` thì `p0=v12, p1=v13, p2=v14, p3=v15, p4=v16, p5=v17 (> 15)`!
- Hạ bất kỳ tham số nào vượt `v15` (xem [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)):
  ```smali
  if-eqz p1, :kaorios_hideapp_passthrough_1
  invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
  move-result-object v1
  move/from16 v2, p5
  invoke-static {p2, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
  move-result v0

  if-eqz v0, :kaorios_hideapp_passthrough_1
  const/4 v0, 0x1
  return v0

  :kaorios_hideapp_passthrough_1
  ```
- Nếu cả `p1` hoặc `p2` cũng vượt `v15` (thường gặp trên One UI / HyperOS), hạ `p1 -> v0` (`move-object/from16`) trước `if-eqz` / `invoke-interface`, rồi hạ `p2 -> v0` (`move/from16`) sau `move-result-object v1`.
- Đọc trực tiếp snapshot bộ nhớ `AdvancedPolicySnapshot` (không gọi Settings IPC trong đường nóng của PackageManager).

---

### S3) `ComputerEngine` (hoặc `IPackageManagerBase`) — Spoof Nguồn Cài Đặt Ứng Dụng

- **File mẫu đối chiếu:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
  *(Fallback: `Lcom/android/server/pm/IPackageManagerBase;`)*
- **Method:**
  ```smali
  getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
  ```
  *(hoặc `getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;`)*
- **Vị trí chèn:** Ngay trước **MỌI** lệnh `return-object vRet` (KHÔNG bỏ qua nhánh trả `null` — chế độ `INSTALL_SOURCE_USER` có thể spoof app cài ngoài từ `null` thành `"com.android.vending"`).
- **Thêm** (đảm bảo `.locals >= 5`):
  ```smali
  move-object/from16 v3, p1
  move-object/from16 v4, vRet
  const/4 v0, 0x0
  invoke-static {}, Landroid/os/Binder;->getCallingUid()I
  move-result v1
  const/4 v2, -0x1
  invoke-static {v0, v1, v2, v3, v4}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  move-result-object v0
  return-object v0
  ```

#### Lưu ý thanh ghi
- Thay `vRet` bằng thanh ghi thực tế trước lệnh `return-object`.
- Nếu `vRet` trùng `v3`, nhớ chép `v3 -> v4` **trước** khi ghi `p1` vào `v3`.
- Truyền `userId = -1` (`const/4 v2, -0x1`) giúp `KaoriosHook.filterInstallerPackageName` tự tính đúng `userId` từ `callingUid` trên mọi bản Android 13–17.

---

### S4) `ComputerEngine` — Spoof Chữ Ký FakeGApps / microG

- **File mẫu đối chiếu:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
- **Method:**
  ```smali
  generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
  ```
- **Vị trí chèn:** Ngay trước **mọi** lệnh `return-object vPi`.
- **Thêm** (khi `effective(vPi) <= 15` và `effective(p3) <= 15`):
  ```smali
  invoke-static {vPi, p2, p3}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object vPi
  ```

#### Lưu ý thanh ghi
- `p2, p3` là cặp `long` 64-bit (`J`) chiếm 2 thanh ghi liên tiếp.
- Nếu `effective(p3) > 15` hoặc `effective(vPi) > 15`, đặt `.locals >= 3` và hạ thanh ghi trước khi return:
  ```smali
  move-object/from16 v0, vPi
  move-wide/from16 v1, p2
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object v0
  return-object v0
  ```
- Trên ROM Android 13 cũ dùng cờ 32-bit `I` (`p2`), chép `p2` vào `v1` rồi chuyển `int-to-long v1, v1` trước khi gọi `{v0, v1, v2}`.

---

### Hướng Dẫn Tính Năng Tùy Chọn

- **S5 — Tắt `FLAG_SECURE` (chụp/quay màn hình):** [`Disable_Secure_Flag_VI.md`](Disable_Secure_Flag_VI.md)
- **CorePatch (bỏ qua kiểm tra chữ ký / hạ cấp APK):** [`CorePatch_VI.md`](CorePatch_VI.md)
- **Cẩm nang ROM Hãng (HyperOS, One UI, ColorOS/OPlus, OriginOS, Pixel/AOSP):** [`OEM_ROM_Patch_Guide_VI.md`](OEM_ROM_Patch_Guide_VI.md)

---

## 6. Tùy Chọn: `SettingsProvider.apk` (SP1) & SELinux Android 17

Chỉ cần khi bạn sử dụng HMA `settingsTemplates` / `settingsPresets` theo từng ứng dụng hoặc bật **Tính năng nâng cao** (`kaorios_advanced_features`).

### 6.1 Patch `SettingsProvider.apk`

- **File mẫu đối chiếu:** [`Template/SettingsProvider.smali`](Template/SettingsProvider.smali)
- **Class:**
  ```smali
  Lcom/android/providers/settings/SettingsProvider;
  ```
- **Method:**
  ```smali
  call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
  ```
- **Vị trí chèn:** Đầu method (đảm bảo `.locals >= 2`).
- **Thêm:**
  ```smali
  # Nếu effective(p2) > 15, hạ p1 -> v0 và p2 -> v1 bằng move-object/from16 trước
  invoke-static {p1, p2}, Landroid/security/kaorios/settings/AdvancedPolicyService;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
  move-result-object v0

  if-eqz v0, :kaorios_adv_settings_passthrough_0
  return-object v0

  :kaorios_adv_settings_passthrough_0
  ```
- **Đóng gói lại APK:** Giữ `classes*.dex` không nén (`ZIP_STORED`), căn chỉnh `zipalign` 4-byte và giữ chữ ký platform của ROM (vì `SettingsProvider` dùng chung `android.uid.system`).

### 6.2 Quy Tắc SELinux Android 17 (Bắt Buộc Chế Độ `Enforcing`)

Đo chính xác domain SELinux thực tế của `SettingsProvider` trên máy bạn trước:
```bash
adb shell ps -AZ | grep com.android.providers.settings
```
AOSP mặc định là `system_app`; một số ROM OEM/Custom dùng `settings_provider`, `platform_app` hoặc `system_server`. Thay đúng domain bạn đo được vào mẫu dưới đây.

1. **`service_contexts` (`deployment/android17-sepolicy/service_contexts.fragment`):**
   ```text
   kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0
   ```
2. **File TE (`deployment/android17-sepolicy/kaorios_advanced_policy.te` — build ROM từ source):**
   ```te
   type kaorios_advanced_policy_service, service_manager_type, system_server_service;

   allow system_server kaorios_advanced_policy_service:service_manager { add find };

   # Thay system_app nếu ps -AZ ra domain khác
   allow system_app kaorios_advanced_policy_service:service_manager find;
   binder_call(system_app, system_server)

   neverallow untrusted_app_all kaorios_advanced_policy_service:service_manager { add find };
   ```
3. **File CIL (`deployment/android17-sepolicy/kaorios_advanced_policy.cil` — chèn `plat_sepolicy.cil` trên ROM đóng gói sẵn):**
   ```cil
   (type kaorios_advanced_policy_service)
   (roletype object_r kaorios_advanced_policy_service)
   (typeattributeset service_manager_type (kaorios_advanced_policy_service))
   (typeattributeset system_server_service (kaorios_advanced_policy_service))
   (allow system_server kaorios_advanced_policy_service (service_manager (add find)))
   (allow system_app kaorios_advanced_policy_service (service_manager (find)))
   (allow system_app system_server (binder (call transfer)))
   (allow system_server system_app (binder (call transfer)))
   ```

> [!WARNING]
> Trên ROM dựng sẵn dùng Magisk / KernelSU, lệnh `magiskpolicy --live` chỉ nạp luật SELinux vào RAM và **KHÔNG THỂ** sửa file `service_contexts` tĩnh. Bạn phải bind-mount file `plat_service_contexts` (hoặc `system_ext_service_contexts`) đã bổ sung dòng `kaorios_advanced_policy` trong giai đoạn sớm `post-fs-data.sh`. Tuyệt đối không tắt SELinux (`setenforce 0`) để né lỗi.

---

## 7. Tùy Chọn: Native PIF (`libkaoripif.so`) & Chẩn Đoán (`libkaoripif_diagnostic.so`)

### Native PIF (`libkaoripif.so`)
Thứ tự tìm kiếm của `KaoriosPifInstaller`:
1. `/system_ext/lib64/libkaoripif.so` (32-bit: `/system_ext/lib/libkaoripif.so`)
2. `/system/lib64/libkaoripif.so` (32-bit: `/system/lib/libkaoripif.so`)
3. `System.loadLibrary("kaoripif")`

```bash
adb root && adb remount
adb push libkaoripif-arm64-v8a.so /system_ext/lib64/libkaoripif.so
adb push libkaoripif-armeabi-v7a.so /system_ext/lib/libkaoripif.so
adb shell chown root:root /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
adb shell chmod 0644 /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
adb shell restorecon -v /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
```

- **Cổng kiểm soát chặt:** Chỉ chạy trong `com.google.android.gms` (`com.google.android.gms.unstable`) và `com.android.vending` (`com.android.vending`), UID `>= 10000`, `ApplicationInfo.uid == Process.myUid()`, và `java.lang.BootClassLoader`.
- **Công tắc tắt khẩn cấp (lùi về Java fallback ngay lập tức):**
  ```bash
  adb shell setprop persist.sys.projectryu.pif_native 0
  ```

### Thư Viện Chẩn Đoán Chỉ Đọc (`libkaoripif_diagnostic.so`)
- Chép vào `/system/lib64/libkaoripif_diagnostic.so` (`/system/lib/` cho 32-bit), quyền `0644`, chủ `root:root`, chạy `restorecon`.
- Hoàn toàn chỉ đọc, chỉ nạp khi gọi tường minh `PifNative.initialize()`.

---

## 8. Triển Khai & Xóa Cache ART / OAT / VDEX Cũ

Mỗi khi thay `framework.jar` hoặc `services.jar` (qua module Magisk/KernelSU, TWRP/OrangeFox, hoặc `adb remount`):

1. Luôn giữ bản sao lưu và mã SHA-256 của file JAR gốc ngoài thư mục làm việc.
2. Đặt đúng quyền: chủ `0:0` (`root:root`), mode `0644`, ngữ cảnh `u:object_r:system_file:s0`.
3. **Xóa sạch cache ART / OAT / VDEX cũ** (nếu bỏ qua, ART sẽ chạy mã biên dịch cũ hoặc treo logo):
   ```bash
   rm -rf /system/framework/oat/
   rm -f  /system/framework/arm*/boot-framework.*
   rm -f  /system/framework/oat/*/services.*
   rm -rf /data/dalvik-cache/*
   rm -rf /data/misc/apexdata/com.android.art/dalvik-cache/*
   ```
   *(Với phân vùng chỉ đọc EROFS dùng module Magisk/KernelSU, tạo file rỗng hoặc `.replace` đè thư mục `oat` trong module và xóa `/data/dalvik-cache/*` + `/data/misc/apexdata/com.android.art/dalvik-cache/*` trong `post-fs-data.sh`.)*
4. Khởi động lại máy. Lần boot đầu mất 1–3 phút để ART biên dịch lại.

---

## 9. Kiểm Chứng Trên Máy Tính vs Trên Thiết Bị Thật

### Kiểm chứng trên máy tính (`kaorios_patcher.py verify`)
Chứng minh được:
- Payload `classesN.dex` chứa đủ các class/method R8-kept và không trùng class gốc của ROM.
- Mọi điểm hook gọi đúng chữ ký `KaoriosHook` / `AdvancedPolicyService`, không có gọi nhầm class obfuscated hay stub chết.
- Toàn bộ smali assemble sạch bằng `smali` không lỗi thanh ghi.

### Kiểm chứng bắt buộc trên thiết bị thật
Host PASS không thay thế được kiểm tra thực tế trên máy (ART, SELinux, Play Integrity). Sau khi máy boot lên:

```bash
# 1. Kiểm tra SystemServer bootstrap (S1) và Secure Flag (S5 nếu có)
adb shell settings get global kaorios_time
adb shell settings get global kaorios_secure_flag_work

# 2. Kiểm tra Ẩn Developer Status (F7) sau khi mở một app người dùng (UID >= 10000)
adb shell settings get global kaorios_hide_dev_work

# 3. Kiểm tra SELinux Enforcing + Binder service + probe SettingsProvider (nếu dùng SP1)
adb shell getenforce
adb shell service check kaorios_advanced_policy
adb shell settings get global kaorios_advanced_probe_0123456789abcdef0123456789abcdef
# Kết quả mong đợi: kaorios-advanced-v1:global:0123456789abcdef0123456789abcdef
adb shell dmesg | grep -i "avc:.*kaorios"

# 4. Bật log chi tiết (tùy chọn)
adb shell settings put global kaorios_debug 1
adb logcat -s KaoriosHooks TrickyStoreService TrickyStoreSettings PIF GameProps KaoriosPifInstaller
```

---

## 10. Bảng Tóm Tắt Nhanh & File Mẫu Đối Chiếu

| Hook | File Đích | Class | Callee Được Giữ (R8-Kept) | File Smali Mẫu |
|---|---|---|---|---|
| **F1** | `framework.jar` | `Instrumentation` | `KaoriosHook;->initContext` | [`Instrumentation.smali`](Template/Instrumentation.smali) |
| **F2** | `framework.jar` | `ActivityThread` | `KaoriosHook;->initActivityThread` | [`ActivityThread.smali`](Template/ActivityThread.smali) |
| **F3** | `framework.jar` | `SystemProperties` | `KaoriosHook;->getSpoofedProperty` | [`SystemProperties.smali`](Template/SystemProperties.smali) |
| **F4** | `framework.jar` | `ApplicationPackageManager` | `KaoriosHook;->hasSystemFeature` | [`ApplicationPackageManager.smali`](Template/ApplicationPackageManager.smali) |
| **F5** | `framework.jar` | `AndroidKeyStoreKeyPairGeneratorSpi` | `KaoriosHook;->initGenerateSoftwareKeyPair` | [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](Template/AndroidKeyStoreKeyPairGeneratorSpi.smali) |
| **F6** | `framework.jar` | `AndroidKeyStoreSpi` | `KaoriosHook;->CertificateChainIfNeeded` (3-arg) | [`AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali) |
| **F7** | `framework.jar` | `Settings$NameValueCache` | `KaoriosHook;->shouldHideDevStatusFromNameValueCache` | [`Settings$NameValueCache.smali`](Template/Settings$NameValueCache.smali) |
| **S1** | `services.jar` | `SystemServer` | `KaoriosHook;->initSystemServer` | [`SystemServer.smali`](Template/SystemServer.smali) |
| **S2** | `services.jar` | `ComputerEngine` / `AppsFilterBase` | `KaoriosHook;->shouldHideAppListForCaller` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S3** | `services.jar` | `ComputerEngine` / `IPackageManagerBase` | `KaoriosHook;->filterInstallerPackageName` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S4** | `services.jar` | `ComputerEngine` | `KaoriosHook;->spoofFakeGAppsPackageInfo` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S5** *(tùy chọn)* | `services.jar` | `WindowState` | `KaoriosHook;->isSecureFlag` | [`WindowState.smali`](Template/WindowState.smali) |
| **SP1** *(tùy chọn)* | `SettingsProvider.apk` | `SettingsProvider` | `AdvancedPolicyService;->filterSettingsCall` | [`SettingsProvider.smali`](Template/SettingsProvider.smali) |
