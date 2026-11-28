# Hướng Dẫn CorePatch — Tùy Chọn Bỏ Qua Kiểm Tra Chữ Ký & Hạ Cấp APK (Android 13–17)

Các bản patch smali thuần tùy chọn cho `framework.jar` và `services.jar` **stock sạch** Android 13–17 (kèm mục phụ cho `miui-services.jar` trên Xiaomi/HyperOS) giúp cho phép hạ cấp (downgrade) và cài APK khác chữ ký. CorePatch **không** cần gọi hàm nào từ payload DEX Kaorios.

> [!WARNING]
> Bỏ qua xác minh chữ ký và hạ cấp APK sẽ làm giảm cơ chế bảo vệ toàn vẹn khi cập nhật ứng dụng trên toàn hệ điều hành. **Chỉ bật CorePatch khi bạn thực sự cần** (ví dụ chỉnh sửa APK hệ thống hoặc cài đè bản mod/hạ cấp có chủ đích).
> - **Bản tiếng Anh:** [`CorePatch.md`](CorePatch.md).

---

## Cách 1: Patch Tự Động (`--enable-corepatch`)

```bash
python3 script/kaorios_patcher.py patch-framework \
  --input stock/framework.jar \
  --payload dist/classes.dex \
  --output out/framework.jar \
  --enable-corepatch

python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-corepatch

python3 script/kaorios_patcher.py verify \
  --framework out/framework.jar \
  --services out/services.jar \
  --payload dist/classes.dex \
  --expect-corepatch
```

---

## Cách 2: Patch Smali Thủ Công

### Phần A: `framework.jar`

#### 1) `SigningDetails` — Cho Phép Capability & Ancestor

- **Class:**
  ```smali
  Landroid/content/pm/SigningDetails;
  ```
- **Các Method mục tiêu (thay toàn bộ thân của mọi overload có trong file):**
  1. `checkCapability(Landroid/content/pm/SigningDetails;I)Z`
  2. `checkCapability(Ljava/lang/String;I)Z`
  3. `hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z`
- **Thay toàn bộ thân method bằng:**
  ```smali
  .locals 1

  const/4 v0, 0x1

  return v0
  ```

##### Lưu ý thanh ghi
- Dùng `.locals 1` áp dụng an toàn cho mọi overload không phụ thuộc số lượng tham số (`v0` luôn là thanh ghi `0`, nằm gọn trong giới hạn 4-bit của `const/4`).
- Nếu công cụ của bạn dùng `.registers`, tính `registers = 1 + số_slot_tham_số` (ví dụ `checkCapability(SigningDetails, int)Z` không static có `p0`, `p1`, `p2` = `3` tham số -> **`.registers 4`**).

---

#### 2) `ApkSignatureVerifier` — Giảm Yêu Cầu Phiên Bản Chữ Ký Tối Thiểu

- **Class:**
  ```smali
  Landroid/util/apk/ApkSignatureVerifier;
  ```
- **Method:**
  ```smali
  getMinimumSignatureSchemeVersionForTargetSdk(I)I
  ```
- **Thay toàn bộ thân method bằng:**
  ```smali
  .locals 1

  const/4 v0, 0x1

  return v0
  ```

##### Lưu ý thanh ghi
- Method `static` có 1 tham số `int` (`p0`): `.locals 1` tương đương **`.registers 2`**.
- Trả về `0x1` (chuẩn V1 JAR) cho phép cài APK ký V1 trên Android 13–17 vốn mặc định đòi V2/V3.

> [!TIP]
> **Cài APK chưa ký / sửa digest (nâng cao tùy chọn):** Nếu bạn cần bỏ qua cả lỗi lệch digest V2/V3 ngoài phạm vi `--enable-corepatch`, hãy mở trực tiếp `ApkSignatureSchemeV2Verifier.smali`, `ApkSignatureSchemeV3Verifier.smali` và `StrictJarVerifier.smali` (`verifyMessageDigest([B[B)Z` -> trả `0x1`) trên đúng bản ROM của bạn, thay `move-result vX` sau `MessageDigest;->isEqual([B[B)Z` bằng `const/4 vX, 0x1` theo **đúng** thanh ghi `vX` thực tế.

---

### Phần B: `services.jar`

#### 3) `PackageManagerServiceUtils` — Bỏ Qua Chặn Hạ Cấp & Lệch Chữ Ký

- **Class:**
  ```smali
  Lcom/android/server/pm/PackageManagerServiceUtils;
  ```
- **Method 1 (chữ ký có thể thay đổi nhẹ giữa Android 13–17 — áp dụng cho mọi `checkDowngrade(...)V`):**
  ```smali
  checkDowngrade(...)V
  ```
- **Thay toàn bộ thân method bằng:**
  ```smali
  .locals 0

  return-void
  ```

- **Method 2:**
  ```smali
  compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
  ```
- **Thay toàn bộ thân method bằng** (`0x0` = `PackageManager.SIGNATURE_MATCH`):
  ```smali
  .locals 1

  const/4 v0, 0x0

  return v0
  ```

##### Lưu ý thanh ghi
- `checkDowngrade(...)V` dùng `.locals 0` nên tương thích mọi biến thể tham số từ Android 13 đến Android 17.
- `compareSignatures([Signature, [Signature)I` là hàm `static` nhận 2 tham số (`p0`, `p1`): `.locals 1` tương đương **`.registers 3`**.
- Tùy chọn thêm trên một số ROM: `matchSignaturesCompat(...)Z` -> trả `0x1`, và `KeySetManagerService.shouldCheckUpgradeKeySetLocked(...)Z` -> trả `0x0`.

---

### Phần C: Tùy Chọn Riêng Xiaomi MIUI / HyperOS (`miui-services.jar`)

Trên ROM Xiaomi MIUI / HyperOS có file `/system_ext/framework/miui-services.jar` bổ sung lớp chặn cài đặt riêng trong `PackageManagerServiceImpl`:

- **Class:** `Lcom/android/server/pm/PackageManagerServiceImpl;` (trong `miui-services.jar`)
- **Các Method:**
  - `verifyIsolationViolation(...)V` -> thay thân bằng `.locals 0` + `return-void`
  - `canBeUpdate(...)V` -> thay thân bằng `.locals 0` + `return-void`

*(Chỉ áp dụng cho ROM Xiaomi/HyperOS; bỏ qua hoàn toàn trên Pixel, One UI, ColorOS/OPlus, OriginOS và AOSP.)*

---

## Kiểm Chứng

1. **Kiểm chứng trên máy tính:**
   ```bash
   python3 script/kaorios_patcher.py verify \
     --framework out/framework.jar \
     --services out/services.jar \
     --payload dist/classes.dex \
     --expect-corepatch
   ```
2. **Kiểm chứng trên thiết bị thật:** Sau khi triển khai JAR đã patch, dọn sạch cache ART/oat và khởi động lại máy, kiểm thử cài hạ cấp có kiểm soát (`adb install -r -d <file-apk-cu-hon>`).
