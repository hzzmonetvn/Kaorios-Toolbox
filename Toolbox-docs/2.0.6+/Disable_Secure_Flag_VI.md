# Hướng Dẫn Tắt `FLAG_SECURE` (v2.0.6.2 — ROM Gốc Android 13–17)

Cho phép chụp ảnh màn hình và quay màn hình trong các ứng dụng bật cờ bảo mật `FLAG_SECURE` khi bật công tắc **Disable `FLAG_SECURE`** (`kaorios_secure_flag = 1` trong `Settings.Global`) ở ứng dụng Kaorios Toolbox.

> [!NOTE]
> - Yêu cầu đã import payload `classes.dex` vào `framework.jar` và patch **S1** (`SystemServer`) theo [`Patch_Guide_2.0.6.2_VI.md`](Patch_Guide_2.0.6.2_VI.md).
> - Luôn bắt đầu từ file `services.jar` **stock sạch**.
> - **Bản tiếng Anh:** [`Disable_Secure_Flag.md`](Disable_Secure_Flag.md).

---

## Cách 1: Patch Tự Động (Khuyên Dùng)

```bash
python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-secure-flag

python3 script/kaorios_patcher.py verify \
  --services out/services.jar \
  --expect-secure-flag
```

---

## Cách 2: Patch Smali Thủ Công (`services.jar`)

### 1) Hook Chính Bắt Buộc — `WindowState`

- **File mẫu đối chiếu:** [`Template/WindowState.smali`](Template/WindowState.smali)
- **Class:**
  ```smali
  Lcom/android/server/wm/WindowState;
  ```
- **Method:**
  ```smali
  isSecureLocked()Z
  ```
- **Vị trí chèn:** Đầu method — ngay bên dưới `.registers X` / `.locals X` (và các dòng `.param` / `.annotation` nếu có).
- **Thêm:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_passthrough_0
  const/4 v0, 0x0
  return v0

  :kaorios_secflag_passthrough_0
  ```

#### Lưu ý thanh ghi
- Đảm bảo `.locals >= 1` (hoặc `.registers >= 2`, vì `p0 = this` chiếm 1 slot).
- Ví dụ cụ thể: nếu `isSecureLocked()Z` gốc dùng `.registers 4` (`v0..v2` là local, `p0 = v3`) thì `v0` đã sẵn có ở đầu method — **không cần** tăng `.registers`!
- Nếu ROM gốc dùng `.registers 1` (0 local, `p0 = v0`), đổi thành **`.registers 2`** (để `v0` làm local, `p0` chuyển sang `v1`; nhớ đổi mọi tham chiếu `v0` cũ của `this` sang `p0` trước).

---

### 2) Hook Phụ Tùy Chọn — `WindowManagerService`

Nếu ROM của bạn có thêm method `isSecureLocked(WindowState)` trong `WindowManagerService`:

- **Class:**
  ```smali
  Lcom/android/server/wm/WindowManagerService;
  ```
- **Method:**
  ```smali
  isSecureLocked(Lcom/android/server/wm/WindowState;)Z
  ```
- **Vị trí chèn:** Đầu method (đảm bảo `.locals >= 1`, tức `.registers >= 3`).
- **Thêm:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_passthrough_0
  const/4 v0, 0x0
  return v0

  :kaorios_secflag_passthrough_0
  ```

---

### 3) Hook Phụ Cho Chính Sách Chụp Màn Hình — `DevicePolicyCacheImpl`

Hữu ích trên HyperOS, One UI hoặc hồ sơ công việc (Work Profile) nơi Device Policy chặn chụp màn hình tách biệt với cờ cửa sổ:

- **Class:**
  ```smali
  Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
  ```
- **Method:**
  ```smali
  isScreenCaptureAllowed(I)Z
  ```
- **Vị trí chèn:** Đầu method (đảm bảo `.locals >= 1`, tức `.registers >= 3`).
- **Thêm** *(chú ý trả về **`0x1` (`true`)** = cho phép chụp!)*:
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_capture_0
  const/4 v0, 0x1
  return v0

  :kaorios_secflag_capture_0
  ```

---

### 4) Hook Tùy Chọn Cho ROM Đời Cũ / OEM — `WindowStateAnimator`

Chỉ áp dụng nếu ROM OEM có method `setSecureLocked(Z)V` trong `WindowStateAnimator` (hoặc `WindowState`):

- **Class:**
  ```smali
  Lcom/android/server/wm/WindowStateAnimator;
  ```
- **Method:**
  ```smali
  setSecureLocked(Z)V
  ```
- **Vị trí chèn:** Đầu method (đảm bảo `.locals >= 1`, tức `.registers >= 3`).
- **Thêm:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_set_0
  return-void

  :kaorios_secflag_set_0
  ```

> [!WARNING]
> **Không** patch mò `WindowManagerService.captureDisplay` hoặc Samsung `DisplayPolicy` theo thanh ghi chép từ bản Android cũ — hãy đọc đúng smali firmware thực tế của máy nếu vẫn có ứng dụng bị chặn quay màn hình.

---

## Cơ Chế Hoạt Động & Kiểm Tra Trên Thiết Bị

- `KaoriosHook.isSecureFlag()` đọc key `Settings.Global` tên `kaorios_secure_flag` (`1` = tắt `FLAG_SECURE`, `0` = mặc định).
- Khi chạy lần đầu trong `system_server` (UID `< 10000`), hàm tự ghi cờ `kaorios_secure_flag_work = 1` để app Kaorios Toolbox nhận diện hook đã hoạt động.
- Sau khi chép `services.jar`, dọn cache ART/oat và khởi động lại máy:

```bash
# Kiểm tra hook đã chạy trong system_server (mong đợi: 1)
adb shell settings get global kaorios_secure_flag_work

# Bật trực tiếp qua ADB (hoặc bật công tắc trong Kaorios Toolbox)
adb shell settings put global kaorios_secure_flag 1
```
