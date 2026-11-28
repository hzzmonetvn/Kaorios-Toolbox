# Cẩm Nang Patch ROM Hãng (OEM) — Kaorios Toolbox v2.0.6.2

Các bản ROM OEM Android 13–17 thực tế khác rất nhiều so với AOSP thuần về cấu trúc phân vùng, cách tách nhiều file DEX, các file JAR phụ của hãng, áp lực thanh ghi cao (`> v15`), domain SELinux của `SettingsProvider`, và bộ nhớ đệm biên dịch sẵn ART (`oat`/`vdex`/`prof`).

Hãy dùng cẩm nang này song song với [`Patch_Guide_2.0.6.2_VI.md`](Patch_Guide_2.0.6.2_VI.md) và bộ file mẫu [`Template/`](Template/) để patch **ROM stock sạch** của từng hãng an toàn, tránh treo logo (bootloop).

> [!IMPORTANT]
> - **Quy tắc ABI R8 trên mọi hãng:** Mọi hook smali trên bất kỳ ROM OEM nào **CHỈ ĐƯỢC** gọi vào `Landroid/security/kaorios/KaoriosHook;` (`F1–F7`, `S1–S5`) và `Landroid/security/kaorios/settings/AdvancedPolicyService;` (`SP1`). Tuyệt đối không gọi class nội bộ bị R8 đổi tên hay các hàm no-op cũ.
> - **Bản tiếng Anh:** [`OEM_ROM_Patch_Guide.md`](OEM_ROM_Patch_Guide.md).

---

## 1. Bảng So Sánh Nhanh 5 Hệ Sinh Thái ROM

| Hãng / Dòng ROM | Android / API | File JAR Cốt Lõi Cần Patch | File JAR Phụ Của Hãng (KHÔNG chuyển F1–F7 / S1–S5 sang đây) | Đường Dẫn `SettingsProvider.apk` Phổ Biến | Lưu Ý Quan Trọng Nhất |
|---|---|---|---|---|---|
| **Xiaomi MIUI / HyperOS (1/2/3)** | A14–A17 (API 34–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system_ext/framework/miui-framework.jar`<br>`/system_ext/framework/miui-services.jar` | `/system_ext/priv-app/SettingsProvider/` (hoặc `/system/priv-app/`) | CorePatch MIUI tùy chọn nằm ở `miui-services.jar`; bắt buộc xóa `oat` + `boot-framework.*`; giữ DEX `ZIP_STORED` |
| **Samsung One UI (6/7/8)** | A14–A17 (API 34–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `sec_framework.jar` / `knoxsdk.jar` (giữ nguyên) | `/system/priv-app/SettingsProvider/` | `ComputerEngine` nhiều thanh ghi (`> v15`); bắt buộc dọn `.prof`/`.art`/`.vdex`/`.odex`; Knox eFuse `0x1` không reset được |
| **OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system_ext/framework/oplus-framework.jar`<br>`/system_ext/framework/oplus-services.jar` | `/system_ext/priv-app/SettingsProvider/` (hoặc `/system/priv-app/`) | Wrapper `IOplus*Ext` trong `ComputerEngine` & `SystemProperties`; phân vùng OTA `my_stock` / `my_product` |
| **vivo OriginOS / FuntouchOS** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system/framework/vivo-framework.jar`<br>`/system/framework/vivo-services.jar` | `/system/priv-app/SettingsProvider/` | Nhánh `IVivo*` thêm nhiều `return-object` ở `Instrumentation` & `ComputerEngine`; kiểm tra kỹ SELinux qua `ps -AZ` |
| **Google Pixel / AOSP / Custom AOSP** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | Không có (gần mẫu nhất) | `/system_ext/priv-app/SettingsProvider/` hoặc `/system/priv-app/` | Android 17 `plat_sepolicy.cil` + `plat_service_contexts` tĩnh; cẩn thận xung đột hook có sẵn trên Custom ROM |

---

## 2. Quy Trình Trích Xuất, Deodex & Đóng Module Chung Cho Mọi Hãng

### 2.1 Lấy File Stock Sạch Từ Máy Hoặc Bản ROM OTA

**Cách A — Kéo trực tiếp từ máy đã root (chưa từng patch):**
```bash
mkdir -p stock
adb pull /system/framework/framework.jar stock/framework.jar
adb pull /system/framework/services.jar stock/services.jar
# Tìm và kéo SettingsProvider.apk (nếu cần SP1):
adb shell pm path com.android.providers.settings
adb pull /system_ext/priv-app/SettingsProvider/SettingsProvider.apk stock/SettingsProvider.apk
# Lưu checksum SHA-256 để khôi phục khi cần
sha256sum stock/*.jar stock/*.apk > stock/SHA256SUMS.txt
```

**Cách B — Trích xuất từ OTA `payload.bin` hoặc `super.img`:**
- **OTA `payload.bin` (Pixel, OnePlus/OPlus, HyperOS, LineageOS):** dùng `payload-dumper-go` tách `system.img` và `system_ext.img`, sau đó giải nén bằng `7z` hoặc `extract.erofs` (`erofs-utils`).
- **Samsung `AP_*.tar.md5` (`super.img.lz4`):** giải nén `lz4` -> chuyển sparse bằng `simg2img` -> tách phân vùng logic (`system`, `system_ext`, `product`) bằng `lpunpack` -> lấy JAR từ `system.img`.

### 2.2 Kiểm Tra Odex & Cách Deodex

Kiểm tra xem file JAR đã chứa sẵn `classes.dex` hay chưa:
```bash
unzip -l stock/services.jar | grep '\.dex$'
```
- **Có sẵn `classes.dex` (dung lượng từ vài MB trở lên):** JAR đã deodex sẵn (hoặc nhúng sẵn DEX). Có thể patch trực tiếp ngay!
- **Không có file `.dex` (file JAR rất nhẹ, `< 50 KB`):** ROM đang ở dạng **odexed**. Cần kéo thêm thư mục bootclasspath và file `.odex`/`.vdex`:
  ```bash
  mkdir -p boot_cp
  adb pull /system/framework/arm64/ boot_cp/arm64/
  adb pull /system/framework/oat/arm64/services.odex stock/
  adb pull /system/framework/oat/arm64/services.vdex stock/
  ```
  Deodex bằng `baksmali` 3.0.8 (`deodex`) hoặc `vdexExtractor`:
  ```bash
  export KAORIOS_SMALI_CLASSPATH="/path/to/smali-3.0.8-libs/*"
  # Deodex services.odex bằng đúng bootclasspath của bản ROM đó:
  java -cp "$KAORIOS_SMALI_CLASSPATH" com.android.tools.smali.baksmali.Main deodex \
    -b boot_cp/arm64/boot.oat --api 34 stock/services.odex -o work/services_smali
  # Assemble thành classes.dex sạch (DEX 040; smali 3.0.8 báo lỗi nếu truyền --api 36+) rồi nén ZIP_STORED
  java -cp "$KAORIOS_SMALI_CLASSPATH" com.android.tools.smali.smali.Main assemble \
    --api 34 work/services_smali -o work/classes.dex
  ```
  *(Nếu `framework.jar` bị odex, trích xuất DEX từ `boot-framework.vdex` bằng `vdexExtractor` + `compact_dex_converter` nếu gặp CompactDex `cdex`, đặt `classes.dex..classesN.dex` không nén vào `framework.jar` trước khi chạy `script/kaorios_patcher.py`.)*

### 2.3 Cách Triển Khai An Toàn Nhất: Module Magisk / KernelSU

Các ROM Android 13–17 đời mới dùng phân vùng chỉ đọc `EROFS` kèm `dm-verity`. Đóng thành module Magisk hoặc KernelSU giúp dễ cập nhật và cứu bootloop trong 10 giây:

```text
kaorios-framework-module/
├── module.prop
├── post-fs-data.sh          # Xóa cache ART cũ (+ tùy chọn bind-mount SELinux)
├── system/
│   ├── framework/
│   │   ├── framework.jar    # framework.jar đã patch (0644)
│   │   ├── services.jar     # services.jar đã patch (0644)
│   │   └── oat/             # Thư mục rỗng chứa file .replace để che oat/ gốc
│   └── lib64/
│       └── libkaoripif_diagnostic.so   # Tùy chọn: chẩn đoán chỉ đọc
└── system_ext/
    ├── lib64/
    │   └── libkaoripif.so              # Tùy chọn: Native PIF (arm64-v8a)
    └── lib/
        └── libkaoripif.so              # Tùy chọn: Native PIF (armeabi-v7a)
```

Mẫu `post-fs-data.sh` (xóa cache dexopt/ART cũ):
```sh
#!/system/bin/sh
rm -rf /data/dalvik-cache/*
rm -rf /data/misc/apexdata/com.android.art/dalvik-cache/*
```

---

## 3. Xiaomi MIUI / HyperOS (1 / 2 / 3)

### Vị Trí File & Phân Biệt JAR
- **File cốt lõi cần patch:**
  - `/system/framework/framework.jar` -> Import payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (và tùy chọn **S5** tắt `FLAG_SECURE`)
- **File phụ của Xiaomi (KHÔNG đặt hook cốt lõi ở đây):**
  - `/system_ext/framework/miui-framework.jar`
  - `/system_ext/framework/miui-services.jar`
  - *Ngoại lệ duy nhất:* Chỉ đụng `miui-services.jar` nếu bạn cài **CorePatch tùy chọn cho MIUI/HyperOS** (`PackageManagerServiceImpl` -> `verifyIsolationViolation` và `canBeUpdate` trả `return-void`; xem [`CorePatch_VI.md`](CorePatch_VI.md)).

### Những Điểm Cần Chú Ý Trên HyperOS
1. **Multi-DEX & mức `--api` của `smali 3.0.8`:**
   - HyperOS 1 (Android 14), HyperOS 2 (Android 15) và HyperOS 3 (Android 16/17): khi assemble thủ công bằng `smali 3.0.8`, truyền `--api 34` (DEX 040, chạy mượt trên ART Android 14–17 và disassemble lại sạch bằng `baksmali 3.0.8`; `smali 3.0.8` sẽ báo lỗi nếu truyền `--api 36+`).
   - `framework.jar` của HyperOS thường có sẵn `classes.dex`–`classes5.dex` -> import payload Kaorios vào `classes6.dex`. Chỉ giải nén đúng file DEX chứa class mục tiêu.
2. **Ký số APK/JAR trên HyperOS:**
   - **Không** ký lại `framework.jar` / `services.jar` bằng testkey ngẫu nhiên; giữ cấu trúc ZIP gốc và để `classes*.dex` không nén (`ZIP_STORED`).
   - Với `SettingsProvider.apk` (`/system_ext/priv-app/SettingsProvider/SettingsProvider.apk`): app dùng chung `android.uid.system`. Nếu sửa `classes.dex` trong APK mà không tắt xác minh chữ ký (CorePatch) hoặc không có platform key của ROM thì `SettingsProvider` sẽ lỗi tải. Nếu không dùng tính năng HMA settings nâng cao, hãy giữ nguyên `SettingsProvider.apk` gốc (toàn bộ F1–F7 và S1–S4 vẫn chạy bình thường!).
3. **Kiểm tra domain SELinux của `SettingsProvider`:**
   ```bash
   adb shell ps -AZ | grep com.android.providers.settings
   ```
   HyperOS thường chạy dưới `u:r:system_app:s0`.
4. **Tắt `FLAG_SECURE` (S5) trên HyperOS:**
   - Patch `WindowState.isSecureLocked()Z` (bắt buộc) và tùy chọn thêm `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z` (xem [`Disable_Secure_Flag_VI.md`](Disable_Secure_Flag_VI.md)). Kiểm tra `adb shell settings get global kaorios_secure_flag_work` ra `1`.
5. **Bắt buộc dọn sạch ART / OAT:**
   - Xóa hoặc che qua module:
     - `/system/framework/arm64/boot-framework.*` và `/system/framework/arm/boot-framework.*`
     - `/system/framework/oat/arm64/services.*`
     - `/data/dalvik-cache/*` và `/data/misc/apexdata/com.android.art/dalvik-cache/*`

---

## 4. Samsung One UI (6 / 7 / 8)

### Vị Trí File & Cấu Trúc Multi-DEX
- **File cốt lõi cần patch:**
  - `/system/framework/framework.jar` -> Import payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (và tùy chọn **S5**)
- One UI 6 (Android 14), One UI 7 (Android 15), One UI 8 (Android 16/17): khi assemble thủ công bằng `smali 3.0.8`, dùng `--api 34` (DEX 040; `smali 3.0.8` không hỗ trợ `--api 36+`).
- `framework.jar` thường chia 5–6 DEX, `services.jar` chia 4–6 DEX. Không đoán vị trí file DEX; hãy quét toàn bộ `classes*.dex` hoặc dùng `script/kaorios_patcher.py`.

### Những Điểm Cần Chú Ý Trên One UI
1. **Thanh ghi cao (`> v15`) trong `ComputerEngine`:**
   - Samsung chèn logic Secure Folder, Dual Messenger và `SemPersona` vào `ComputerEngine.shouldFilterApplication*` và `generatePackageInfo`, đẩy số local lên trên `15`.
   - Luôn tính `locals_count + K > 15` và hạ thanh ghi bằng `move/from16`, `move-object/from16`, `move-wide/from16` (xem ví dụ chi tiết trong [`Patch_Guide_2.0.6.2_VI.md`](Patch_Guide_2.0.6.2_VI.md) và [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)).
2. **Lưu ý về Samsung Knox & Keystore2:**
   - Máy Samsung đã mở khóa bootloader sẽ nhảy cầu chì phần cứng Knox `0x1` vĩnh viễn. Patch phần mềm **không** reset được Knox `0x1` hay khôi phục Samsung Pay/Pass phần cứng.
   - Kaorios hook chuẩn vào AOSP `AndroidKeyStoreKeyPairGeneratorSpi` (**F5**) và `AndroidKeyStoreSpi` (**F6**). Khi TEE/StrongBox Samsung bị lỗi sau unlock, nên dùng chế độ **`GENERATE`** (**F5**) kết hợp bật **F4** (`hasSystemFeature`) để app không đòi StrongBox / `APP_ATTEST_KEY`.
3. **`FLAG_SECURE` (`WindowState` / `DisplayPolicy`) trên One UI:**
   - Patch `WindowState.isSecureLocked()Z` (**S5**), tùy chọn `WindowManagerService.isSecureLocked(WindowState)Z` và `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z`.
   - Một số bản One UI có kiểm tra phụ trong `DisplayPolicy` / `KnoxCustomManager` — **không** patch mò `DisplayPolicy`; hãy kiểm thử S5 trước và chỉ đối chiếu trực tiếp smali firmware thật nếu còn ứng dụng bị chặn chụp ảnh.
4. **Dọn sạch `.prof`, `.dm`, `.art`, `.odex`, `.vdex` (RẤT QUAN TRỌNG trên One UI):**
   - Samsung đính kèm các file profile ART (`framework.jar.prof`, `services.jar.prof`, `boot-framework.art`, `services.art`). Nếu giữ file `.prof` hoặc `.art` cũ khi thay `framework.jar`/`services.jar`, Zygote sẽ crash ngay lúc boot!
   - Xóa hoặc che toàn bộ:
     - `/system/framework/oat/` (gồm cả `.art`, `.odex`, `.vdex`)
     - `/system/framework/arm64/boot-framework.*` và `/system/framework/arm/boot-framework.*`
     - `/system/framework/*.prof` (nếu ghi trực tiếp vào phân vùng RW)
     - `/data/dalvik-cache/*` và `/data/misc/apexdata/com.android.art/dalvik-cache/*`
5. **Phân vùng `EROFS` & `SettingsProvider.apk`:**
   - Nên triển khai bằng module Magisk/KernelSU thay vì sửa trực tiếp `super.img`. `SettingsProvider.apk` thường nằm ở `/system/priv-app/SettingsProvider/SettingsProvider.apk`; đo domain thật qua `ps -AZ` trước khi áp SELinux.

---

## 5. OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)

### Vị Trí File & Phân Biệt JAR
- **File cốt lõi cần patch:**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (và tùy chọn **S5**)
- **File phụ của OPlus (giữ nguyên):**
  - `/system_ext/framework/oplus-framework.jar`
  - `/system_ext/framework/oplus-services.jar`
  - `/system_ext/framework/oplus-support-wrapper.jar`
- **Cấu trúc OTA:** Khi xả `payload.bin` của ROM OPlus, `framework.jar`/`services.jar` nằm trong `system.img`, còn `oplus-*.jar` và đôi khi `SettingsProvider.apk` nằm trong `system_ext.img` (hoặc `my_stock.img` / `my_system_ext.img`).

### Những Điểm Cần Chú Ý Trên ColorOS / OxygenOS / Realme UI
1. **`SystemProperties` (F3):**
   - ROM OPlus thường giữ cả `get(String)` lẫn `get(String, String)` gọi thẳng `native_get` (hoặc có wrapper `IOplusSystemPropertiesExt`). Kiểm tra `SystemProperties.smali`: nếu `get(String)` **không** gọi sang `get(String, String)`, cần patch **cả hai** method ngay trước mọi `return-object` (xem [`Template/SystemProperties.smali`](Template/SystemProperties.smali)).
2. **`ComputerEngine` (S2 / S3 / S4) có wrapper `IOplus*Ext`:**
   - Đặt **S2** (`shouldHideAppListForCaller`) ở ngay **đầu method** (trước các lời gọi `mComputerEngineExt`) để ẩn app nhất quán kể cả khi bật App Cloner.
   - Đặt **S3** (`filterInstallerPackageName`) trước **MỌI** `return-object` trong `getInstallerPackageName`, kể cả các nhánh trả sớm từ `IOplus*Ext` hoặc trả `null`.
3. **`SettingsProvider.apk` & SELinux:**
   - Thường ở `/system_ext/priv-app/SettingsProvider/SettingsProvider.apk` hoặc `/system/priv-app/SettingsProvider/SettingsProvider.apk`. Kiểm tra domain bằng `adb shell ps -AZ | grep com.android.providers.settings` (thường là `system_app`).
4. **Dọn cache ART/OAT:**
   - Xóa/che `/system/framework/oat/`, `/system/framework/arm*/boot-framework.*`, `/data/dalvik-cache/*` và `/data/misc/apexdata/com.android.art/dalvik-cache/*`.

---

## 6. vivo OriginOS / FuntouchOS

### Vị Trí File & Phân Biệt JAR
- **File cốt lõi cần patch:**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (và tùy chọn **S5**)
- **File phụ của vivo (giữ nguyên):**
  - `/system/framework/vivo-framework.jar`
  - `/system/framework/vivo-services.jar`

### Những Điểm Cần Chú Ý Trên OriginOS / FuntouchOS
1. **Các nhánh `IVivo*` trong `Instrumentation` & `ComputerEngine`:**
   - vivo thường chèn các lời gọi `IVivo*` làm phát sinh thêm nhánh `return-object` sớm trong `Instrumentation.newApplication(...)` và `ComputerEngine.getInstallerPackageName(...)`.
   - Đảm bảo chèn **F1** (`initContext`), **S3** (`filterInstallerPackageName`), và **S4** (`spoofFakeGAppsPackageInfo`) trước **tất cả** các lệnh `return-object` trong method, không chỉ lệnh cuối.
2. **Keystore2 (F5 & F6):**
   - Dùng chuẩn AOSP `AndroidKeyStoreKeyPairGeneratorSpi` và `AndroidKeyStoreSpi` trong `framework.jar`. Luôn dùng overload 3 tham số `CertificateChainIfNeeded` và thêm ủy quyền `engineGetCertificate` theo [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali).
3. **Kiểm tra SELinux nghiêm ngặt trên OriginOS:**
   - vivo hay tùy biến `seapp_contexts` và siết `service_manager`. Trước khi dùng `SettingsProvider.apk` (**SP1**), luôn chạy:
     ```bash
     adb shell getenforce
     adb shell ps -AZ | grep com.android.providers.settings
     ```
   - Điền đúng domain đo được vào file `.cil`/`.te` và kiểm tra không có log từ chối (`adb shell dmesg | grep -i "avc:.*kaorios"`) ở chế độ `Enforcing`.
4. **Dọn cache & triển khai:**
   - Dùng module Magisk/KernelSU che `/system/framework/oat` bằng `.replace` và dọn `/data/dalvik-cache/*` + `/data/misc/apexdata/com.android.art/dalvik-cache/*` trong `post-fs-data.sh`.

---

## 7. Google Pixel / Stock AOSP / Custom AOSP (LineageOS, Evolution-X, crDroid)

### Nền Tảng Chuẩn Android 13–17
- Bố cục sạch nhất: `/system/framework/framework.jar` (**F1–F7** + payload `classesN.dex`) và `/system/framework/services.jar` (**S1–S4** + tùy chọn **S5**).
- Toàn bộ 11 file mẫu trong [`Template/`](Template/) bám sát smali AOSP Android 14–17.

### Cảnh Báo Xung Đột Trên Custom AOSP (Evolution-X, crDroid, VoltageOS)
> [!WARNING]
> Nhiều bản Custom AOSP **đã tích hợp sẵn** PIF / TrickyStore / HideAppList (ví dụ `PropImitationHooks`, `KeyboxImitationHooks`, `AxSandboxService`, `HideAppListCache`).
> - Trước khi patch, kiểm tra `Instrumentation.smali`, `AndroidKeyStoreSpi.smali`, `ComputerEngine.smali` xem đã có hook spoof khác chưa.
> - Không chồng chéo 2 bộ hook Keystore/PIF trong cùng một method; hãy dùng bản build sạch hoặc tắt bộ hook cũ trong source trước khi cài Kaorios.

### Android 17 (API 37) `plat_sepolicy.cil` & `service_contexts`
- **Chế độ A (Build ROM từ source — khuyên dùng):**
  - Chép `deployment/android17-sepolicy/kaorios_advanced_policy.te` vào `device/<vendor>/<device>/sepolicy/private/`
  - Thêm dòng trong `deployment/android17-sepolicy/service_contexts.fragment` (`kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0`) vào `service_contexts`
  - Build lại bằng `m selinux_policy`.
- **Chế độ B (ROM dựng sẵn trên Pixel / AOSP qua Magisk/KernelSU):**
  - Bind-mount file `/system/etc/selinux/plat_service_contexts` đã thêm dòng `kaorios_advanced_policy` trong `post-fs-data.sh` trước khi `servicemanager` khởi chạy.
  - Nạp thêm luật CIL/TE tương ứng qua `magiskpolicy --live` (hoặc chèn `deployment/android17-sepolicy/kaorios_advanced_policy.cil` vào `plat_sepolicy.cil`).
  - Nhắc lại: chỉ chạy `magiskpolicy --live` **không** cập nhật được `service_contexts` tĩnh!

### Triển Khai Native PIF Trên Pixel / AOSP
```bash
# Thư mục ưu tiên: /system_ext/lib64/ (dự phòng /system/lib64/)
adb push libkaoripif-arm64-v8a.so /system_ext/lib64/libkaoripif.so
adb shell chown root:root /system_ext/lib64/libkaoripif.so
adb shell chmod 0644 /system_ext/lib64/libkaoripif.so
adb shell restorecon -v /system_ext/lib64/libkaoripif.so

# Tùy chọn 32-bit (chỉ trên ROM hỗ trợ 32/64; Pixel 7 trở lên thuần 64-bit):
# adb push libkaoripif-armeabi-v7a.so /system_ext/lib/libkaoripif.so

# Tùy chọn thư viện chẩn đoán chỉ đọc:
adb push libkaoripif_diagnostic-arm64-v8a.so /system/lib64/libkaoripif_diagnostic.so
adb shell chown root:root /system/lib64/libkaoripif_diagnostic.so
adb shell chmod 0644 /system/lib64/libkaoripif_diagnostic.so
adb shell restorecon -v /system/lib64/libkaoripif_diagnostic.so
```

---

## 8. Xử Lý Lỗi & Cứu Hộ Bootloop Khẩn Cấp

### Bước 1 — Bắt Log Crash Lúc Khởi Động Qua ADB
Khi máy bị treo logo, cắm cáp USB và bắt log lỗi ngay:
```bash
adb logcat -b crash -b main *:E | grep -E "AndroidRuntime|Zygote|SystemServer|Kaorios|VerifyError|NoSuchMethodError|ClassNotFoundException|avc:"
```

| Dấu Hiệu Lỗi Trong `logcat` | Nguyên Nhân | Cách Khắc Phục |
|---|---|---|
| `ClassNotFoundException: android.security.kaorios.KaoriosHook` | Thiếu payload `classesN.dex`, nhảy cóc số thứ tự DEX, hoặc ART vẫn chạy `boot-framework.vdex`/`.art` cũ | Kiểm tra số thứ tự `classes*.dex` liên tiếp trong `framework.jar` và xóa sạch `/system/framework/oat/`, `boot-framework.*`, `/data/dalvik-cache/*` |
| `NoSuchMethodError: ...KaoriosHook;->...` | Sai chữ ký method hoặc lệch bản payload (ví dụ gọi kiểu `Z` cũ ở F7 thay vì `String`, hoặc gọi nhầm class obfuscated) | Đối chiếu từng `invoke-*` với [`Patch_Guide_2.0.6.2_VI.md`](Patch_Guide_2.0.6.2_VI.md) và chạy `kaorios_patcher.py verify` |
| `VerifyError` tại `ComputerEngine` / `ActivityThread` / `NameValueCache` | Thanh ghi vượt quá `v15`, ghi đè thanh ghi đang dùng, hoặc chèn lệnh giữa `invoke-*` và `move-result*` | Tính lại `.locals` + `pK`, hạ thanh ghi `> v15` bằng `move*/from16` hoặc dùng `script/kaorios_patcher.py` trên ROM gốc |
| `SettingsProvider` crash / lỗi chữ ký APK | `classes*.dex` trong `SettingsProvider.apk` bị nén hoặc mất chữ ký platform | Giữ `classes*.dex` không nén (`ZIP_STORED`), `zipalign` 4-byte, giữ platform key (hoặc tạm bỏ SP1) |
| `Service kaorios_advanced_policy: not found` + `avc: denied` | Thiếu dòng trong `service_contexts` tĩnh hoặc sai domain SELinux của `SettingsProvider` | Đo lại `adb shell ps -AZ \| grep com.android.providers.settings` và cập nhật đúng domain vào CIL/TE dưới `Enforcing` |
| DroidGuard / Play Store văng sau khi thêm `libkaoripif.so` | Lệch ABI hoặc cấu trúc `prop_area` kernel/Bionic đặc thù | Tắt ngay bằng công tắc khẩn cấp: `adb shell setprop persist.sys.projectryu.pif_native 0` (lùi về Java F3) |

### Bước 2 — Cứu Bootloop Nhanh (Không Mất Dữ Liệu)
1. **Chế độ an toàn Magisk (ADB):**
   ```bash
   adb wait-for-device shell magisk --remove-modules
   ```
   *(Hoặc giữ phím Giảm Âm Lượng khi khởi động nếu đã bật Safe Mode.)*
2. **Chế độ an toàn KernelSU:** Nhấn phím Giảm Âm Lượng 3 lần liên tiếp lúc máy vừa khởi động (tự tắt toàn bộ module KernelSU).
3. **Recovery (TWRP / OrangeFox):**
   - Nếu cài qua module: xóa thư mục `/data/adb/modules/<ten-module-kaorios>/` rồi khởi động lại.
   - Nếu ghi trực tiếp vào `/system`: chép đè lại `framework.jar` và `services.jar` stock đã sao lưu, kiểm tra `sha256sum`, `chmod 0644`, xóa `/data/dalvik-cache/*` và `/data/misc/apexdata/com.android.art/dalvik-cache/*`, sau đó khởi động lại.
4. **Công tắc tắt khẩn cấp Native PIF (không cần khởi động lại máy):**
   ```bash
   adb shell setprop persist.sys.projectryu.pif_native 0
   adb shell am force-stop com.google.android.gms
   adb shell am force-stop com.android.vending
   ```
