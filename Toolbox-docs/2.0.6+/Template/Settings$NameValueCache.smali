# Kaorios Toolbox v2.0.6.2 Reference Template — F7
# Target Archive : framework.jar
# Target Class   : Landroid/provider/Settings$NameValueCache;
# Hook Purpose   : Hide Developer Options, ADB, Wireless ADB & Accessibility settings per app
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
#
# Register Note:
# - Parameters: p0 = this, p1 = ContentResolver, p2 = String name, p3 = int userId.
# - Real Android 13-17 NameValueCache.getStringForUser often has 12-20 locals, pushing p2/p3
#   above v15. This template demonstrates safe lowering with move*/from16 into v0, v1, v2.
# - Alternatively, invoke-static/range {p1 .. p3} works directly without moves because p1..p3
#   are contiguous.
# - IMPORTANT: Return type is Ljava/lang/String; (NOT legacy boolean Z).
#   Returns spoofed String ("0" or "") when hidden, or null to fall through to stock logic.

.class public Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14

    #Start Kaorios
    # With .locals 14: p0 = v14, p1 = v15, p2 = v16 (> v15), p3 = v17 (> v15).
    # Lower into v0..v2 before calling non-range invoke-static.
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :kaorios_nvc_passthrough_0

    return-object v0

    :kaorios_nvc_passthrough_0
    #End Kaorios

    # Stock getStringForUser cache/provider lookup continues below (abbreviated reference):
    const/4 v0, 0x0

    return-object v0
.end method
