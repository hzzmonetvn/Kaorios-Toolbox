# Kaorios Toolbox v2.0.6.2 Reference Template — S2, S3, S4
# Target Archive : services.jar
# Target Class   : Lcom/android/server/pm/ComputerEngine;
# Hook Purposes  :
#   S2 — Hide App List / Custom ROM Hide / HMA Policy:
#        Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
#   S3 — Installation Source Spoofing:
#        Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
#   S4 — FakeGApps / microG Signature Spoofing:
#        Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
#
# Notes:
# - S2: Hook all concrete shouldFilterApplication* overloads present in ComputerEngine
#   (or AppsFilterBase if your ROM delegates filtering there). Both the 3-arg and 7-arg
#   Android 13-17 overloads are shown below, including > v15 register lowering in the 7-arg overload.
# - S3: Hook BEFORE EVERY return-object in getInstallerPackageName (including null returns,
#   because INSTALL_SOURCE_USER can spoof a null sideloaded installer to "com.android.vending").
#   Passing userId = -1 tells KaoriosHook to derive userId from callingUid automatically.
# - S4: p2, p3 is a 64-bit wide long (J) occupying TWO consecutive registers.

.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;

# ==============================================================================
# S2 (3-arg overload) — Hide App List / HMA Policy
# Params: p0=this, p1=targetPs, p2=callingUid, p3=userId
# ==============================================================================
.method public shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 3

    #Start Kaorios
    if-eqz p1, :kaorios_hideapp_passthrough_0

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :kaorios_hideapp_passthrough_0

    const/4 v0, 0x1

    return v0

    :kaorios_hideapp_passthrough_0
    #End Kaorios

    # Stock visibility check continues below (abbreviated reference):
    const/4 v0, 0x0

    return v0
.end method

# ==============================================================================
# S2 (7-arg Android 14-17 overload with > v15 register lowering)
# Params: p0=this, p1=targetPs, p2=callingUid, p3=ComponentName, p4=flags,
#         p5=userId, p6=filterUninstalled, p7=checkCrossUser
# With .locals 12: p0=v12, p1=v13, p2=v14, p3=v15, p4=v16, p5=v17 (> v15!)
# ==============================================================================
.method public shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 12

    #Start Kaorios
    if-eqz p1, :kaorios_hideapp_passthrough_1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # p5 (userId) has effective index 12 + 5 = 17 (> 15); lower to v2 before invoke-static.
    move/from16 v2, p5

    invoke-static {p2, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :kaorios_hideapp_passthrough_1

    const/4 v0, 0x1

    return v0

    :kaorios_hideapp_passthrough_1
    #End Kaorios

    # Stock visibility check continues below (abbreviated reference):
    const/4 v0, 0x0

    return v0
.end method

# ==============================================================================
# S3 — Installation Source Spoofing
# Params: p0=this, p1=targetPackageName, p2=userId
# ==============================================================================
.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    # Stock lookup places real installer (or null) in v0 (abbreviated reference):
    const/4 v0, 0x0

    #Start Kaorios
    # Ensure .locals >= 5. Copy p1 -> v3 and realValue (v0) -> v4 safely before setting v0..v2.
    move-object/from16 v3, p1

    move-object/from16 v4, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    #End Kaorios

    return-object v0
.end method

# ==============================================================================
# S4 — FakeGApps / microG Signature Spoofing
# Params: p0=this, p1=PackageStateInternal, p2+p3=long flags (64-bit wide), p4=userId
# ==============================================================================
.method public generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .locals 4

    # Stock PackageInfo construction places result in v0 (abbreviated reference):
    const/4 v0, 0x0

    #Start Kaorios
    # With .locals 4: v0=v0, p2=v6, p3=v7 (all <= 15).
    # If effective(p3) > 15 or effective(vRet) > 15, lower with:
    #   move-object/from16 v0, vRet
    #   move-wide/from16 v1, p2
    #   invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
    invoke-static {v0, p2, p3}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;

    move-result-object v0
    #End Kaorios

    return-object v0
.end method
