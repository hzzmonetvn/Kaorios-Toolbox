.class final Lcom/android/server/pm/ReconcilePackageUtils;
.super Ljava/lang/Object;
.source "ReconcilePackageUtils.java"


# static fields
.field private static final ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 62
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_d

    .line 63
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->restrictNonpreloadsSystemShareduids()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    .line 62
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 3
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 355
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z
    .registers 3
    .param p0, "ver"    # Lcom/android/server/pm/Settings$VersionInfo;

    .line 359
    iget v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static reconcilePackages(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/pm/Settings;Lcom/android/server/SystemConfig;)Ljava/util/List;
    .registers 44
    .param p3, "sharedLibraries"    # Lcom/android/server/pm/SharedLibrariesImpl;
    .param p4, "ksms"    # Lcom/android/server/pm/KeySetManagerService;
    .param p5, "settings"    # Lcom/android/server/pm/Settings;
    .param p6, "systemConfig"    # Lcom/android/server/SystemConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallRequest;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;",
            "Lcom/android/server/pm/SharedLibrariesImpl;",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/pm/Settings;",
            "Lcom/android/server/SystemConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/ReconcileFailure;
        }
    .end annotation

    .line 72
    .local p0, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .local p1, "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .local p2, "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    move-object/from16 v2, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v11, "PackageManager"

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    .line 75
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    new-instance v0, Landroid/util/ArrayMap;

    .line 76
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v13, v0

    .line 78
    .local v13, "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 80
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v14, v0

    .line 83
    .local v14, "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/InstallRequest;

    .line 84
    .local v1, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->onReconcileStarted()V

    .line 87
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-virtual {v1}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v4

    .line 87
    invoke-virtual {v13, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    nop

    .line 92
    invoke-virtual {v9, v1}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_8d

    .line 94
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SharedLibraryInfo;

    .line 95
    .local v5, "info":Landroid/content/pm/SharedLibraryInfo;
    invoke-static {v14, v5}, Lcom/android/server/pm/SharedLibraryUtils;->addSharedLibraryToPackageVersionMap(Ljava/util/Map;Landroid/content/pm/SharedLibraryInfo;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 102
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    goto :goto_57

    .line 97
    .restart local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shared Library "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-virtual {v5}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is being installed twice in this set!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    const/4 v4, -0x6

    invoke-static {v0, v4}, Lcom/android/server/pm/ReconcileFailure;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/ReconcileFailure;

    move-result-object v0

    throw v0

    .line 104
    .end local v1    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v3    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "info":Landroid/content/pm/SharedLibraryInfo;
    :cond_8d
    goto :goto_2e

    .line 106
    :cond_8e
    const-string v0, "android"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 108
    .local v15, "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_9b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_482

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 109
    .local v3, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "installPackageName":Ljava/lang/String;
    nop

    .line 111
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getAllowedSharedLibInfos(Lcom/android/server/pm/InstallRequest;)Ljava/util/List;

    move-result-object v5

    .line 115
    .local v5, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallReplace()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_10f

    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v0

    if-nez v0, :cond_10f

    .line 116
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_cc

    move v0, v4

    goto :goto_cd

    :cond_cc
    const/4 v0, 0x0

    .line 117
    .local v0, "killApp":Z
    :goto_cd
    nop

    .line 118
    if-eqz v0, :cond_d2

    const/4 v7, 0x0

    goto :goto_d4

    :cond_d2
    const/16 v7, 0x8

    :goto_d4
    or-int/lit8 v20, v7, 0x1

    .line 119
    .local v20, "deleteFlags":I
    nop

    .line 120
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;

    move-result-object v17

    .line 121
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v18

    .line 122
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v19

    .line 119
    const/16 v21, 0x0

    const/16 v22, 0x3e8

    invoke-static/range {v17 .. v22}, Lcom/android/server/pm/DeletePackageHelper;->mayDeletePackageLocked(Lcom/android/server/pm/PackageRemovedInfo;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;I)Lcom/android/server/pm/DeletePackageAction;

    move-result-object v7

    .line 124
    .local v7, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    if-eqz v7, :cond_ee

    .line 129
    .end local v0    # "killApp":Z
    .end local v20    # "deleteFlags":I
    goto :goto_110

    .line 125
    .restart local v0    # "killApp":Z
    .restart local v20    # "deleteFlags":I
    :cond_ee
    new-instance v4, Lcom/android/server/pm/ReconcileFailure;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "May not delete "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " to replace"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, -0xa

    invoke-direct {v4, v8, v6}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v4

    .line 130
    .end local v0    # "killApp":Z
    .end local v7    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v20    # "deleteFlags":I
    :cond_10f
    const/4 v7, 0x0

    .line 133
    .restart local v7    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    :goto_110
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v8

    .line 134
    .local v8, "scanFlags":I
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v17

    .line 135
    .local v17, "parseFlags":I
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v6

    .line 136
    .local v6, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v21

    .line 138
    .local v21, "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    if-nez v0, :cond_128

    const/4 v0, 0x0

    goto :goto_12c

    .line 139
    :cond_128
    invoke-virtual {v9, v3}, Lcom/android/server/pm/SharedLibrariesImpl;->getStaticSharedLibLatestVersionSetting(Lcom/android/server/pm/InstallRequest;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    :goto_12c
    move-object/from16 v26, v0

    .line 142
    .local v26, "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v26, :cond_133

    .line 143
    move-object/from16 v19, v26

    goto :goto_139

    .line 144
    :cond_133
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v19, v0

    :goto_139
    move-object/from16 v20, v19

    .line 145
    .local v20, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    const/16 v27, 0x0

    .line 146
    .local v27, "removeAppKeySetData":Z
    const/16 v28, 0x0

    .line 147
    .local v28, "sharedUserSignaturesChanged":Z
    const/4 v0, 0x0

    .line 148
    .local v0, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v6, :cond_149

    .line 149
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object/from16 v22, v0

    goto :goto_14b

    .line 148
    :cond_149
    move-object/from16 v22, v0

    .line 151
    .end local v0    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v22, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_14b
    and-int/lit8 v0, v17, 0x10

    if-eqz v0, :cond_151

    move v0, v4

    goto :goto_152

    :cond_151
    const/4 v0, 0x0

    :goto_152
    move/from16 v29, v0

    .line 153
    .local v29, "isSystemPackage":Z
    const/high16 v0, 0x4000000

    and-int/2addr v0, v8

    if-eqz v0, :cond_15a

    goto :goto_15b

    :cond_15a
    const/4 v4, 0x0

    :goto_15b
    move/from16 v30, v4

    .line 154
    .local v30, "isApex":Z
    move-object/from16 v4, p5

    move-object/from16 v31, v3

    move-object/from16 v2, v20

    .end local v3    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v20    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v2, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v31, "installRequest":Lcom/android/server/pm/InstallRequest;
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v3

    .line 156
    .local v3, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v10, v2, v3, v8}, Lcom/android/server/pm/KeySetManagerService;->shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z

    move-result v0

    move-object/from16 v20, v3

    .end local v3    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v20, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    const-string v3, " signature changed; retaining data."

    const-string v4, "System package "

    if-eqz v0, :cond_1cc

    .line 158
    invoke-virtual {v10, v2, v6}, Lcom/android/server/pm/KeySetManagerService;->checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_17a

    goto :goto_19a

    .line 162
    :cond_17a
    if-eqz v29, :cond_1a8

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "msg":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 171
    .end local v0    # "msg":Ljava/lang/String;
    nop

    .line 317
    :goto_19a
    move-object/from16 v33, v1

    move-object/from16 v19, v2

    move-object/from16 v34, v6

    move-object/from16 v10, v20

    move-object/from16 v6, v22

    move-object/from16 v22, v5

    goto/16 :goto_432

    .line 163
    :cond_1a8
    new-instance v0, Lcom/android/server/pm/ReconcileFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 164
    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " upgrade keys do not match the previously installed version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x7

    invoke-direct {v0, v4, v3}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v0

    .line 175
    :cond_1cc
    move-object/from16 v19, v2

    .end local v2    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .local v19, "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    move-object/from16 v2, p2

    :try_start_1d0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    .line 176
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isCompatSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v23

    .line 177
    .local v23, "compareCompat":Z
    invoke-static {v0}, Lcom/android/server/pm/ReconcilePackageUtils;->isRecoverSignatureUpdateNeeded(Lcom/android/server/pm/Settings$VersionInfo;)Z

    move-result v24

    .line 178
    .local v24, "compareRecover":Z
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->isRollback()Z

    move-result v25

    .line 179
    .local v25, "isRollback":Z
    nop

    .line 180
    invoke-static/range {v19 .. v25}, Lcom/android/server/pm/PackageManagerServiceUtils;->verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/SigningDetails;ZZZ)Z

    move-result v32
    :try_end_1e7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1d0 .. :try_end_1e7} :catch_391
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d0 .. :try_end_1e7} :catch_37e

    move-object/from16 v33, v1

    move-object/from16 v10, v20

    move-object/from16 v1, v22

    .line 185
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v22    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    .local v10, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v32, "compatMatch":Z
    .local v33, "installPackageName":Ljava/lang/String;
    if-eqz v32, :cond_1f3

    .line 186
    const/16 v20, 0x1

    move/from16 v27, v20

    .line 189
    :cond_1f3
    :try_start_1f3
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v20
    :try_end_1f7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1f3 .. :try_end_1f7} :catch_376
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f3 .. :try_end_1f7} :catch_36e

    and-int/lit8 v20, v20, 0x10

    if-nez v20, :cond_2f3

    .line 190
    :try_start_1fb
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->isInstallSystem()Z

    move-result v20

    if-nez v20, :cond_2da

    if-nez v29, :cond_2da

    if-nez v30, :cond_2da

    if-eqz v1, :cond_2da

    if-eqz v15, :cond_2da

    .line 192
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v20

    if-eqz v20, :cond_2d3

    .line 193
    move-object/from16 v20, v0

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .local v20, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/SigningDetails;->checkCapability(Landroid/content/pm/SigningDetails;I)Z

    move-result v0

    if-eqz v0, :cond_2ce

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-preload app associated with system signature: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v10, :cond_2c9

    sget-boolean v0, Lcom/android/server/pm/ReconcilePackageUtils;->ALLOW_NON_PRELOADS_SYSTEM_SHAREDUIDS:Z

    if-nez v0, :cond_2c9

    .line 200
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/SystemConfig;->getPackageToSharedUidAllowList()Landroid/util/ArrayMap;

    move-result-object v0

    .line 201
    .local v0, "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_24a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1fb .. :try_end_24a} :catch_2ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fb .. :try_end_24a} :catch_2e1

    .line 204
    .local v2, "sharedUidName":Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v22, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :try_start_24c
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v5
    :try_end_250
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_24c .. :try_end_250} :catch_2c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24c .. :try_end_250} :catch_2bb

    .line 205
    move-object/from16 v34, v6

    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .local v34, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :try_start_252
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageManagerServiceStub;->allowInstallNonPreloadApp(Ljava/lang/String;)Z

    move-result v5

    .line 208
    .local v5, "allowInstallNonPreloadApp":Z
    if-eqz v2, :cond_264

    iget-object v6, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 209
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_266

    :cond_264
    if-eqz v5, :cond_268

    :cond_266
    goto/16 :goto_2f9

    .line 211
    :cond_268
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v2

    .end local v2    # "sharedUidName":Ljava/lang/String;
    .local v35, "sharedUidName":Ljava/lang/String;
    const-string v2, "Non-preload app "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " signed with platform signature and joining shared uid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "msg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v36, v5

    .end local v5    # "allowInstallNonPreloadApp":Z
    .local v36, "allowInstallNonPreloadApp":Z
    const-string v5, ", allowList: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v5, Lcom/android/server/pm/ReconcileFailure;

    const/16 v6, -0x6b

    invoke-direct {v5, v6, v2}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v7    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v8    # "scanFlags":I
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    .end local v13    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local v14    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .end local v15    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v17    # "parseFlags":I
    .end local v19    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v26    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "removeAppKeySetData":Z
    .end local v28    # "sharedUserSignaturesChanged":Z
    .end local v29    # "isSystemPackage":Z
    .end local v30    # "isApex":Z
    .end local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v33    # "installPackageName":Ljava/lang/String;
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local p0    # "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .end local p1    # "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local p2    # "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .end local p3    # "sharedLibraries":Lcom/android/server/pm/SharedLibrariesImpl;
    .end local p4    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    .end local p5    # "settings":Lcom/android/server/pm/Settings;
    .end local p6    # "systemConfig":Lcom/android/server/SystemConfig;
    throw v5
    :try_end_2b1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_252 .. :try_end_2b1} :catch_2b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_252 .. :try_end_2b1} :catch_2b1

    .line 308
    .end local v0    # "allowList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "msg":Ljava/lang/String;
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "compareCompat":Z
    .end local v24    # "compareRecover":Z
    .end local v25    # "isRollback":Z
    .end local v32    # "compatMatch":Z
    .end local v35    # "sharedUidName":Ljava/lang/String;
    .end local v36    # "allowInstallNonPreloadApp":Z
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v7    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v8    # "scanFlags":I
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ReconciledPackage;>;"
    .restart local v13    # "combinedPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .restart local v14    # "incomingSharedLibraries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v15    # "systemPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v17    # "parseFlags":I
    .restart local v19    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v26    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "removeAppKeySetData":Z
    .restart local v28    # "sharedUserSignaturesChanged":Z
    .restart local v29    # "isSystemPackage":Z
    .restart local v30    # "isApex":Z
    .restart local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v33    # "installPackageName":Ljava/lang/String;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local p0    # "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/InstallRequest;>;"
    .restart local p1    # "allPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .restart local p2    # "versionInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/Settings$VersionInfo;>;"
    .restart local p3    # "sharedLibraries":Lcom/android/server/pm/SharedLibrariesImpl;
    .restart local p4    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    .restart local p5    # "settings":Lcom/android/server/pm/Settings;
    .restart local p6    # "systemConfig":Lcom/android/server/SystemConfig;
    :catch_2b1
    move-exception v0

    move-object/from16 v36, v1

    goto/16 :goto_389

    .line 255
    :catch_2b6
    move-exception v0

    move-object/from16 v36, v1

    goto/16 :goto_39c

    .line 308
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_2bb
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v36, v1

    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto/16 :goto_389

    .line 255
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_2c2
    move-exception v0

    move-object/from16 v34, v6

    move-object/from16 v36, v1

    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto/16 :goto_39c

    .line 198
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .local v5, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v23    # "compareCompat":Z
    .restart local v24    # "compareRecover":Z
    .restart local v25    # "isRollback":Z
    .restart local v32    # "compatMatch":Z
    :cond_2c9
    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto :goto_2f9

    .line 193
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :cond_2ce
    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto :goto_2f9

    .line 192
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .local v0, "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :cond_2d3
    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto :goto_2f9

    .line 190
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :cond_2da
    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto :goto_2f9

    .line 308
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v23    # "compareCompat":Z
    .end local v24    # "compareRecover":Z
    .end local v25    # "isRollback":Z
    .end local v32    # "compatMatch":Z
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_2e1
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    move-object/from16 v36, v1

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto/16 :goto_389

    .line 255
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_2ea
    move-exception v0

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    move-object/from16 v36, v1

    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    goto/16 :goto_39c

    .line 189
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v23    # "compareCompat":Z
    .restart local v24    # "compareRecover":Z
    .restart local v25    # "isRollback":Z
    .restart local v32    # "compatMatch":Z
    :cond_2f3
    move-object/from16 v20, v0

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .line 225
    .end local v0    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :goto_2f9
    if-eqz v10, :cond_368

    .line 230
    :try_start_2fb
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 232
    .local v0, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-virtual {v0, v1}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 234
    .local v2, "mergedDetails":Landroid/content/pm/SigningDetails;
    if-eq v2, v0, :cond_34f

    .line 239
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_346

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 240
    .local v6, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_33d

    .line 241
    move-object/from16 v35, v0

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .local v35, "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_325
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2fb .. :try_end_325} :catch_364
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fb .. :try_end_325} :catch_360

    .line 242
    move-object/from16 v36, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v36, "signingDetails":Landroid/content/pm/SigningDetails;
    :try_start_327
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_341

    .line 243
    nop

    .line 244
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 243
    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/SigningDetails;->mergeLineageWith(Landroid/content/pm/SigningDetails;I)Landroid/content/pm/SigningDetails;

    move-result-object v0

    move-object v2, v0

    goto :goto_341

    .line 240
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_33d
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .line 247
    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v6    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_341
    :goto_341
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    goto :goto_30d

    .line 248
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_346
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iput-object v2, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_353

    .line 234
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_34f
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    .line 251
    .end local v0    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_353
    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-nez v0, :cond_36a

    .line 252
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;
    :try_end_35b
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_327 .. :try_end_35b} :catch_35e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_327 .. :try_end_35b} :catch_35c

    goto :goto_36a

    .line 308
    .end local v2    # "mergedDetails":Landroid/content/pm/SigningDetails;
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "compareCompat":Z
    .end local v24    # "compareRecover":Z
    .end local v25    # "isRollback":Z
    .end local v32    # "compatMatch":Z
    .end local v35    # "sharedSigningDetails":Landroid/content/pm/SigningDetails;
    :catch_35c
    move-exception v0

    goto :goto_389

    .line 255
    :catch_35e
    move-exception v0

    goto :goto_39c

    .line 308
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_360
    move-exception v0

    move-object/from16 v36, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_389

    .line 255
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_364
    move-exception v0

    move-object/from16 v36, v1

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_39c

    .line 225
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .restart local v23    # "compareCompat":Z
    .restart local v24    # "compareRecover":Z
    .restart local v25    # "isRollback":Z
    .restart local v32    # "compatMatch":Z
    :cond_368
    move-object/from16 v36, v1

    .line 314
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v20    # "versionInfo":Lcom/android/server/pm/Settings$VersionInfo;
    .end local v23    # "compareCompat":Z
    .end local v24    # "compareRecover":Z
    .end local v25    # "isRollback":Z
    .end local v32    # "compatMatch":Z
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_36a
    :goto_36a
    move-object/from16 v6, v36

    goto/16 :goto_432

    .line 308
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_36e
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_389

    .line 255
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    :catch_376
    move-exception v0

    move-object/from16 v36, v1

    move-object/from16 v22, v5

    move-object/from16 v34, v6

    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    goto :goto_39c

    .line 308
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v33    # "installPackageName":Ljava/lang/String;
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "installPackageName":Ljava/lang/String;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .local v20, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v22, "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_37e
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v34, v6

    move-object/from16 v10, v20

    move-object/from16 v36, v22

    move-object/from16 v22, v5

    .line 311
    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v22, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v33    # "installPackageName":Ljava/lang/String;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_389
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Signing certificates comparison made on incomparable signing details but somehow passed verifySignatures!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v33    # "installPackageName":Ljava/lang/String;
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .restart local v1    # "installPackageName":Ljava/lang/String;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v22, "signingDetails":Landroid/content/pm/SigningDetails;
    :catch_391
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v34, v6

    move-object/from16 v10, v20

    move-object/from16 v36, v22

    move-object/from16 v22, v5

    .line 256
    .end local v1    # "installPackageName":Ljava/lang/String;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v20    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .local v22, "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v33    # "installPackageName":Ljava/lang/String;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_39c
    if-eqz v29, :cond_47c

    .line 259
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 269
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v1, "signingDetails":Landroid/content/pm/SigningDetails;
    if-eqz v10, :cond_414

    .line 270
    iget-object v2, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    if-eqz v2, :cond_405

    .line 272
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    .line 271
    const/4 v6, 0x2

    invoke-static {v2, v5, v10, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->canJoinSharedUserId(Ljava/lang/String;Landroid/content/pm/SigningDetails;Lcom/android/server/pm/SharedUserSetting;I)Z

    move-result v2

    if-nez v2, :cond_405

    .line 275
    const-string/jumbo v2, "ro.product.first_api_level"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x1d

    if-gt v2, v3, :cond_3de

    .line 282
    new-instance v2, Lcom/android/server/pm/ReconcileFailure;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature mismatch for shared user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x68

    invoke-direct {v2, v4, v3}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 291
    :cond_3de
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Signature mismatch on system package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_405
    const/4 v2, 0x1

    .line 300
    .end local v28    # "sharedUserSignaturesChanged":Z
    .local v2, "sharedUserSignaturesChanged":Z
    iget-object v5, v10, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    .line 301
    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 302
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v5, v10, Lcom/android/server/pm/SharedUserSetting;->signaturesChanged:Ljava/lang/Boolean;

    move/from16 v28, v2

    .line 305
    .end local v2    # "sharedUserSignaturesChanged":Z
    .restart local v28    # "sharedUserSignaturesChanged":Z
    :cond_414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/pm/parsing/pkg/ParsedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "msg":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 314
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v2    # "msg":Ljava/lang/String;
    move-object v6, v1

    .line 317
    .end local v1    # "signingDetails":Landroid/content/pm/SigningDetails;
    .local v6, "signingDetails":Landroid/content/pm/SigningDetails;
    :goto_432
    new-instance v0, Lcom/android/server/pm/ReconciledPackage;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v7

    move/from16 v18, v8

    move-object/from16 v5, v22

    move/from16 v8, v27

    move/from16 v7, v28

    move-object/from16 v3, v31

    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v27    # "removeAppKeySetData":Z
    .end local v28    # "sharedUserSignaturesChanged":Z
    .end local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .local v3, "installRequest":Lcom/android/server/pm/InstallRequest;
    .local v4, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .restart local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v7, "sharedUserSignaturesChanged":Z
    .local v8, "removeAppKeySetData":Z
    .local v18, "scanFlags":I
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ReconciledPackage;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/android/server/pm/InstallRequest;Lcom/android/server/pm/DeletePackageAction;Ljava/util/List;Landroid/content/pm/SigningDetails;ZZ)V

    .end local v3    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    move-object v1, v0

    .line 329
    .local v1, "reconciledPackage":Lcom/android/server/pm/ReconciledPackage;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->getScanFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_470

    .line 330
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->getParseFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_470

    .line 333
    nop

    .line 335
    :try_start_458
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    move-result-object v0

    .line 334
    invoke-virtual {v9, v0, v13, v14}, Lcom/android/server/pm/SharedLibrariesImpl;->collectSharedLibraryInfos(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/ReconciledPackage;->mCollectedSharedLibraryInfos:Ljava/util/ArrayList;
    :try_end_462
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_458 .. :try_end_462} :catch_463

    .line 339
    goto :goto_470

    .line 337
    :catch_463
    move-exception v0

    .line 338
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    new-instance v2, Lcom/android/server/pm/ReconcileFailure;

    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Lcom/android/server/pm/ReconcileFailure;-><init>(ILjava/lang/String;)V

    throw v2

    .line 342
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_470
    :goto_470
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/InstallRequest;->onReconcileFinished()V

    .line 343
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v1    # "reconciledPackage":Lcom/android/server/pm/ReconciledPackage;
    .end local v4    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v5    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v6    # "signingDetails":Landroid/content/pm/SigningDetails;
    .end local v7    # "sharedUserSignaturesChanged":Z
    .end local v8    # "removeAppKeySetData":Z
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v17    # "parseFlags":I
    .end local v18    # "scanFlags":I
    .end local v19    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v26    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v29    # "isSystemPackage":Z
    .end local v30    # "isApex":Z
    .end local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v33    # "installPackageName":Ljava/lang/String;
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    move-object/from16 v2, p1

    move-object/from16 v10, p4

    goto/16 :goto_9b

    .line 257
    .restart local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .local v7, "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .local v8, "scanFlags":I
    .restart local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .restart local v17    # "parseFlags":I
    .restart local v19    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .restart local v21    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v26    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v27    # "removeAppKeySetData":Z
    .restart local v28    # "sharedUserSignaturesChanged":Z
    .restart local v29    # "isSystemPackage":Z
    .restart local v30    # "isApex":Z
    .restart local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .restart local v33    # "installPackageName":Ljava/lang/String;
    .restart local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .restart local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_47c
    new-instance v1, Lcom/android/server/pm/ReconcileFailure;

    invoke-direct {v1, v0}, Lcom/android/server/pm/ReconcileFailure;-><init>(Lcom/android/server/pm/PackageManagerException;)V

    throw v1

    .line 346
    .end local v0    # "e":Lcom/android/server/pm/PackageManagerException;
    .end local v7    # "deletePackageAction":Lcom/android/server/pm/DeletePackageAction;
    .end local v8    # "scanFlags":I
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v17    # "parseFlags":I
    .end local v19    # "signatureCheckPs":Lcom/android/server/pm/PackageSetting;
    .end local v21    # "disabledPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v22    # "allowedSharedLibInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v26    # "lastStaticSharedLibSetting":Lcom/android/server/pm/PackageSetting;
    .end local v27    # "removeAppKeySetData":Z
    .end local v28    # "sharedUserSignaturesChanged":Z
    .end local v29    # "isSystemPackage":Z
    .end local v30    # "isApex":Z
    .end local v31    # "installRequest":Lcom/android/server/pm/InstallRequest;
    .end local v33    # "installPackageName":Ljava/lang/String;
    .end local v34    # "parsedPackage":Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .end local v36    # "signingDetails":Landroid/content/pm/SigningDetails;
    :cond_482
    return-object v12
.end method
