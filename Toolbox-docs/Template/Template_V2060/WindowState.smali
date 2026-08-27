# ==============================================================================
# MẪU VÁ WindowState.smali / WindowStateAnimator.smali (FLAG_SECURE Bypass)
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. isSecureLocked()Z trong WindowState hoặc WindowStateAnimator
# ------------------------------------------------------------------------------
.method isSecureLocked()Z
    .registers 3

    # [Kaorios Hook] Nếu bật tính năng bỏ chặn bảo mật, luôn trả về false (0x0)
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios_sec

    const/4 v0, 0x0

    return v0

    :cond_kaorios_sec
    # ... logic gốc của WindowState tiếp tục ...


# ------------------------------------------------------------------------------
# 2. setSecureLocked(Z)V (Tùy chọn)
# ------------------------------------------------------------------------------
.method setSecureLocked(Z)V
    .registers 3

    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :cond_kaorios_set_sec

    return-void

    :cond_kaorios_set_sec
    # ... logic gốc tiếp tục ...
