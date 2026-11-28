# Kaorios Toolbox v2.0.6.2 Reference Template — S5 (Optional)
# Target Archive : services.jar
# Target Class   : Lcom/android/server/wm/WindowState;
# Hook Purpose   : Disable FLAG_SECURE (allow screenshots & screen recording when enabled)
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z
#
# Notes:
# - Requires Kaorios payload DEX imported in framework.jar and S1 hooked in SystemServer.
# - Controlled live via Settings.Global key "kaorios_secure_flag" (1 = disable FLAG_SECURE).
# - Inside system_server (UID < 10000), KaoriosHook.isSecureFlag() automatically marks
#   sticky "kaorios_secure_flag_work = 1" once so Kaorios Toolbox detects the live hook.
# - Ensure .locals >= 1 (or .registers >= 2 for instance method with p0 only).

.class public Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.method public isSecureLocked()Z
    .locals 2

    #Start Kaorios
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z

    move-result v0

    if-eqz v0, :kaorios_secflag_passthrough_0

    const/4 v0, 0x0

    return v0

    :kaorios_secflag_passthrough_0
    #End Kaorios

    # Stock FLAG_SECURE check continues below (abbreviated reference):
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_not_secure

    const/4 v1, 0x1

    return v1

    :cond_not_secure
    const/4 v1, 0x0

    return v1
.end method
