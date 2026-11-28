# Kaorios Toolbox v2.0.6.2 Reference Template — SP1 (Optional)
# Target Archive : SettingsProvider.apk
# Target Class   : Lcom/android/providers/settings/SettingsProvider;
# Hook Purpose   : Per-app Settings interception via AdvancedPolicyService Binder IPC
# Callee (Kept)  : Landroid/security/kaorios/settings/AdvancedPolicyService;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
#
# Notes:
# - Optional: only required if you use HMA per-app settingsTemplates / settingsPresets or
#   Kaorios Toolbox Advanced Features (kaorios_advanced_features).
# - Requires matching SELinux rules for service "kaorios_advanced_policy" under Enforcing mode
#   (see deployment/android17-sepolicy/ and Patch_Guide_2.0.6.2.md Section 6.2).
# - Params: p0 = this, p1 = String method (e.g. "GET_global"), p2 = String arg (setting name),
#   p3 = Bundle extras.
# - If effective(p2) > 15 on your ROM, copy p1 -> v0 and p2 -> v1 with move-object/from16
#   before invoking filterSettingsCall.
# - When repacking SettingsProvider.apk: keep classes*.dex uncompressed (ZIP_STORED), 4-byte
#   zipaligned, and preserve platform signature (shared android.uid.system).

.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    #Start Kaorios
    invoke-static {p1, p2}, Landroid/security/kaorios/settings/AdvancedPolicyService;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :kaorios_adv_settings_passthrough_0

    return-object v0

    :kaorios_adv_settings_passthrough_0
    #End Kaorios

    # Stock SettingsProvider.call dispatch continues below (abbreviated reference):
    const/4 v0, 0x0

    return-object v0
.end method
