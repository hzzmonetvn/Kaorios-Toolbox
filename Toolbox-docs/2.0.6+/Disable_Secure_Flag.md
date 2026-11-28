# Disable `FLAG_SECURE` Guide (v2.0.6.2 — Clean Stock Android 13–17)

Allows screenshots and screen recording inside `FLAG_SECURE` windows when **Disable `FLAG_SECURE`** (`kaorios_secure_flag = 1` in `Settings.Global`) is turned on inside Kaorios Toolbox.

> [!NOTE]
> - Requires Kaorios payload `classes.dex` imported into `framework.jar` and **S1** (`SystemServer`) hooked from [`Patch_Guide_2.0.6.2.md`](Patch_Guide_2.0.6.2.md).
> - Always start from a **clean stock** `services.jar`.
> - **Vietnamese version:** [`Disable_Secure_Flag_VI.md`](Disable_Secure_Flag_VI.md).

---

## Option 1: Automated Patcher (Recommended)

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

## Option 2: Manual Smali Patching (`services.jar`)

### 1) Primary Required Hook — `WindowState`

- **Template:** [`Template/WindowState.smali`](Template/WindowState.smali)
- **Class:**
  ```smali
  Lcom/android/server/wm/WindowState;
  ```
- **Method:**
  ```smali
  isSecureLocked()Z
  ```
- **Placement:** Method entry — immediately below `.registers X` / `.locals X` (and any `.param` / `.annotation`).
- **Add:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_passthrough_0
  const/4 v0, 0x0
  return v0

  :kaorios_secflag_passthrough_0
  ```

#### Register Note
- Ensure `.locals >= 1` (or `.registers >= 2`, since `p0 = this` uses 1 register slot).
- Concrete example: if stock `isSecureLocked()Z` has `.registers 4` (`v0..v2` locals, `p0 = v3`), `v0` is already free at method entry — **no** register bump is needed!
- If stock has `.registers 1` (0 locals, `p0 = v0`), increase to **`.registers 2`** (so `v0` is your local and `p0` becomes `v1`; convert any raw `v0` reference to `p0` first).

---

### 2) Optional Secondary Hook — `WindowManagerService`

On ROMs that also expose `isSecureLocked(WindowState)` in `WindowManagerService`:

- **Class:**
  ```smali
  Lcom/android/server/wm/WindowManagerService;
  ```
- **Method:**
  ```smali
  isSecureLocked(Lcom/android/server/wm/WindowState;)Z
  ```
- **Placement:** Method entry (ensure `.locals >= 1`, i.e., `.registers >= 3`).
- **Add:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_passthrough_0
  const/4 v0, 0x0
  return v0

  :kaorios_secflag_passthrough_0
  ```

---

### 3) Optional Enterprise / DPC Screen-Capture Hook — `DevicePolicyCacheImpl`

Useful on HyperOS, One UI, or work-profile setups where Device Policy blocks screen capture separately from window flags:

- **Class:**
  ```smali
  Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
  ```
- **Method:**
  ```smali
  isScreenCaptureAllowed(I)Z
  ```
- **Placement:** Method entry (ensure `.locals >= 1`, i.e., `.registers >= 3`).
- **Add** *(note: returns **`0x1` (`true`)** = capture allowed!)*:
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_capture_0
  const/4 v0, 0x1
  return v0

  :kaorios_secflag_capture_0
  ```

---

### 4) Optional Legacy / OEM Hook — `WindowStateAnimator`

Only if your OEM ROM exposes `setSecureLocked(Z)V` on `WindowStateAnimator` (or `WindowState`):

- **Class:**
  ```smali
  Lcom/android/server/wm/WindowStateAnimator;
  ```
- **Method:**
  ```smali
  setSecureLocked(Z)V
  ```
- **Placement:** Method entry (ensure `.locals >= 1`, i.e., `.registers >= 3`).
- **Add:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
  move-result v0

  if-eqz v0, :kaorios_secflag_set_0
  return-void

  :kaorios_secflag_set_0
  ```

> [!WARNING]
> Do **not** blindly patch `WindowManagerService.captureDisplay` or Samsung `DisplayPolicy` using guessed registers from older Android versions — inspect your exact firmware's smali first if a specific OEM screen-recording path remains blocked.

---

## How It Works & On-Device Verification

- `KaoriosHook.isSecureFlag()` checks `Settings.Global` key `kaorios_secure_flag` (`1` = disable `FLAG_SECURE`, `0` = stock behavior).
- On first call inside `system_server` (UID `< 10000`), `KaoriosHook.isSecureFlag()` writes sticky `kaorios_secure_flag_work = 1` so the Kaorios Toolbox app confirms the hook is live.
- After pushing the patched `services.jar`, clearing ART/oat caches, and rebooting:

```bash
# Confirm hook is active inside system_server (expected: 1)
adb shell settings get global kaorios_secure_flag_work

# Toggle live (or use the switch inside Kaorios Toolbox)
adb shell settings put global kaorios_secure_flag 1
```
