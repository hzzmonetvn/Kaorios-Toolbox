# Kaorios Toolbox v2.0.6.2 Reference Template — F4
# Target Archive : framework.jar
# Target Class   : Landroid/app/ApplicationPackageManager;
# Hook Purpose   : Hide hardware attestation features (StrongBox / APP_ATTEST_KEY / Device ID)
#                  only for active TrickyStore targets
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
#
# Notes:
# - Place at method entry right below .registers / .locals (and any .param / .annotation).
# - Ensure .locals >= 2 (or enough locals so v0 is available).
# - If effective(p2) > 15, lower p1 -> v0 (move-object/from16) and p2 -> v1 (move/from16)
#   and call invoke-static {v0, v1}.

.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;

.field private final mUseSystemFeaturesCache:Z

.field private static final mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .registers 7

    #Start Kaorios
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :kaorios_hsf_passthrough_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :kaorios_hsf_passthrough_0
    #End Kaorios

    invoke-static {p1, p2}, Lcom/android/internal/pm/RoSystemFeatures;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_16
    iget-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mUseSystemFeaturesCache:Z

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/content/pm/SystemFeaturesCache;->getInstance()Landroid/content/pm/SystemFeaturesCache;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/SystemFeaturesCache;->maybeHasFeature(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_29
    sget-object v1, Landroid/app/ApplicationPackageManager;->mHasSystemFeatureCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v2, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Landroid/app/ApplicationPackageManager$HasSystemFeatureQuery;-><init>(Ljava/lang/String;ILandroid/app/ApplicationPackageManager-IA;)V

    invoke-virtual {v1, v2}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
