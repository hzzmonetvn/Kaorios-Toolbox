.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;
.source "ComputerEngine.java"

# interfaces
.implements Lcom/android/server/pm/Computer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ComputerEngine$Settings;
    }
.end annotation


# static fields
.field private static final sProviderInitOrderSorter:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mAppPredictionServicePackage:Ljava/lang/String;

.field private final mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

.field private final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field private final mContext:Landroid/content/Context;

.field private final mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field private final mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

.field private final mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field private final mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

.field private final mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

.field private final mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

.field private final mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field private final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field private final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field private final mLocalResolveComponentName:Landroid/content/ComponentName;

.field private final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field private final mResolveActivity:Landroid/content/pm/ActivityInfo;

.field protected final mService:Lcom/android/server/pm/PackageManagerService;

.field protected final mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

.field private final mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

.field private mUsed:I

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;

.field private final mVersion:I

.field private final mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 386
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 8
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;
    .param p2, "version"    # I

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 449
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 450
    new-instance v0, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 451
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 452
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 453
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 454
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 455
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 456
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 457
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 458
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 459
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 460
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 461
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 462
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 463
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 464
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 466
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 470
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 471
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 472
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 473
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 474
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 475
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 476
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 477
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 478
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 479
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 484
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 485
    return-void
.end method

.method private addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V
    .registers 14
    .param p2, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "tmp"    # [Z
    .param p5, "flags"    # J
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[",
            "Ljava/lang/String;",
            "[ZJI)V"
        }
    .end annotation

    .line 4722
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 4723
    .local v0, "numMatch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_21

    .line 4724
    aget-object v2, p3, v1

    .line 4725
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default:0"

    invoke-interface {v3, v4, v2, v5, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1b

    .line 4728
    const/4 v3, 0x1

    aput-boolean v3, p4, v1

    .line 4729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4731
    :cond_1b
    const/4 v3, 0x0

    aput-boolean v3, p4, v1

    .line 4723
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4734
    .end local v1    # "i":I
    :cond_21
    if-nez v0, :cond_24

    .line 4735
    return-void

    .line 4737
    :cond_24
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4741
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_54

    .line 4742
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    .line 4743
    array-length v2, p3

    if-ne v0, v2, :cond_39

    .line 4744
    iput-object p3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_51

    .line 4746
    :cond_39
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4747
    const/4 v0, 0x0

    .line 4748
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    array-length v3, p3

    if-ge v2, v3, :cond_51

    .line 4749
    aget-boolean v3, p4, v2

    if-eqz v3, :cond_4e

    .line 4750
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, p3, v2

    aput-object v4, v3, v0

    .line 4751
    add-int/lit8 v0, v0, 0x1

    .line 4748
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 4756
    .end local v2    # "i":I
    :cond_51
    :goto_51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4758
    :cond_54
    return-void
.end method

.method private applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 21
    .param p2, "instantAppPkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "filterCallingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1317
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    .local v8, "i":I
    :goto_d
    if-ltz v8, :cond_c4

    .line 1318
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1319
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_39

    .line 1320
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1321
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 1322
    .local v3, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1323
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1324
    .local v4, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move/from16 v5, p3

    move/from16 v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1326
    goto/16 :goto_c0

    .line 1329
    .end local v3    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v4    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_39
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    .line 1331
    .local v0, "isEphemeralApp":Z
    if-eqz v0, :cond_b1

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1332
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v2, :cond_c0

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 1333
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 1335
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const-string v3, "PackageManager"

    if-nez v2, :cond_78

    .line 1336
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_74

    .line 1337
    const-string v2, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_74
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1341
    goto :goto_c0

    .line 1345
    :cond_78
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v2, :cond_81

    .line 1346
    const-string v2, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_81
    new-instance v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1350
    .local v2, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v13, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v2, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1356
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1358
    invoke-virtual {v9}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1359
    invoke-interface {v6, v8, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1360
    .end local v2    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_c0

    .line 1364
    :cond_b1
    if-nez v0, :cond_bd

    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_bd

    .line 1367
    goto :goto_c0

    .line 1369
    :cond_bd
    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1317
    .end local v0    # "isEphemeralApp":Z
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    :cond_c0
    :goto_c0
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_d

    .line 1371
    .end local v8    # "i":I
    :cond_c4
    return-object v6
.end method

.method private areWebInstantAppsDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2103
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private bestDomainVerificationStatus(II)I
    .registers 4
    .param p1, "status1"    # I
    .param p2, "status2"    # I

    .line 2764
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2765
    return p2

    .line 2767
    :cond_4
    if-ne p2, v0, :cond_7

    .line 2768
    return p1

    .line 2770
    :cond_7
    invoke-static {p1, p2}, Landroid/util/MathUtils;->max(II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;
    .registers 8
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z
    .param p4, "isSameProfileGroup"    # Z

    .line 3001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3002
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 3003
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3004
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3008
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    if-nez p3, :cond_37

    .line 3011
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    if-eqz p4, :cond_37

    .line 3014
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    :cond_37
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3020
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .param p0, "callingUid"    # I
    .param p1, "userId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "requireFullPermission"    # Z

    .line 3073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3074
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 3075
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3076
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3080
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3081
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    if-nez p3, :cond_2d

    .line 3083
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    :cond_2d
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3087
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3088
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkIsolatedOwnerHasPermission(IZ)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "requireFullPermission"    # Z

    .line 2311
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v0

    .line 2312
    .local v0, "ownerUid":I
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p2, :cond_d

    .line 2313
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2315
    :cond_d
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2316
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v1, 0x1

    .line 2315
    :goto_1f
    return v1
.end method

.method private checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 8
    .param p1, "p1SigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "p2SigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 4387
    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 4388
    if-nez p2, :cond_6

    .line 4389
    goto :goto_7

    .line 4390
    :cond_6
    const/4 v0, -0x1

    .line 4388
    :goto_7
    return v0

    .line 4392
    :cond_8
    if-nez p2, :cond_c

    .line 4393
    const/4 v0, -0x2

    return v0

    .line 4395
    :cond_c
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v1

    .line 4396
    .local v1, "result":I
    if-nez v1, :cond_13

    .line 4397
    return v1

    .line 4402
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4403
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 4404
    :cond_1f
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 4405
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    goto :goto_35

    .line 4406
    :cond_31
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    :goto_35
    nop

    .line 4407
    .local v2, "p1Signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 4408
    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    goto :goto_4b

    .line 4409
    :cond_47
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_4b
    nop

    .line 4410
    .local v0, "p2Signatures":[Landroid/content/pm/Signature;
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    .line 4412
    .end local v0    # "p2Signatures":[Landroid/content/pm/Signature;
    .end local v2    # "p1Signatures":[Landroid/content/pm/Signature;
    :cond_50
    return v1
.end method

.method private dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3315
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3316
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3317
    .local v1, "activePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3318
    .local v2, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3319
    .local v3, "factoryActivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3320
    .local v4, "factoryInactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/pm/ComputerEngine;->generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3322
    const-string v5, "Active APEX packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3323
    const/4 v5, 0x1

    invoke-static {v1, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3324
    const-string v6, "Inactive APEX packages:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3325
    const/4 v6, 0x0

    invoke-static {v2, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3326
    const-string v7, "Factory APEX packages:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3327
    invoke-static {v3, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3328
    invoke-static {v4, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3329
    return-void
.end method

.method private static dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11
    .param p1, "isActive"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 3341
    .local p0, "packageStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3342
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3343
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_b
    if-ge v0, v1, :cond_b5

    .line 3344
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3345
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 3346
    .local v3, "pkg":Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    if-eqz p2, :cond_25

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 3347
    goto/16 :goto_b1

    .line 3349
    :cond_25
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsFactory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdatedSystemApp()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3355
    const-string v4, "ApplicationInfo: "

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3356
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3358
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3359
    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3360
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3361
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3343
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "pkg":Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 3363
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_b5
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3364
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3365
    return-void
.end method

.method private filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;
    .registers 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1381
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_3

    .line 1382
    return-object p1

    .line 1385
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 1386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1387
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    .line 1388
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1385
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1391
    .end local v0    # "i":I
    :cond_20
    return-object p1
.end method

.method private filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2203
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2205
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2206
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2207
    return v2

    .line 2210
    :cond_19
    nop

    .line 2211
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2212
    return v2

    .line 2203
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2217
    :cond_27
    if-eqz p1, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v1

    if-nez v1, :cond_3c

    move/from16 v5, p3

    goto :goto_a8

    .line 2221
    :cond_3c
    nop

    .line 2222
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v3

    int-to-long v5, v3

    .line 2221
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2223
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_55

    .line 2224
    return v2

    .line 2227
    :cond_55
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2228
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2229
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_67

    .line 2230
    return v7

    .line 2233
    :cond_67
    array-length v8, v6

    move v9, v2

    :goto_69
    if-ge v9, v8, :cond_a5

    aget-object v10, v6, v9

    .line 2234
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 2235
    return v2

    .line 2237
    :cond_78
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2238
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a2

    .line 2239
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2240
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2239
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2241
    .local v12, "index":I
    if-gez v12, :cond_8f

    .line 2242
    goto :goto_a2

    .line 2244
    :cond_8f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2245
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a2

    .line 2246
    return v2

    .line 2233
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 2250
    :cond_a5
    return v7

    .line 2217
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a6
    move/from16 v5, p3

    .line 2218
    :goto_a8
    return v2
.end method

.method private filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2147
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2149
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2150
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2151
    return v2

    .line 2154
    :cond_19
    nop

    .line 2155
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2156
    return v2

    .line 2147
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2161
    :cond_27
    if-eqz p1, :cond_a5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_3c

    move/from16 v5, p3

    goto :goto_a7

    .line 2165
    :cond_3c
    nop

    .line 2166
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 2167
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryVersion()J

    move-result-wide v5

    .line 2165
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2168
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_54

    .line 2169
    return v2

    .line 2172
    :cond_54
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2173
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2174
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_66

    .line 2175
    return v7

    .line 2178
    :cond_66
    array-length v8, v6

    move v9, v2

    :goto_68
    if-ge v9, v8, :cond_a4

    aget-object v10, v6, v9

    .line 2179
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 2180
    return v2

    .line 2182
    :cond_77
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2183
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a1

    .line 2184
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2185
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2184
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2186
    .local v12, "index":I
    if-gez v12, :cond_8e

    .line 2187
    goto :goto_a1

    .line 2189
    :cond_8e
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2190
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a1

    .line 2191
    return v2

    .line 2178
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a1
    :goto_a1
    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    .line 2195
    :cond_a4
    return v7

    .line 2161
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a5
    move/from16 v5, p3

    .line 2162
    :goto_a7
    return v2
.end method

.method private findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 865
    move-object/from16 v0, p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v1

    .line 866
    .local v4, "failureActivityIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, -0x1

    move-object v3, p0

    move/from16 v10, p2

    move/from16 v12, p3

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v1

    .line 872
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 873
    .local v2, "numResults":I
    if-lez v2, :cond_41

    .line 874
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_25
    if-ge v3, v2, :cond_41

    .line 875
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 876
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v6, :cond_37

    .line 877
    nop

    .line 874
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 879
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_37
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 882
    .end local v3    # "i":I
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_41
    const/4 v3, 0x0

    return-object v3
.end method

.method private generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 3297
    .local p1, "activePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p2, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "factoryActivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p4, "factoryInactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3298
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3299
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3300
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_29

    .line 3301
    goto :goto_a

    .line 3303
    :cond_29
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3304
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_36

    .line 3305
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 3307
    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 3308
    .local v4, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3309
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3311
    .end local v1    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_42
    goto :goto_a

    .line 3312
    :cond_43
    return-void
.end method

.method private getBaseSdkSandboxUid()I
    .registers 2

    .line 5952
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    return v0
.end method

.method private getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5234
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5237
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5238
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object v1

    .line 5241
    :cond_f
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1d

    .line 5246
    :cond_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    return-object v1

    .line 5243
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private getInstalledPackagesBody(JII)Landroid/content/pm/PackageInfoList;
    .registers 20
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I

    .line 1746
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 1747
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getPackageInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v6

    .line 1748
    .local v6, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v6, :cond_1a

    .line 1749
    new-instance v0, Landroid/content/pm/PackageInfoList;

    invoke-direct {v0, v6}, Landroid/content/pm/PackageInfoList;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1753
    :cond_1a
    const-wide/32 v0, 0x402000

    and-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_29

    move v0, v1

    goto :goto_2a

    :cond_29
    move v0, v4

    :goto_2a
    move v7, v0

    .line 1754
    .local v7, "listUninstalled":Z
    const-wide/32 v8, 0x40000000

    and-long v8, p1, v8

    cmp-long v0, v8, v2

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v4

    :goto_37
    move v8, v0

    .line 1755
    .local v8, "listApex":Z
    const-wide/32 v9, 0x200000

    and-long v9, p1, v9

    cmp-long v0, v9, v2

    if-eqz v0, :cond_43

    move v0, v1

    goto :goto_44

    :cond_43
    move v0, v4

    :goto_44
    move v9, v0

    .line 1757
    .local v9, "listFactory":Z
    if-nez v7, :cond_53

    const-wide v10, 0x100000000L

    and-long v10, p1, v10

    cmp-long v0, v10, v2

    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    move v1, v4

    :goto_54
    move v10, v1

    .line 1760
    .local v10, "listArchivedOnly":Z
    if-nez v7, :cond_d8

    if-eqz v10, :cond_61

    move-wide/from16 v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    goto/16 :goto_de

    .line 1793
    :cond_61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 1794
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_77
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1795
    .local v13, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1796
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_a7

    .line 1797
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_95

    .line 1798
    goto :goto_77

    .line 1801
    :cond_95
    if-nez v0, :cond_99

    const/4 v1, 0x0

    goto :goto_a3

    :cond_99
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1802
    .local v1, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_a3
    if-eqz v1, :cond_a7

    .line 1803
    move-object v0, v1

    goto :goto_a8

    .line 1806
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a7
    move-object v1, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_a8
    if-nez v8, :cond_b1

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1807
    goto :goto_77

    .line 1809
    :cond_b1
    move-object v0, p0

    move-wide/from16 v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v14

    if-eqz v14, :cond_bf

    .line 1810
    goto :goto_77

    .line 1812
    :cond_bf
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v14

    if-eqz v14, :cond_c6

    .line 1813
    goto :goto_77

    .line 1815
    :cond_c6
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1816
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_cf

    .line 1817
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1819
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    :cond_cf
    goto :goto_77

    .line 1794
    :cond_d0
    move-wide/from16 v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    goto/16 :goto_15e

    .line 1760
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_d8
    move-wide/from16 v4, p1

    move/from16 v3, p3

    move/from16 v2, p4

    .line 1761
    :goto_de
    new-instance v1, Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v1

    .line 1762
    .restart local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_fc
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1763
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v9, :cond_11e

    .line 1764
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v13

    if-nez v13, :cond_111

    .line 1765
    goto :goto_fc

    .line 1767
    :cond_111
    iget-object v13, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1768
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 1769
    .local v13, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v13, :cond_11e

    .line 1770
    move-object v1, v13

    .line 1773
    .end local v13    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_11e
    if-nez v8, :cond_131

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    if-eqz v13, :cond_131

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v13

    if-eqz v13, :cond_131

    .line 1774
    goto :goto_fc

    .line 1776
    :cond_131
    invoke-interface {v1, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v13

    .line 1777
    .local v13, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v10, :cond_144

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v14

    if-nez v14, :cond_144

    .line 1778
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v14

    if-nez v14, :cond_144

    .line 1779
    goto :goto_fc

    .line 1781
    :cond_144
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v14

    if-eqz v14, :cond_14c

    .line 1782
    goto :goto_fc

    .line 1784
    :cond_14c
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v14

    if-eqz v14, :cond_153

    .line 1785
    goto :goto_fc

    .line 1787
    :cond_153
    invoke-virtual {p0, v1, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 1788
    .restart local v14    # "pi":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_15c

    .line 1789
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    :cond_15c
    goto :goto_fc

    :cond_15d
    nop

    .line 1822
    :goto_15e
    new-instance v1, Landroid/content/pm/PackageInfoList;

    invoke-direct {v1, v11}, Landroid/content/pm/PackageInfoList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private getIsolatedOwner(I)I
    .registers 5
    .param p1, "isolatedUid"    # I

    .line 1927
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result v0

    .line 1928
    .local v0, "ownerUid":I
    if-ne v0, v1, :cond_22

    .line 1929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No owner UID found for isolated UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return p1

    .line 1932
    :cond_22
    return v0
.end method

.method private getPackagesForUidInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 2046
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2047
    .local v0, "isCallerInstantApp":Z
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2048
    .local v1, "userId":I
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2049
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 2051
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2052
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 2054
    :cond_21
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2055
    .local v2, "appId":I
    invoke-virtual {p0, p2, v1, v2, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;
    .registers 9
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4364
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4365
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 4366
    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 4367
    return-object v2

    .line 4369
    :cond_e
    instance-of v3, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_21

    .line 4370
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4371
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4372
    return-object v2

    .line 4374
    :cond_1c
    iget-object v2, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 4375
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_21
    instance-of v3, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_34

    .line 4376
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4377
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4378
    return-object v2

    .line 4380
    :cond_2f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    return-object v2

    .line 4382
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_34
    return-object v2
.end method

.method private getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5132
    .local v1, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "when asking about packages for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5134
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 5135
    .local p2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_32

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_32

    .line 5138
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    return-object v0

    .line 5136
    :cond_32
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 2263
    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    .line 2264
    return v0

    .line 2266
    :cond_6
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2267
    return v0

    .line 2271
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2272
    return v0

    .line 2275
    :cond_18
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_21

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_33

    .line 2277
    :cond_21
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2279
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    nop

    :goto_33
    nop

    .line 2280
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_47

    .line 2281
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2282
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/ComputerEngine;->checkIsolatedOwnerHasPermission(IZ)Z

    move-result v1

    return v1

    .line 2285
    :cond_47
    return v0
.end method

.method private hasNonNegativePriority(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2293
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_12

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget v0, v0, Landroid/content/pm/ResolveInfo;->priority:I

    if-ltz v0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2297
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private hasPermission(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2302
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isCallerFromManagedUserOrProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2350
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2351
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isUserOrganizationManaged(I)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private static isHomeIntent(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 3597
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3598
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3599
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 3597
    :goto_1f
    return v0
.end method

.method private isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "skipPackageCheck"    # Z
    .param p5, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    .line 2455
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2456
    return v1

    .line 2458
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2459
    return v1

    .line 2461
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2462
    return v1

    .line 2464
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    .line 2465
    return v1

    .line 2467
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_27

    .line 2468
    return v1

    .line 2470
    :cond_27
    if-nez p4, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2471
    return v1

    .line 2473
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2476
    if-eqz p2, :cond_3e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    .line 2477
    :cond_3e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_63

    .line 2478
    :cond_46
    return v1

    .line 2481
    :cond_47
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_68

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_68

    .line 2483
    :cond_5c
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2484
    return v1

    .line 2489
    :cond_63
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v0

    return v0

    .line 2482
    :cond_68
    :goto_68
    return v1
.end method

.method private isKnownIsolatedComputeApp(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 5957
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5958
    return v1

    .line 5960
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5961
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v0

    .line 5962
    .local v0, "hotwordDetectionServiceProvider":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 5964
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    .line 5965
    .local v3, "isHotword":Z
    :goto_1a
    if-eqz v3, :cond_1d

    .line 5966
    return v2

    .line 5968
    :cond_1d
    const-class v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    .line 5969
    invoke-static {v4}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;

    .line 5970
    .local v4, "onDeviceIntelligenceManagerLocal":Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;
    if-eqz v4, :cond_2f

    .line 5971
    invoke-interface {v4}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerLocal;->getInferenceServiceUid()I

    move-result v5

    if-ne p1, v5, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    nop

    .line 5970
    :goto_30
    return v1
.end method

.method private isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2537
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2538
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v1

    .line 2540
    .local v1, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_20

    .line 2541
    const-wide/32 v2, 0x10000

    and-long/2addr v2, p4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_16

    move v5, v0

    goto :goto_17

    :cond_16
    move v5, v7

    :goto_17
    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v4, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v6, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    goto :goto_28

    .line 2544
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "resolvedType":Ljava/lang/String;
    .end local v6    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "userId":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_20
    move-object v3, p1

    move v6, p2

    move-object v4, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "userId":I
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "resolvedType":Ljava/lang/String;
    .restart local v6    # "userId":I
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_28
    nop

    .line 2545
    .local p1, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2546
    .local p3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-boolean v2, p3, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz v2, :cond_3e

    .line 2547
    return v0

    .line 2549
    .end local p3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_3e
    goto :goto_2d

    .line 2550
    :cond_3f
    return v7
.end method

.method private isRecentsAccessingChildProfiles(II)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "targetUserId"    # I

    .line 2554
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2555
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2556
    return v1

    .line 2558
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2560
    .local v2, "token":J
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2561
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2f

    if-eq v4, v0, :cond_25

    .line 2562
    nop

    .line 2566
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2562
    return v1

    .line 2564
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2f

    .line 2566
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2564
    return v1

    .line 2566
    .end local v0    # "callingUserId":I
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2567
    throw v0
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 5
    .param p0, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p1, "p2"    # Landroid/content/pm/ProviderInfo;

    .line 387
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 388
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 389
    .local v1, "v2":I
    if-le v0, v1, :cond_8

    const/4 v2, -0x1

    goto :goto_d

    :cond_8
    if-ge v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method private maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;
    .registers 37
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "isRequesterInstantApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1398
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const-wide/32 v2, 0x800000

    and-long v4, p4, v2

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_13

    move v0, v11

    goto :goto_14

    :cond_13
    move v0, v10

    :goto_14
    move/from16 v20, v0

    .line 1399
    .local v20, "alreadyResolvedLocally":Z
    const/4 v12, 0x0

    .line 1400
    .local v12, "localInstantApp":Landroid/content/pm/ResolveInfo;
    const/4 v13, 0x0

    .line 1401
    .local v13, "blockResolution":Z
    const-string v14, "PackageManager"

    if-nez v20, :cond_b4

    .line 1402
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/16 v4, 0x40

    or-long v4, p4, v4

    or-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    or-long/2addr v4, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v15

    .line 1410
    move v5, v6

    move-object v6, v1

    .local v15, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .local v0, "i":I
    :goto_38
    if-ltz v0, :cond_b1

    .line 1411
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1412
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1413
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1414
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 1415
    move v4, v0

    .end local v0    # "i":I
    .local v4, "i":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v17, v1

    move-object v8, v2

    move-object v1, v3

    move/from16 v16, v4

    move-object/from16 v2, p2

    move-wide/from16 v3, p4

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "i":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v8, "packageName":Ljava/lang/String;
    .local v16, "i":I
    .local v17, "info":Landroid/content/pm/ResolveInfo;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1417
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_81

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_81
    move-object/from16 v12, v17

    move-object v0, v12

    move v1, v13

    goto :goto_b7

    .line 1423
    :cond_86
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_a0

    .line 1424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_a0
    const/4 v13, 0x1

    .line 1429
    move-object v0, v12

    move v1, v13

    goto :goto_b7

    .line 1414
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v16    # "i":I
    .end local v17    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "i":I
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a4
    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object v8, v2

    move-object v1, v3

    .line 1410
    .end local v0    # "i":I
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v16    # "i":I
    add-int/lit8 v0, v16, -0x1

    move/from16 v5, p6

    const-wide/16 v8, 0x0

    .end local v16    # "i":I
    .restart local v0    # "i":I
    goto :goto_38

    :cond_b1
    move/from16 v16, v0

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_b5

    .line 1401
    .end local v15    # "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "i":I
    :cond_b4
    move-object v6, v1

    .line 1434
    :goto_b5
    move-object v0, v12

    move v1, v13

    .end local v12    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .end local v13    # "blockResolution":Z
    .local v0, "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v1, "blockResolution":Z
    :goto_b7
    const/4 v2, 0x0

    .line 1435
    .local v2, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    if-nez v1, :cond_121

    .line 1436
    if-nez v0, :cond_109

    .line 1438
    const-string/jumbo v3, "resolveEphemeral"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1439
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1440
    .local v3, "token":Ljava/lang/String;
    nop

    .line 1441
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v21

    .line 1442
    .local v21, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    new-instance v8, Landroid/content/pm/InstantAppRequest;

    .line 1447
    const-wide/16 v12, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v18

    const/4 v9, 0x0

    move-wide v15, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide/from16 v22, v15

    const/16 v16, 0x0

    move-object/from16 v10, p2

    move/from16 v15, p6

    move/from16 v17, p7

    move-object/from16 v19, v3

    move-object/from16 v24, v14

    move/from16 v14, p8

    move/from16 v25, v11

    move-object/from16 v11, p3

    move-wide/from16 v26, v4

    move/from16 v5, v25

    move-wide/from16 v3, v22

    move-wide/from16 v22, v26

    .end local v3    # "token":Ljava/lang/String;
    .local v19, "token":Ljava/lang/String;
    invoke-direct/range {v8 .. v19}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1448
    .local v8, "requestObject":Landroid/content/pm/InstantAppRequest;
    iget-object v9, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v10, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v6, v9, v10, v8}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v2

    .line 1450
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1451
    .end local v8    # "requestObject":Landroid/content/pm/InstantAppRequest;
    .end local v19    # "token":Ljava/lang/String;
    .end local v21    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    goto :goto_128

    .line 1457
    :cond_109
    move/from16 v15, p6

    move v5, v11

    move-object/from16 v24, v14

    const-wide/16 v3, 0x0

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1458
    .local v8, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v12, v8, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v14, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v2, v9

    goto :goto_128

    .line 1435
    .end local v8    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_121
    move/from16 v15, p6

    move v5, v11

    move-object/from16 v24, v14

    const-wide/16 v3, 0x0

    .line 1463
    :goto_128
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v8

    if-eqz v8, :cond_131

    if-nez v2, :cond_131

    .line 1464
    return-object v7

    .line 1466
    :cond_131
    iget-object v8, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1467
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 1468
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v8, :cond_1b2

    invoke-interface {v8, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    .line 1469
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 1468
    invoke-static {v9, v10, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v9

    if-nez v9, :cond_14e

    goto :goto_1b2

    .line 1472
    :cond_14e
    new-instance v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v9, v10}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1473
    .local v9, "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    nop

    .line 1474
    invoke-virtual {v6}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 1475
    invoke-interface {v8, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 1473
    invoke-static {v10, v3, v4, v11, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1476
    const v3, 0x588000

    iput v3, v9, Landroid/content/pm/ResolveInfo;->match:I

    .line 1479
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 1481
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    :cond_17f
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_19d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19d

    .line 1484
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1485
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1484
    const/4 v10, 0x0

    invoke-virtual {v3, v4, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1487
    :cond_19d
    iput-boolean v5, v9, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1489
    iput-boolean v5, v9, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1490
    iput-object v2, v9, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1491
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_1ae

    .line 1492
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    move-object/from16 v4, v24

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_1ae
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    return-object v7

    .line 1470
    .end local v9    # "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    :cond_1b2
    :goto_1b2
    return-object v7
.end method

.method private resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "callingUid"    # I

    .line 1957
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1958
    .local v1, "normalizedPackageName":Ljava/lang/String;
    if-eqz v1, :cond_e

    move-object v3, v1

    goto :goto_f

    :cond_e
    move-object v3, v2

    .line 1961
    .end local p1    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :goto_f
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1962
    invoke-interface {v2, v3}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v2

    .line 1963
    .local v2, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_21

    move/from16 v8, p4

    goto/16 :goto_c2

    .line 1968
    :cond_21
    const/4 v4, 0x0

    .line 1969
    .local v4, "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 1970
    .local v5, "callingAppId":I
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v6

    if-nez v6, :cond_66

    .line 1971
    new-instance v6, Landroid/util/LongSparseLongArray;

    invoke-direct {v6}, Landroid/util/LongSparseLongArray;-><init>()V

    move-object v4, v6

    .line 1972
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1973
    .local v7, "libName":Ljava/lang/String;
    move/from16 v8, p4

    invoke-direct {v0, v8, v8}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v9

    .line 1974
    .local v9, "uidPackages":[Ljava/lang/String;
    if-eqz v9, :cond_68

    .line 1975
    array-length v10, v9

    :goto_46
    if-ge v6, v10, :cond_68

    aget-object v11, v9, v6

    .line 1976
    .local v11, "uidPackage":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1977
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 1978
    .local v13, "libIdx":I
    if-ltz v13, :cond_63

    .line 1979
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v14

    aget-wide v14, v14, v13

    .line 1980
    .local v14, "libVersion":J
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 1975
    .end local v11    # "uidPackage":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "libIdx":I
    .end local v14    # "libVersion":J
    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    .line 1970
    .end local v7    # "libName":Ljava/lang/String;
    .end local v9    # "uidPackages":[Ljava/lang/String;
    :cond_66
    move/from16 v8, p4

    .line 1987
    :cond_68
    if-eqz v4, :cond_71

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_71

    .line 1988
    return-object v3

    .line 1992
    :cond_71
    const/4 v6, 0x0

    .line 1993
    .local v6, "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v2}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    .line 1994
    .local v7, "versionCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_77
    if-ge v9, v7, :cond_b8

    .line 1995
    invoke-virtual {v2, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/SharedLibraryInfo;

    .line 1996
    .local v10, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v4, :cond_8c

    .line 1997
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    .line 1996
    invoke-virtual {v4, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-gez v11, :cond_8c

    .line 1998
    goto :goto_b5

    .line 2000
    :cond_8c
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    .line 2001
    .local v11, "libVersionCode":J
    const-wide/16 v13, -0x1

    cmp-long v13, p2, v13

    if-eqz v13, :cond_a3

    .line 2002
    cmp-long v13, v11, p2

    if-nez v13, :cond_b5

    .line 2003
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 2005
    :cond_a3
    if-nez v6, :cond_a7

    .line 2006
    move-object v6, v10

    goto :goto_b5

    .line 2007
    :cond_a7
    nop

    .line 2008
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_b5

    .line 2009
    move-object v6, v10

    .line 1994
    .end local v10    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v11    # "libVersionCode":J
    :cond_b5
    :goto_b5
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    .line 2013
    .end local v9    # "i":I
    :cond_b8
    if-eqz v6, :cond_bf

    .line 2014
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 2017
    :cond_bf
    return-object v3

    .line 1963
    .end local v4    # "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    .end local v5    # "callingAppId":I
    .end local v6    # "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "versionCount":I
    :cond_c0
    move/from16 v8, p4

    .line 1964
    :goto_c2
    return-object v3
.end method

.method private safeMode()Z
    .registers 2

    .line 436
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v0

    return v0
.end method

.method private updateFlags(JI)J
    .registers 11
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2823
    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_1e

    .line 2829
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2831
    .local v2, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2832
    or-long/2addr p1, v0

    goto :goto_1e

    .line 2834
    :cond_1a
    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    .line 2837
    .end local v2    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    :goto_1e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->appLockApis()Z

    move-result v0

    if-eqz v0, :cond_79

    const-wide v0, 0x800000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_79

    .line 2848
    const-wide v0, 0x80000000L

    and-long/2addr v0, p1

    cmp-long v0, v0, v4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 2851
    .local v0, "isGetAttributionsBitSet":Z
    :goto_3d
    const/16 v3, 0x20

    ushr-long v3, p1, v3

    const-wide v5, 0xffffffffL

    cmp-long v3, v3, v5

    if-nez v3, :cond_4c

    move v3, v1

    goto :goto_4d

    :cond_4c
    move v3, v2

    .line 2853
    .local v3, "upperBitsAllOnes":Z
    :goto_4d
    if-eqz v0, :cond_52

    if-eqz v3, :cond_52

    goto :goto_53

    :cond_52
    move v1, v2

    .line 2854
    .local v1, "likelySignExtended":Z
    :goto_53
    if-eqz v1, :cond_64

    .line 2855
    const-wide v4, -0x800000001L

    and-long/2addr p1, v4

    .line 2856
    const-string v2, "PackageManager"

    const-string/jumbo v4, "updateFlags: Removing GET_APP_LOCK_INFO due to likely sign extension of the deprecated GET_ATTRIBUTIONS flag. Please use GET_ATTRIBUTIONS_LONG"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 2860
    :cond_64
    const-string v2, "android.permission.LOCK_APPS"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_71

    goto :goto_79

    .line 2861
    :cond_71
    new-instance v2, Ljava/lang/SecurityException;

    const-string v4, "Caller must hold the LOCK_APPS permission to use GET_APP_LOCK_INFO"

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2868
    .end local v0    # "isGetAttributionsBitSet":Z
    .end local v1    # "likelySignExtended":Z
    .end local v3    # "upperBitsAllOnes":Z
    :cond_79
    :goto_79
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 2869
    const-wide/32 v0, 0x402000

    or-long/2addr p1, v0

    .line 2872
    :cond_8b
    return-wide p1
.end method


# virtual methods
.method public activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 24
    .param p1, "resolveComponentName"    # Landroid/content/ComponentName;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3888
    move-object/from16 v6, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3889
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "activitySupportsIntentAsUser"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3891
    move-object/from16 v7, p1

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_1b

    .line 3893
    return v8

    .line 3895
    :cond_1b
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v9

    .line 3896
    .local v9, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v10, 0x0

    if-nez v9, :cond_25

    .line 3897
    return v10

    .line 3899
    :cond_25
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3900
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_30

    .line 3901
    return v10

    .line 3903
    :cond_30
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v3, v2

    move v2, v1

    move-object v1, v3

    move-object/from16 v3, p2

    move/from16 v5, p5

    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v4

    move-object v0, v1

    move v1, v2

    .end local v2    # "callingUid":I
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "callingUid":I
    if-eqz v4, :cond_42

    .line 3905
    return v10

    .line 3907
    :cond_42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 3908
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    .line 3909
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    .line 3910
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v16

    .line 3909
    const-string v17, "PackageManager"

    move-object/from16 v13, p4

    invoke-virtual/range {v11 .. v17}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_76

    .line 3911
    return v8

    .line 3907
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 3914
    .end local v2    # "i":I
    :cond_79
    return v10
.end method

.method protected androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .registers 27
    .param p2, "ephemeralPkgName"    # Ljava/lang/String;
    .param p3, "allowDynamicSplits"    # Z
    .param p4, "filterCallingUid"    # I
    .param p5, "resolveForStart"    # Z
    .param p6, "userId"    # I
    .param p7, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            "ZIZI",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1230
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v5, p6

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_17

    invoke-direct {v1, v5}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v9

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v10, v0

    .line 1231
    .local v10, "blockInstant":Z
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    move v11, v0

    .local v11, "i":I
    :goto_1f
    if-ltz v11, :cond_14b

    .line 1232
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1234
    .local v12, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v12, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v0, :cond_35

    if-eqz v10, :cond_35

    .line 1235
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1236
    move v8, v9

    const/4 v9, 0x0

    goto/16 :goto_142

    .line 1239
    :cond_35
    if-eqz p3, :cond_d9

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_d9

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_d9

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 1242
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 1244
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v2, "PackageManager"

    if-nez v0, :cond_69

    .line 1245
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_62

    .line 1246
    const-string v0, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_62
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1249
    move v8, v9

    const/4 v9, 0x0

    goto/16 :goto_142

    .line 1251
    :cond_69
    if-eqz v10, :cond_7e

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v0, v5, v3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 1253
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1254
    move v8, v9

    const/4 v9, 0x0

    goto/16 :goto_142

    .line 1258
    :cond_7e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_87

    .line 1259
    const-string v0, "Adding installer to the ResolveInfo list"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_87
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v2}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1263
    .local v0, "installerInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v3, p4

    invoke-direct {v1, v2, v3, v5}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v14

    .line 1265
    .local v14, "installFailureActivity":Landroid/content/ComponentName;
    new-instance v13, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v8, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v18, v2

    move-wide/from16 v16, v8

    invoke-direct/range {v13 .. v18}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v13, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1271
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1276
    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1277
    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1278
    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1279
    const/4 v8, 0x1

    iput-boolean v8, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1280
    invoke-interface {v6, v11, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const/4 v9, 0x0

    goto/16 :goto_142

    .line 1242
    .end local v0    # "installerInfo":Landroid/content/pm/ResolveInfo;
    .end local v14    # "installFailureActivity":Landroid/content/ComponentName;
    :cond_d5
    move/from16 v3, p4

    move v8, v9

    goto :goto_dc

    .line 1239
    :cond_d9
    move/from16 v3, p4

    move v8, v9

    .line 1283
    :goto_dc
    if-nez v7, :cond_102

    .line 1285
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1286
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 1287
    .local v0, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v2, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1288
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1289
    .local v4, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez p5, :cond_100

    move-object v3, v0

    .end local v0    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .local v3, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1290
    move/from16 v2, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_ff

    .line 1292
    goto :goto_142

    .line 1294
    .end local v3    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v4    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_ff
    goto :goto_13f

    .line 1289
    .restart local v0    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local v4    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_100
    move-object v3, v0

    .end local v0    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local v3    # "callingSetting":Lcom/android/server/pm/SettingBase;
    goto :goto_142

    .line 1294
    .end local v3    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v4    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_102
    const/4 v9, 0x0

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 1296
    goto :goto_142

    .line 1297
    :cond_10e
    if-eqz p5, :cond_12b

    .line 1298
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_11e

    .line 1299
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_12b

    .line 1300
    :cond_11e
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12b

    .line 1301
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_12b

    .line 1303
    goto :goto_142

    .line 1304
    :cond_12b
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13f

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1306
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_13f

    .line 1308
    goto :goto_142

    .line 1310
    :cond_13f
    :goto_13f
    invoke-interface {v6, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1231
    .end local v12    # "info":Landroid/content/pm/ResolveInfo;
    :goto_142
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p0

    move/from16 v5, p6

    move v9, v8

    goto/16 :goto_1f

    .line 1312
    .end local v11    # "i":I
    :cond_14b
    return-object v6
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 5625
    nop

    .line 5626
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5627
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_19

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "component":Landroid/content/ComponentName;
    .end local p3    # "userId":I
    .local v3, "callingUid":I
    .local v4, "component":Landroid/content/ComponentName;
    .local v6, "userId":I
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    .end local v3    # "callingUid":I
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v6    # "userId":I
    .restart local p1    # "callingUid":I
    .restart local p2    # "component":Landroid/content/ComponentName;
    .restart local p3    # "userId":I
    :cond_19
    move v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "component":Landroid/content/ComponentName;
    .end local p3    # "userId":I
    .restart local v3    # "callingUid":I
    .restart local v4    # "component":Landroid/content/ComponentName;
    .restart local v6    # "userId":I
    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I

    .line 5705
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5707
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "sourceUserId":I
    .end local p4    # "targetUserId":I
    .local v5, "intent":Landroid/content/Intent;
    .local v6, "resolvedType":Ljava/lang/String;
    .local v7, "sourceUserId":I
    .local v8, "targetUserId":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result p1

    move-object v1, v5

    move-object v2, v6

    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolvedType":Ljava/lang/String;
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "resolvedType":Ljava/lang/String;
    const/4 p2, 0x1

    if-eqz p1, :cond_19

    .line 5709
    return p2

    .line 5711
    :cond_19
    invoke-virtual {v1}, Landroid/content/Intent;->hasWebURI()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_55

    .line 5713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 5714
    .local p1, "callingUid":I
    invoke-virtual {p0, v7}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p4

    .line 5715
    .local p4, "parent":Landroid/content/pm/UserInfo;
    if-nez p4, :cond_2b

    .line 5716
    return p3

    .line 5718
    :cond_2b
    iget v6, p4, Landroid/content/pm/UserInfo;->id:I

    move-object v3, v2

    .end local v2    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    iget v2, p4, Landroid/content/pm/UserInfo;->id:I

    .line 5720
    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v2

    .line 5718
    move-object v9, v1

    move-object v10, v3

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .local v9, "intent":Landroid/content/Intent;
    .local v10, "resolvedType":Ljava/lang/String;
    move v3, v6

    move v6, v2

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move v4, p1

    .end local p1    # "callingUid":I
    .local v4, "callingUid":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    .line 5722
    .end local v4    # "callingUid":I
    .local v1, "flags":J
    .restart local p1    # "callingUid":I
    const-wide/32 v3, 0x10000

    or-long/2addr v3, v1

    .line 5723
    .end local v1    # "flags":J
    .local v3, "flags":J
    iget v6, p4, Landroid/content/pm/UserInfo;->id:I

    move v5, v7

    move-object v1, v9

    move-object v2, v10

    .end local v7    # "sourceUserId":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v2    # "resolvedType":Ljava/lang/String;
    .local v5, "sourceUserId":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v6

    .line 5725
    .end local v5    # "sourceUserId":I
    .local v6, "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v7    # "sourceUserId":I
    if-eqz v6, :cond_53

    goto :goto_54

    :cond_53
    move p2, p3

    :goto_54
    return p2

    .line 5727
    .end local v3    # "flags":J
    .end local v6    # "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local p1    # "callingUid":I
    .end local p4    # "parent":Landroid/content/pm/UserInfo;
    :cond_55
    return p3
.end method

.method public canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .registers 14
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5664
    array-length v0, p2

    .line 5665
    .local v0, "targetSize":I
    new-array v1, v0, [Z

    .line 5666
    .local v1, "results":[Z
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5667
    return-object v1

    .line 5669
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5670
    .local v4, "callingUid":I
    const/4 v7, 0x0

    const-string v8, "can package query"

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p3

    .end local p3    # "userId":I
    .local v5, "userId":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5673
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p3

    .line 5674
    .local p3, "sourceSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-array v2, v0, [Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5676
    .local v2, "targetSettings":[Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_2c

    .line 5677
    invoke-virtual {p0, p3, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_2a

    goto :goto_2c

    :cond_2a
    move v7, v3

    goto :goto_2d

    :cond_2c
    :goto_2c
    move v7, v6

    .line 5679
    .local v7, "throwException":Z
    :goto_2d
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    if-nez v7, :cond_4e

    if-ge v8, v0, :cond_4e

    .line 5680
    aget-object v9, p2, v8

    invoke-virtual {p0, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    aput-object v9, v2, v8

    .line 5682
    aget-object v9, v2, v8

    if-eqz v9, :cond_49

    aget-object v9, v2, v8

    .line 5683
    invoke-virtual {p0, v9, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_47

    goto :goto_49

    :cond_47
    move v9, v3

    goto :goto_4a

    :cond_49
    :goto_49
    move v9, v6

    :goto_4a
    move v7, v9

    .line 5679
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 5686
    .end local v8    # "i":I
    :cond_4e
    if-nez v7, :cond_68

    .line 5692
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 5693
    .local v3, "sourcePackageUid":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_59
    if-ge v8, v0, :cond_67

    .line 5694
    aget-object v9, v2, v8

    invoke-virtual {p0, v9, v3, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    xor-int/2addr v9, v6

    aput-boolean v9, v1, v8

    .line 5693
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 5696
    .end local v8    # "i":I
    :cond_67
    return-object v1

    .line 5687
    .end local v3    # "sourcePackageUid":I
    :cond_68
    new-instance v3, Landroid/os/ParcelableException;

    new-instance v6, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package(s) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and/or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 5688
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 5559
    const/4 v0, 0x1

    if-eqz p1, :cond_85

    if-nez p2, :cond_7

    goto/16 :goto_85

    .line 5562
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5563
    .local v1, "setting":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 5564
    return v2

    .line 5567
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5568
    .local v3, "userId":I
    nop

    .line 5569
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5568
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 5571
    .local v4, "targetAppId":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_46

    .line 5572
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v5

    .line 5573
    .local v5, "targetSetting":Ljava/lang/Object;
    if-nez v5, :cond_30

    .line 5574
    return v2

    .line 5576
    :cond_30
    instance-of v2, v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_3d

    .line 5577
    move-object v2, v5

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 5580
    :cond_3d
    move-object v2, v5

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v2

    xor-int/2addr v0, v2

    return v0

    .line 5587
    .end local v5    # "targetSetting":Ljava/lang/Object;
    :cond_46
    instance-of v5, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5e

    .line 5588
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 5589
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v5, :cond_5c

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v6, v5, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v2

    :goto_5d
    return v0

    .line 5591
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_5e
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 5593
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5594
    .local v5, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_6a
    if-ltz v6, :cond_84

    .line 5595
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 5596
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_81

    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v8, v7, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_81

    .line 5597
    return v0

    .line 5594
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_81
    add-int/lit8 v6, v6, -0x1

    goto :goto_6a

    .line 5600
    .end local v6    # "i":I
    :cond_84
    return v2

    .line 5560
    .end local v1    # "setting":Ljava/lang/Object;
    .end local v3    # "userId":I
    .end local v4    # "targetAppId":I
    .end local v5    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_85
    :goto_85
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "throwIfPermNotDeclared"    # Z

    .line 4027
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v4, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "userId":I
    .local v5, "callingUid":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    .line 4028
    .local p1, "uid":I
    if-eq v5, p1, :cond_36

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_36

    .line 4029
    :cond_13
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller uid "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " does not own package "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4032
    :cond_36
    :goto_36
    const/16 p2, 0x3e8

    invoke-virtual {p0, v1, v4, p2}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_40

    .line 4033
    return p3

    .line 4035
    :cond_40
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4036
    .local p2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez p2, :cond_4b

    .line 4037
    return p3

    .line 4039
    :cond_4b
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_54

    .line 4040
    return p3

    .line 4042
    :cond_54
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v2, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 4044
    const-string v0, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    .line 4047
    .local v0, "message":Ljava/lang/String;
    const-string v2, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_6c

    .line 4050
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4051
    return p3

    .line 4048
    :cond_6c
    new-instance p3, Ljava/lang/SecurityException;

    invoke-direct {p3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 4055
    .end local v0    # "message":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    return p3
.end method

.method public final canViewInstantApps(II)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 2121
    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 2122
    return v1

    .line 2124
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 2126
    return v1

    .line 2128
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 2130
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2131
    .local v0, "homeComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2d

    .line 2132
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2133
    return v1

    .line 2136
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2137
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 2136
    :goto_3b
    return v1

    .line 2139
    .end local v0    # "homeComponent":Landroid/content/ComponentName;
    :cond_3c
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "names"    # [Ljava/lang/String;

    .line 3815
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3816
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3817
    return-object p1

    .line 3819
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3820
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3821
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3822
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_5b

    .line 3823
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3824
    .local v6, "cur":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3825
    .local v7, "translateName":Z
    if-eqz v6, :cond_50

    .line 3826
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 3827
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v9, 0x0

    if-eqz v8, :cond_39

    .line 3828
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_39

    move v10, v5

    goto :goto_3a

    :cond_39
    move v10, v9

    .line 3829
    .local v10, "targetIsInstantApp":Z
    :goto_3a
    if-eqz v10, :cond_4e

    if-nez v3, :cond_4e

    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3832
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    .line 3831
    invoke-virtual {v11, v2, v12, v13}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v11

    if-eqz v11, :cond_4f

    :cond_4e
    move v9, v5

    :cond_4f
    move v7, v9

    .line 3834
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "targetIsInstantApp":Z
    :cond_50
    if-eqz v7, :cond_54

    move-object v8, v6

    goto :goto_56

    :cond_54
    aget-object v8, p1, v4

    :goto_56
    aput-object v8, v1, v4

    .line 3822
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3836
    .end local v4    # "i":I
    :cond_5b
    return-object v1
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 6012
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 6013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to be frozen!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6015
    :cond_2b
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4310
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "checkSignatures"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4313
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p3, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4314
    .local p3, "p1":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4316
    .local v0, "p2":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v3, 0x0

    if-nez p3, :cond_22

    move-object v4, v3

    goto :goto_2a

    :cond_22
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4318
    .local v4, "ps1":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_2a
    if-nez v0, :cond_2d

    goto :goto_35

    :cond_2d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4319
    .local v3, "ps2":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_35
    const/4 v5, -0x4

    if-eqz p3, :cond_5a

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_5a

    if-nez v3, :cond_3f

    goto :goto_5a

    .line 4322
    :cond_3f
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-nez v6, :cond_59

    .line 4323
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_59

    .line 4326
    :cond_4c
    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v5

    return v5

    .line 4324
    :cond_59
    :goto_59
    return v5

    .line 4320
    :cond_5a
    :goto_5a
    return v5
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2776
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    .line 2777
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2776
    invoke-interface {v0, v1, p1}, Lmiui/enterprise/IApplicationHelper;->isGrantSystemPermission([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2778
    return v1

    .line 2781
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p2, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkUidSignatures(II)I
    .registers 8
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4331
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4332
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4333
    .local v1, "callingUserId":I
    nop

    .line 4334
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4335
    .local v2, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4336
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 4337
    .local v3, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v2, :cond_1c

    if-nez v3, :cond_17

    goto :goto_1c

    .line 4340
    :cond_17
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4338
    :cond_1c
    :goto_1c
    const/4 v4, -0x4

    return v4
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .registers 11
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4346
    .local v1, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4347
    .local v2, "userId1":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4348
    .local v6, "userId2":I
    const/4 v4, 0x0

    const-string v5, "checkUidSignaturesForAllUsers"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4350
    move v7, v2

    .end local v2    # "userId1":I
    .local v7, "userId1":I
    const-string v5, "checkUidSignaturesForAllUsers"

    move v2, v6

    .end local v6    # "userId2":I
    .local v2, "userId2":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4352
    nop

    .line 4353
    invoke-direct {p0, p1, v1, v7}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 4354
    .local v0, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4355
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 4356
    .local v3, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v0, :cond_2f

    if-nez v3, :cond_2a

    goto :goto_2f

    .line 4359
    :cond_2a
    invoke-direct {p0, v0, v3}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4357
    :cond_2f
    :goto_2f
    const/4 v4, -0x4

    return v4
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .registers 13
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I

    .line 1827
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1828
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1831
    .local v1, "ident":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_56

    .line 1833
    .local v3, "targetIsProfile":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    nop

    .line 1836
    if-eqz v3, :cond_1c

    .line 1837
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .local v4, "className":Ljava/lang/String;
    goto :goto_1e

    .line 1839
    .end local v4    # "className":Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1841
    .restart local v4    # "className":Ljava/lang/String;
    :goto_1e
    new-instance v5, Landroid/content/ComponentName;

    .line 1842
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    .local v5, "forwardingActivityComponentName":Landroid/content/ComponentName;
    nop

    .line 1844
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1846
    .local v6, "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x1

    if-nez v3, :cond_37

    .line 1847
    iput p3, v6, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1848
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1850
    :cond_37
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1851
    const/4 v8, 0x0

    iput v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1852
    iput v8, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1853
    iput v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1854
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1855
    new-instance v7, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1856
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1857
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1858
    return-object v0

    .line 1833
    .end local v3    # "targetIsProfile":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "forwardingActivityComponentName":Landroid/content/ComponentName;
    .end local v6    # "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1834
    throw v3
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "names"    # [Ljava/lang/String;

    .line 3790
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3791
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3792
    return-object p1

    .line 3794
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3795
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3796
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3797
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_59

    .line 3798
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3799
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v7, 0x0

    .line 3800
    .local v7, "translateName":Z
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 3801
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 3802
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v8

    .line 3803
    .local v8, "targetIsInstantApp":Z
    if-eqz v8, :cond_49

    if-nez v3, :cond_49

    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3806
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 3805
    invoke-virtual {v9, v2, v10, v11}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v9

    if-eqz v9, :cond_47

    goto :goto_49

    :cond_47
    const/4 v9, 0x0

    goto :goto_4a

    :cond_49
    :goto_49
    move v9, v5

    :goto_4a
    move v7, v9

    .line 3808
    .end local v8    # "targetIsInstantApp":Z
    :cond_4b
    if-eqz v7, :cond_52

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    goto :goto_54

    :cond_52
    aget-object v8, p1, v4

    :goto_54
    aput-object v8, v1, v4

    .line 3797
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3810
    .end local v4    # "i":I
    :cond_59
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 16
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 3157
    const-string v1, "Failed writing: "

    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3158
    .local v2, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3159
    .local v3, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v4

    .line 3162
    .local v4, "checkin":Z
    if-eqz v2, :cond_1b

    if-nez v3, :cond_1b

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 3163
    return-void

    .line 3166
    :cond_1b
    const/4 v0, 0x0

    const-string v5, "  "

    sparse-switch p1, :sswitch_data_1d2

    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .local v6, "pw":Ljava/io/PrintWriter;
    .local v8, "dumpState":Lcom/android/server/pm/DumpState;
    goto/16 :goto_1d0

    .line 3211
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_25
    if-nez v3, :cond_28

    goto :goto_30

    :cond_28
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_30
    move-object v7, v0

    .line 3212
    .local v7, "filteringAppId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3213
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    .line 3212
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 3215
    goto/16 :goto_1d0

    .line 3284
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v7    # "filteringAppId":Ljava/lang/Integer;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_45
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    if-eqz v2, :cond_4f

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1d0

    .line 3285
    :cond_4f
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p3, v6}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;)V

    .line 3286
    invoke-direct {p0, v6, v2}, Lcom/android/server/pm/ComputerEngine;->dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_1d0

    .line 3240
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_59
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p3, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3241
    .local p3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p4

    if-eqz p4, :cond_69

    .line 3242
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3244
    :cond_69
    const-string p4, "Dexopt state:"

    invoke-virtual {p3, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3245
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3246
    invoke-static {p3, p0, v2}, Lcom/android/server/pm/DexOptHelper;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/String;)V

    .line 3248
    invoke-static {}, Lcom/android/server/pm/DexOptHelperStub;->get()Lcom/android/server/pm/DexOptHelperStub;

    move-result-object p4

    invoke-virtual {p4, p3, v3, v2}, Lcom/android/server/pm/DexOptHelperStub;->dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V

    .line 3250
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3251
    goto/16 :goto_1d0

    .line 3262
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .local p3, "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_80
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p3

    if-eqz p3, :cond_8b

    .line 3263
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3265
    :cond_8b
    new-instance p3, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 p4, 0x78

    invoke-direct {p3, v6, v5, p4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3266
    .local p3, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3267
    const-string p4, "Frozen packages:"

    invoke-virtual {p3, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3269
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-nez p4, :cond_ab

    .line 3270
    const-string p4, "(none)"

    invoke-virtual {p3, p4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d6

    .line 3272
    :cond_ab
    const/4 p4, 0x0

    .local p4, "i":I
    :goto_ac
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-ge p4, v0, :cond_d6

    .line 3273
    const-string/jumbo v0, "package="

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3274
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    const-string v0, ", refCounts="

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3276
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3272
    add-int/lit8 p4, p4, 0x1

    goto :goto_ac

    .line 3279
    .end local p4    # "i":I
    :cond_d6
    :goto_d6
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3280
    goto/16 :goto_1d0

    .line 3220
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p4, "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_db
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    new-instance p3, Landroid/util/IndentingPrintWriter;

    invoke-direct {p3, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3222
    .local p3, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p4

    if-eqz p4, :cond_eb

    .line 3223
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3225
    :cond_eb
    const-string p4, "Domain verification status:"

    invoke-virtual {p3, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3226
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3228
    :try_start_f3
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 3229
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3228
    invoke-interface {p4, p0, p3, v2, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_fd} :catch_fe

    .line 3233
    goto :goto_10a

    .line 3230
    :catch_fe
    move-exception v0

    move-object p4, v0

    .line 3231
    .local p4, "e":Ljava/lang/Exception;
    const-string v0, "Failure printing domain verification information"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3232
    const-string v1, "PackageManager"

    invoke-static {v1, v0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3234
    .end local p4    # "e":Ljava/lang/Exception;
    :goto_10a
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3235
    goto/16 :goto_1d0

    .line 3169
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p4, "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_10f
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p3

    if-eqz p3, :cond_11a

    .line 3170
    invoke-virtual {v6}, Ljava/io/PrintWriter;->println()V

    .line 3172
    :cond_11a
    const-string p3, "Database versions:"

    invoke-virtual {v6, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3173
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance p4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p4, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3174
    goto/16 :goto_1d0

    .line 3187
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_12b
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    .line 3188
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object p3

    .line 3189
    .local p3, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :try_start_134
    new-instance p4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_13e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_134 .. :try_end_13e} :catch_1a1
    .catch Ljava/lang/IllegalStateException; {:try_start_134 .. :try_end_13e} :catch_18a
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_13e} :catch_173

    .line 3191
    .local p4, "str":Ljava/io/BufferedOutputStream;
    :try_start_13e
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, p4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3192
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p3, v0, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3193
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {p3, v0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3195
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3196
    invoke-virtual {v8}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result v5

    .line 3195
    const/4 v7, 0x0

    invoke-virtual {v0, p3, v7, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 3197
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 3198
    invoke-interface {p3}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_164
    .catchall {:try_start_13e .. :try_end_164} :catchall_168

    .line 3199
    :try_start_164
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_167
    .catch Ljava/lang/IllegalArgumentException; {:try_start_164 .. :try_end_167} :catch_1a1
    .catch Ljava/lang/IllegalStateException; {:try_start_164 .. :try_end_167} :catch_18a
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_173

    goto :goto_1b7

    .line 3189
    :catchall_168
    move-exception v0

    move-object v5, v0

    :try_start_16a
    invoke-virtual {p4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_16e

    goto :goto_172

    :catchall_16e
    move-exception v0

    :try_start_16f
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "checkin":Z
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "type":I
    .end local p2    # "fd":Ljava/io/FileDescriptor;
    .end local p3    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_172
    throw v5
    :try_end_173
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16f .. :try_end_173} :catch_1a1
    .catch Ljava/lang/IllegalStateException; {:try_start_16f .. :try_end_173} :catch_18a
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_173} :catch_173

    .line 3203
    .end local p4    # "str":Ljava/io/BufferedOutputStream;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "checkin":Z
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "type":I
    .restart local p2    # "fd":Ljava/io/FileDescriptor;
    .restart local p3    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :catch_173
    move-exception v0

    move-object p4, v0

    .line 3204
    .local p4, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    .end local p4    # "e":Ljava/io/IOException;
    goto :goto_1d0

    .line 3201
    :catch_18a
    move-exception v0

    move-object p4, v0

    .line 3202
    .local p4, "e":Ljava/lang/IllegalStateException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local p4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_1b7

    .line 3199
    :catch_1a1
    move-exception v0

    move-object p4, v0

    .line 3200
    .local p4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3205
    .end local p4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1b7
    goto :goto_1d0

    .line 3182
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .local p3, "pw":Ljava/io/PrintWriter;
    .local p4, "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_1b8
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, v6, v8, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 3183
    goto :goto_1d0

    .line 3255
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_1c0
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p3, v6, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3256
    goto :goto_1d0

    .line 3178
    .end local v6    # "pw":Ljava/io/PrintWriter;
    .end local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local p3    # "pw":Ljava/io/PrintWriter;
    .restart local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    :sswitch_1c8
    move-object v6, p3

    move-object v8, p4

    .end local p3    # "pw":Ljava/io/PrintWriter;
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .restart local v6    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "dumpState":Lcom/android/server/pm/DumpState;
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {p3, v6, v8}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3179
    nop

    .line 3291
    :cond_1d0
    :goto_1d0
    return-void

    nop

    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_1c8
        0x200 -> :sswitch_1c0
        0x1000 -> :sswitch_1b8
        0x2000 -> :sswitch_12b
        0x8000 -> :sswitch_10f
        0x40000 -> :sswitch_db
        0x80000 -> :sswitch_80
        0x100000 -> :sswitch_59
        0x2000000 -> :sswitch_45
        0x4000000 -> :sswitch_25
    .end sparse-switch
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 6043
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 6044
    return-void
.end method

.method public dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 6034
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .end local p5    # "checkin":Z
    .local v1, "pw":Ljava/io/PrintWriter;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "dumpState":Lcom/android/server/pm/DumpState;
    .local v5, "checkin":Z
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 6036
    invoke-static {}, Lcom/android/server/art/policy/ArtPolicyStub;->getInstance()Lcom/android/server/art/policy/ArtPolicyStub;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/android/server/art/policy/ArtPolicyStub;->dumpPackageUsage(Ljava/io/PrintWriter;)V

    .line 6038
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6060
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6061
    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    .line 6027
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 6028
    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6065
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6066
    return-void
.end method

.method public dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "checkin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    .line 6050
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p4    # "dumpState":Lcom/android/server/pm/DumpState;
    .end local p5    # "checkin":Z
    .local v1, "pw":Ljava/io/PrintWriter;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "dumpState":Lcom/android/server/pm/DumpState;
    .local v5, "checkin":Z
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 6051
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6055
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6056
    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2969
    if-ltz p2, :cond_49

    .line 2972
    if-eqz p4, :cond_10

    .line 2973
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2974
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2973
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2977
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2978
    .local v4, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "requireFullPermission":Z
    .local v3, "callingUid":I
    .local v5, "userId":I
    .local v6, "requireFullPermission":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 2980
    return-void

    .line 2982
    :cond_20
    invoke-virtual {p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result p1

    .line 2983
    .local p1, "isSameProfileGroup":Z
    if-eqz p1, :cond_3a

    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 2988
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2983
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v1, -0x1

    invoke-static {p2, v0, v1, v3, p3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3a

    .line 2990
    return-void

    .line 2992
    :cond_3a
    invoke-static {v3, v5, p5, v6, p1}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p2

    .line 2994
    .local p2, "errorMessage":Ljava/lang/String;
    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    new-instance p3, Ljava/lang/SecurityException;

    invoke-direct {p3, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2970
    .end local v3    # "callingUid":I
    .end local v4    # "callingUserId":I
    .end local v5    # "userId":I
    .end local v6    # "requireFullPermission":Z
    .local p1, "callingUid":I
    .local p2, "userId":I
    .restart local p3    # "requireFullPermission":Z
    :cond_49
    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "requireFullPermission":Z
    .restart local v3    # "callingUid":I
    .restart local v5    # "userId":I
    .restart local v6    # "requireFullPermission":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid userId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 3033
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "requireFullPermission":Z
    .end local p4    # "checkShell":Z
    .end local p5    # "message":Ljava/lang/String;
    .local v1, "callingUid":I
    .local v2, "userId":I
    .local v3, "requireFullPermission":Z
    .local v4, "checkShell":Z
    .local v6, "message":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 3035
    return-void
.end method

.method public final enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z
    .param p6, "message"    # Ljava/lang/String;

    .line 3051
    if-ltz p2, :cond_2f

    .line 3054
    if-eqz p4, :cond_10

    .line 3055
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 3056
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 3055
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 3059
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3060
    .local v4, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move v7, p5

    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "requireFullPermission":Z
    .end local p5    # "requirePermissionWhenSameUser":Z
    .local v3, "callingUid":I
    .local v5, "userId":I
    .local v6, "requireFullPermission":Z
    .local v7, "requirePermissionWhenSameUser":Z
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 3063
    return-void

    .line 3065
    :cond_20
    invoke-static {v3, v5, p6, v6}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 3067
    .local p1, "errorMessage":Ljava/lang/String;
    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3052
    .end local v3    # "callingUid":I
    .end local v4    # "callingUserId":I
    .end local v5    # "userId":I
    .end local v6    # "requireFullPermission":Z
    .end local v7    # "requirePermissionWhenSameUser":Z
    .local p1, "callingUid":I
    .restart local p2    # "userId":I
    .restart local p3    # "requireFullPermission":Z
    .restart local p5    # "requirePermissionWhenSameUser":Z
    :cond_2f
    move v3, p1

    move v5, p2

    move v6, p3

    .end local p1    # "callingUid":I
    .end local p2    # "userId":I
    .end local p3    # "requireFullPermission":Z
    .restart local v3    # "callingUid":I
    .restart local v5    # "userId":I
    .restart local v6    # "requireFullPermission":Z
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid userId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public filterAppAccess(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 3127
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 3129
    const/4 v0, 0x0

    if-ne p2, p1, :cond_b

    .line 3130
    return v0

    .line 3132
    :cond_b
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 3134
    .local v2, "clientAppUid":I
    if-ne v2, p1, :cond_12

    .line 3135
    return v0

    .line 3138
    :cond_12
    return v1

    .line 3140
    .end local v2    # "clientAppUid":I
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3141
    .local v0, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3142
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 3143
    .local v3, "setting":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 3144
    return v1

    .line 3146
    :cond_24
    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_30

    .line 3147
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1

    return v1

    .line 3149
    :cond_30
    instance-of v4, v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v4, :cond_3c

    .line 3150
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1

    .line 3153
    :cond_3c
    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 3115
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3116
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method public filterAppAccess(Ljava/lang/String;IIZ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "filterUninstalled"    # Z

    .line 3121
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3122
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move v5, p3

    move v6, p4

    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .end local p4    # "filterUninstalled":Z
    .local v2, "callingUid":I
    .local v5, "userId":I
    .local v6, "filterUninstalled":Z
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p2

    return p2
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 5836
    if-nez p1, :cond_b

    .line 5837
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 5840
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5842
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_65

    aget-object v4, p1, v3

    .line 5843
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 5844
    goto :goto_62

    .line 5847
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5848
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v6, "PackageManager"

    if-eqz v5, :cond_4b

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_2a

    goto :goto_4b

    .line 5853
    :cond_2a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v7

    if-nez v7, :cond_47

    .line 5854
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not system"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    goto :goto_62

    .line 5858
    :cond_47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 5849
    :cond_4b
    :goto_4b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5850
    nop

    .line 5842
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5861
    :cond_65
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public final filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 7
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2256
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->filterSdkLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;
    .registers 26
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "debug"    # Z
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZI)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 3622
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    move/from16 v5, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    .line 3623
    .local v6, "n":I
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3624
    invoke-virtual {v0, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 3626
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v2, :cond_16

    if-eqz p6, :cond_1b

    .line 3627
    :cond_16
    const-string v2, "Looking for persistent preferred activities..."

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    :cond_1b
    const/4 v8, 0x0

    if-eqz v0, :cond_36

    .line 3630
    const-wide/32 v2, 0x10000

    and-long v2, p3, v2

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    move v4, v2

    goto :goto_2d

    :cond_2c
    move v4, v8

    :goto_2d
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    goto :goto_37

    .line 3633
    :cond_36
    const/4 v4, 0x0

    :goto_37
    nop

    .line 3634
    .local v4, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    if-eqz v4, :cond_121

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_121

    .line 3635
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 3636
    .local v2, "m":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_45
    if-ge v3, v2, :cond_11c

    .line 3637
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3638
    .local v10, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v12, "  "

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v11, :cond_57

    if-eqz p6, :cond_8e

    .line 3639
    :cond_57
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 3640
    invoke-virtual {v10}, Lcom/android/server/pm/PersistentPreferredActivity;->countDataSchemes()I

    move-result v15

    if-lez v15, :cond_6d

    invoke-virtual {v10, v8}, Lcom/android/server/pm/PersistentPreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_6f

    :cond_6d
    const-string v15, "<none>"

    :goto_6f
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v15, "\n  component="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v15, v10, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3639
    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    new-instance v11, Landroid/util/LogPrinter;

    invoke-direct {v11, v14, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/pm/PersistentPreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3644
    :cond_8e
    iget-object v11, v10, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v15, 0x200

    const/16 v17, 0x0

    or-long v8, p3, v15

    invoke-virtual {v1, v11, v8, v9, v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 3646
    .local v8, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v9, :cond_a0

    if-eqz p6, :cond_b5

    .line 3647
    :cond_a0
    const-string v9, "Found persistent preferred activity:"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    if-eqz v8, :cond_b0

    .line 3649
    new-instance v9, Landroid/util/LogPrinter;

    invoke-direct {v9, v14, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v8, v9, v12}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_b5

    .line 3651
    :cond_b0
    const-string v9, "  null"

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_b5
    :goto_b5
    if-nez v8, :cond_ba

    .line 3657
    move-object/from16 v11, p5

    goto :goto_117

    .line 3659
    :cond_ba
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_bb
    if-ge v9, v6, :cond_115

    .line 3660
    move-object/from16 v11, p5

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3661
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3662
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d6

    .line 3663
    goto :goto_e3

    .line 3665
    :cond_d6
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e6

    .line 3666
    nop

    .line 3659
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_e3
    add-int/lit8 v9, v9, 0x1

    goto :goto_bb

    .line 3669
    .restart local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e6
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v13, :cond_ec

    if-eqz p6, :cond_114

    .line 3670
    :cond_ec
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Returning persistent preferred activity: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    :cond_114
    return-object v12

    .line 3659
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_115
    move-object/from16 v11, p5

    .line 3636
    .end local v8    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "j":I
    .end local v10    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :goto_117
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_45

    :cond_11c
    move-object/from16 v11, p5

    const/16 v17, 0x0

    goto :goto_125

    .line 3634
    .end local v2    # "m":I
    .end local v3    # "i":I
    :cond_121
    move-object/from16 v11, p5

    const/16 v17, 0x0

    .line 3677
    :goto_125
    return-object v17
.end method

.method protected findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 45
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "always"    # Z
    .param p7, "removeMatches"    # Z
    .param p8, "debug"    # Z
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .param p11, "callingUid"    # I
    .param p12, "isDeviceProvisioned"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 3375
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3376
    const/4 v0, 0x0

    move v3, v0

    .end local p9    # "userId":I
    .local v0, "userId":I
    goto :goto_10

    .line 3375
    .end local v0    # "userId":I
    .restart local p9    # "userId":I
    :cond_f
    move v3, v1

    .line 3380
    .end local p9    # "userId":I
    .local v3, "userId":I
    :goto_10
    new-instance v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    move-object v8, v0

    .line 3382
    .local v8, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    nop

    .line 3384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, p3

    move v2, v3

    move-object/from16 v3, p2

    .end local v3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    .line 3382
    move v3, v2

    .end local v2    # "userId":I
    .restart local v3    # "userId":I
    const/4 v5, 0x0

    move-wide/from16 v1, p3

    move/from16 v4, p11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v1

    .line 3386
    .end local p3    # "flags":J
    .local v1, "flags":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 3389
    .end local p1    # "intent":Landroid/content/Intent;
    .local v0, "intent":Landroid/content/Intent;
    move-object/from16 v5, p5

    move/from16 v6, p8

    move v7, v3

    move-wide v3, v1

    move-object/from16 v2, p2

    move-object v1, v0

    move-object/from16 v0, p0

    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v3, "flags":J
    .local v7, "userId":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    move-wide/from16 v30, v3

    move v3, v7

    move-wide/from16 v6, v30

    move-object v10, v5

    .end local v7    # "userId":I
    .local v3, "userId":I
    .local v6, "flags":J
    iput-object v9, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3393
    iget-object v2, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_4e

    .line 3394
    return-object v8

    .line 3397
    :cond_4e
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 3399
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v9, "PackageManager"

    if-nez v4, :cond_5c

    if-eqz p8, :cond_61

    :cond_5c
    const-string v4, "Looking for preferred activities..."

    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3400
    :cond_61
    if-eqz v2, :cond_82

    .line 3401
    const-wide/32 v4, 0x10000

    and-long/2addr v4, v6

    const-wide/16 v14, 0x0

    cmp-long v4, v4, v14

    if-eqz v4, :cond_6f

    const/4 v4, 0x1

    goto :goto_70

    :cond_6f
    const/4 v4, 0x0

    :goto_70
    move-object v5, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    move v5, v3

    move-object/from16 v3, p2

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "userId":I
    .local v0, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .local v2, "intent":Landroid/content/Intent;
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v30, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v1, v30

    .end local v0    # "pir":Lcom/android/server/pm/PreferredIntentResolver;
    .restart local v1    # "intent":Landroid/content/Intent;
    .local v2, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    goto :goto_86

    .line 3404
    .end local v5    # "userId":I
    .restart local v3    # "userId":I
    :cond_82
    move v5, v3

    move-object/from16 v3, p2

    .end local v3    # "userId":I
    .restart local v5    # "userId":I
    const/4 v4, 0x0

    :goto_86
    nop

    .line 3405
    .local v4, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v4, :cond_445

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_445

    .line 3410
    const/4 v14, 0x0

    .line 3412
    .local v14, "match":I
    sget-boolean v15, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v15, :cond_96

    if-eqz p8, :cond_9b

    .line 3413
    :cond_96
    const-string v15, "Figuring out best match..."

    invoke-static {v9, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    :cond_9b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    .line 3417
    .local v15, "n":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "j":I
    :goto_a3
    if-ge v11, v15, :cond_ed

    .line 3418
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 3419
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    sget-boolean v16, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v16, :cond_b7

    if-eqz p8, :cond_b4

    goto :goto_b7

    :cond_b4
    move-wide/from16 v16, v6

    goto :goto_e1

    .line 3420
    :cond_b7
    :goto_b7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v6

    .end local v6    # "flags":J
    .local v16, "flags":J
    const-string v6, "Match for "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Landroid/content/pm/ResolveInfo;->match:I

    .line 3421
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3420
    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3423
    :goto_e1
    iget v6, v13, Landroid/content/pm/ResolveInfo;->match:I

    if-le v6, v14, :cond_e8

    .line 3424
    iget v6, v13, Landroid/content/pm/ResolveInfo;->match:I

    move v14, v6

    .line 3417
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e8
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v6, v16

    goto :goto_a3

    .end local v16    # "flags":J
    .restart local v6    # "flags":J
    :cond_ed
    move-wide/from16 v16, v6

    .line 3428
    .end local v6    # "flags":J
    .end local v11    # "j":I
    .restart local v16    # "flags":J
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v6, :cond_f5

    if-eqz p8, :cond_10f

    .line 3429
    :cond_f5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Best match: 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    :cond_10f
    const/high16 v6, 0xfff0000

    and-int/2addr v6, v14

    .line 3432
    .end local v14    # "match":I
    .local v6, "match":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 3433
    .local v7, "m":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_117
    if-ge v11, v7, :cond_43b

    .line 3434
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PreferredActivity;

    .line 3435
    .local v12, "pa":Lcom/android/server/pm/PreferredActivity;
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v14, "  "

    move-object/from16 p9, v4

    .end local v4    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p9, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-nez v13, :cond_12d

    if-eqz p8, :cond_12a

    goto :goto_12d

    :cond_12a
    move/from16 v24, v7

    goto :goto_16d

    .line 3436
    :cond_12d
    :goto_12d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking PreferredActivity ds="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3437
    invoke-virtual {v12}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v13

    if-lez v13, :cond_144

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_146

    :cond_144
    const-string v20, "<none>"

    :goto_146
    move-object/from16 v13, v20

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\n  component="

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3436
    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    new-instance v4, Landroid/util/LogPrinter;

    move/from16 v24, v7

    const/4 v7, 0x2

    const/4 v13, 0x3

    .end local v7    # "m":I
    .local v24, "m":I
    invoke-direct {v4, v7, v9, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v12, v4, v14}, Lcom/android/server/pm/PreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3441
    :goto_16d
    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v4, v6, :cond_198

    .line 3442
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v4, :cond_179

    if-eqz p8, :cond_1ab

    .line 3443
    :cond_179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping bad match "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v7, v7, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3444
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3443
    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ab

    .line 3450
    :cond_198
    if-eqz p6, :cond_1b5

    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v4, v4, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v4, :cond_1b5

    .line 3451
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v4, :cond_1a6

    if-eqz p8, :cond_1ab

    :cond_1a6
    const-string v4, "Skipping mAlways=false entry"

    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_1ab
    :goto_1ab
    move/from16 v29, v5

    move v13, v6

    move/from16 v25, v11

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_42f

    .line 3456
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_1b5
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_1c4

    .line 3457
    const-wide/32 v20, 0x402000

    or-long v16, v16, v20

    .line 3460
    :cond_1c4
    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v20, 0x200

    or-long v20, v16, v20

    const-wide/32 v22, 0x80000

    or-long v20, v20, v22

    const-wide/32 v22, 0x40000

    move v13, v6

    .end local v6    # "match":I
    .local v13, "match":I
    or-long v6, v20, v22

    invoke-virtual {v0, v4, v6, v7, v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3464
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v6, :cond_1e5

    if-eqz p8, :cond_1e2

    goto :goto_1e5

    :cond_1e2
    move/from16 v25, v11

    goto :goto_200

    .line 3465
    :cond_1e5
    :goto_1e5
    const-string v6, "Found preferred activity:"

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    if-eqz v4, :cond_1f9

    .line 3467
    new-instance v6, Landroid/util/LogPrinter;

    move/from16 v25, v11

    const/4 v7, 0x3

    const/4 v11, 0x2

    .end local v11    # "i":I
    .local v25, "i":I
    invoke-direct {v6, v11, v9, v7}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v6, v14}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_200

    .line 3469
    .end local v25    # "i":I
    .restart local v11    # "i":I
    :cond_1f9
    move/from16 v25, v11

    .end local v11    # "i":I
    .restart local v25    # "i":I
    const-string v6, "  null"

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    :goto_200
    invoke-static {v1}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_20a

    if-nez p12, :cond_20a

    const/4 v6, 0x1

    goto :goto_20b

    :cond_20a
    const/4 v6, 0x0

    .line 3474
    .local v6, "excludeSetupWizardHomeActivity":Z
    :goto_20b
    if-nez v6, :cond_211

    if-nez p10, :cond_211

    const/4 v7, 0x1

    goto :goto_212

    :cond_211
    const/4 v7, 0x0

    .line 3476
    .local v7, "allowSetMutation":Z
    :goto_212
    if-nez v4, :cond_244

    .line 3479
    if-nez v7, :cond_21d

    .line 3480
    move/from16 v29, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_42f

    .line 3488
    :cond_21d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing dangling preferred activity: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v14, v14, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    invoke-virtual {v2, v12}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3491
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3492
    move/from16 v29, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_42f

    .line 3494
    :cond_244
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_245
    if-ge v11, v15, :cond_423

    .line 3495
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 3496
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v26, v7

    .end local v7    # "allowSetMutation":Z
    .local v26, "allowSetMutation":Z
    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v27, v11

    .end local v11    # "j":I
    .local v27, "j":I
    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3497
    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_262

    .line 3498
    goto :goto_26f

    .line 3500
    :cond_262
    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_274

    .line 3501
    nop

    .line 3494
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_26f
    add-int/lit8 v11, v27, 0x1

    move/from16 v7, v26

    .end local v27    # "j":I
    .restart local v11    # "j":I
    goto :goto_245

    .line 3504
    .end local v11    # "j":I
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v27    # "j":I
    :cond_274
    if-eqz p7, :cond_2aa

    if-eqz v26, :cond_2aa

    .line 3505
    invoke-virtual {v2, v12}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3506
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3507
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_2a3

    .line 3508
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing match "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v11, v11, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v29, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_42f

    .line 3507
    :cond_2a3
    move/from16 v29, v5

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto/16 :goto_42f

    .line 3519
    :cond_2aa
    if-eqz p6, :cond_3ed

    iget-object v7, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3520
    invoke-virtual {v7, v10, v6, v5}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v7

    if-nez v7, :cond_3e7

    .line 3521
    iget-object v7, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v7, v10, v6}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v7

    const-string v11, " type "

    if-eqz v7, :cond_32b

    .line 3522
    if-eqz v26, :cond_317

    .line 3525
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_2e5

    .line 3526
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v4

    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v28, "ai":Landroid/content/pm/ActivityInfo;
    const-string v4, "Result set changed, but PreferredActivity is still valid as only non-preferred components were removed for "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e7

    .line 3525
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2e5
    move-object/from16 v28, v4

    .line 3533
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v28    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2e7
    new-instance v18, Lcom/android/server/pm/PreferredActivity;

    iget-object v4, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v4, v4, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v7, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3535
    invoke-virtual {v7, v10}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v21

    iget-object v7, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    iget-object v11, v12, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v11, v11, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move/from16 v20, v4

    move-object/from16 v22, v7

    move/from16 v23, v11

    move-object/from16 v19, v12

    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v19, "pa":Lcom/android/server/pm/PreferredActivity;
    invoke-direct/range {v18 .. v23}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v4, v19

    .end local v19    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v7, v18

    .line 3538
    .local v7, "freshPa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3539
    invoke-virtual {v2, v0, v7}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3540
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3541
    .end local v7    # "freshPa":Lcom/android/server/pm/PreferredActivity;
    move/from16 v29, v5

    goto/16 :goto_3f2

    .line 3542
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_317
    move-object/from16 v28, v4

    move-object v4, v12

    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v28    # "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v7, :cond_327

    .line 3543
    const-string v7, "Do not remove preferred activity"

    invoke-static {v9, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v29, v5

    goto/16 :goto_3f2

    .line 3542
    :cond_327
    move/from16 v29, v5

    goto/16 :goto_3f2

    .line 3547
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_32b
    move-object/from16 v28, v4

    move-object v4, v12

    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v28    # "ai":Landroid/content/pm/ActivityInfo;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_344

    .line 3548
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_344

    const/4 v7, 0x1

    goto :goto_345

    :cond_344
    const/4 v7, 0x0

    .line 3549
    .local v7, "isHomeActivity":Z
    :goto_345
    if-nez v7, :cond_3e4

    .line 3553
    if-eqz v26, :cond_3de

    .line 3554
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v5

    .end local v5    # "userId":I
    .local v29, "userId":I
    const-string v5, "Result set changed, dropping preferred activity for "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v5, :cond_387

    .line 3559
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Removing preferred activity since set changed "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v11, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v11, v11, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    :cond_387
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3565
    new-instance v18, Lcom/android/server/pm/PreferredActivity;

    iget-object v5, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v5, v5, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v11, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v11, v11, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/16 v23, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v22, v11

    .end local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v19    # "pa":Lcom/android/server/pm/PreferredActivity;
    invoke-direct/range {v18 .. v23}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .end local v19    # "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v4    # "pa":Lcom/android/server/pm/PreferredActivity;
    move-object/from16 v5, v18

    .line 3568
    .local v5, "lastChosen":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v2, v0, v5}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3569
    const/4 v11, 0x1

    iput-boolean v11, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "preferred:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v12, v12, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 3572
    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", while query:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/content/pm/ResolveInfo;

    .line 3574
    invoke-interface {v10, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3571
    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e0

    .line 3553
    .end local v29    # "userId":I
    .local v5, "userId":I
    :cond_3de
    move/from16 v29, v5

    .line 3577
    .end local v5    # "userId":I
    .restart local v29    # "userId":I
    :goto_3e0
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3578
    return-object v8

    .line 3549
    .end local v29    # "userId":I
    .restart local v5    # "userId":I
    :cond_3e4
    move/from16 v29, v5

    .end local v5    # "userId":I
    .restart local v29    # "userId":I
    goto :goto_3f2

    .line 3520
    .end local v7    # "isHomeActivity":Z
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v29    # "userId":I
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "userId":I
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_3e7
    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v4, v12

    .end local v5    # "userId":I
    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "userId":I
    goto :goto_3f2

    .line 3519
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v29    # "userId":I
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "userId":I
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_3ed
    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object v4, v12

    .line 3584
    .end local v5    # "userId":I
    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .local v4, "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v29    # "userId":I
    :goto_3f2
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v5, :cond_3f8

    if-eqz p8, :cond_420

    .line 3585
    :cond_3f8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returning preferred activity: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    :cond_420
    iput-object v14, v8, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3589
    return-object v8

    .line 3494
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "allowSetMutation":Z
    .end local v27    # "j":I
    .end local v28    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v29    # "userId":I
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "userId":I
    .local v7, "allowSetMutation":Z
    .restart local v11    # "j":I
    .restart local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_423
    move-object/from16 v28, v4

    move/from16 v29, v5

    move/from16 v26, v7

    move/from16 v27, v11

    move-object v4, v12

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 3433
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "userId":I
    .end local v6    # "excludeSetupWizardHomeActivity":Z
    .end local v7    # "allowSetMutation":Z
    .end local v11    # "j":I
    .end local v12    # "pa":Lcom/android/server/pm/PreferredActivity;
    .restart local v29    # "userId":I
    :goto_42f
    add-int/lit8 v4, v25, 0x1

    move v11, v4

    move v6, v13

    move/from16 v7, v24

    move/from16 v5, v29

    move-object/from16 v4, p9

    .end local v25    # "i":I
    .local v4, "i":I
    goto/16 :goto_117

    .end local v13    # "match":I
    .end local v24    # "m":I
    .end local v29    # "userId":I
    .end local p9    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v4, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v5    # "userId":I
    .local v6, "match":I
    .local v7, "m":I
    .local v11, "i":I
    :cond_43b
    move-object/from16 p9, v4

    move/from16 v29, v5

    move v13, v6

    move/from16 v24, v7

    move/from16 v25, v11

    .end local v4    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v5    # "userId":I
    .end local v6    # "match":I
    .end local v7    # "m":I
    .end local v11    # "i":I
    .restart local v13    # "match":I
    .restart local v24    # "m":I
    .restart local v25    # "i":I
    .restart local v29    # "userId":I
    .restart local p9    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    goto :goto_44b

    .line 3405
    .end local v13    # "match":I
    .end local v15    # "n":I
    .end local v16    # "flags":J
    .end local v24    # "m":I
    .end local v25    # "i":I
    .end local v29    # "userId":I
    .end local p9    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v4    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v5    # "userId":I
    .local v6, "flags":J
    :cond_445
    move-object/from16 p9, v4

    move/from16 v29, v5

    move-wide/from16 v16, v6

    .line 3593
    .end local v4    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v5    # "userId":I
    .end local v6    # "flags":J
    .restart local v16    # "flags":J
    .restart local v29    # "userId":I
    .restart local p9    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    :goto_44b
    return-object v8
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 25
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p6, "always"    # Z
    .param p7, "removeMatches"    # Z
    .param p8, "debug"    # Z
    .param p9, "userId"    # I
    .param p10, "queryMayBeFiltered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;ZZZIZ)",
            "Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;"
        }
    .end annotation

    .line 3607
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3610
    .local v11, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3611
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v12, v1

    goto :goto_17

    :cond_16
    move v12, v2

    .line 3614
    .local v12, "isDeviceProvisioned":Z
    :goto_17
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v13

    return-object v13
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 973
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 974
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 975
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_53

    .line 976
    move-object v2, p0

    move-wide v6, p2

    move v4, p4

    move v5, p5

    .end local p2    # "flags":J
    .end local p4    # "filterCallingUid":I
    .end local p5    # "userId":I
    .local v4, "filterCallingUid":I
    .local v5, "userId":I
    .local v6, "flags":J
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result p2

    move p3, v4

    move-wide v8, v6

    move-object v7, v3

    move-wide v3, v8

    .end local v4    # "filterCallingUid":I
    .end local v6    # "flags":J
    .local v3, "flags":J
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local p3, "filterCallingUid":I
    if-eqz p2, :cond_21

    .line 977
    return-object v1

    .line 979
    :cond_21
    invoke-virtual {p0, v7, p3, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 980
    return-object v1

    .line 982
    :cond_28
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object p2

    if-nez p2, :cond_38

    .line 983
    invoke-virtual {p0, v7, v3, v4, v5}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 984
    .local p2, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_37

    .line 985
    iget-object p4, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p4

    .line 987
    :cond_37
    return-object v1

    .line 989
    .end local p2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_38
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 990
    move v6, v5

    .end local v5    # "userId":I
    .local v6, "userId":I
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 989
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 991
    move v5, v6

    .end local v6    # "userId":I
    .restart local v5    # "userId":I
    .local p2, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz p2, :cond_52

    .line 992
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 994
    :cond_52
    return-object p2

    .line 996
    .end local v5    # "userId":I
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "filterCallingUid":I
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local p2, "flags":J
    .restart local p4    # "filterCallingUid":I
    .restart local p5    # "userId":I
    :cond_53
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 21
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1503
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v12, p4

    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v1

    invoke-interface {v1}, Lmiui/enterprise/IApplicationHelper;->isNeglectUserId()Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1504
    invoke-virtual {v1, v12}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1a

    return-object v14

    .line 1506
    :cond_1a
    if-nez v13, :cond_1d

    .line 1507
    return-object v14

    .line 1509
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1516
    .local v15, "callingUid":I
    invoke-virtual {v0, v13, v15, v12}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1517
    return-object v14

    .line 1520
    :cond_28
    const-wide/16 v1, 0x2000

    and-long v1, p2, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3e

    .line 1521
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1522
    const-wide/32 v1, 0x400000

    or-long v1, p2, v1

    .end local p2    # "flags":J
    .local v1, "flags":J
    goto :goto_40

    .line 1525
    .end local v1    # "flags":J
    .restart local p2    # "flags":J
    :cond_3e
    move-wide/from16 v1, p2

    .end local p2    # "flags":J
    .restart local v1    # "flags":J
    :goto_40
    invoke-interface {v13, v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 1526
    .local v11, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move-wide v5, v3

    move-wide v3, v1

    .end local v1    # "flags":J
    .local v3, "flags":J
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    .line 1527
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v1, :cond_ef

    .line 1529
    const-wide/16 v7, 0x100

    and-long/2addr v7, v3

    cmp-long v2, v7, v5

    if-nez v2, :cond_56

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    goto :goto_64

    .line 1530
    :cond_56
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v12, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-interface {v2, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v2

    :goto_64
    nop

    .line 1532
    .local v2, "gids":[I
    const-wide/16 v7, 0x1000

    and-long v9, v3, v7

    cmp-long v9, v9, v5

    if-eqz v9, :cond_83

    .line 1533
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_78

    goto :goto_83

    .line 1534
    :cond_78
    iget-object v9, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    goto :goto_87

    .line 1533
    :cond_83
    :goto_83
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 1534
    :goto_87
    nop

    .line 1536
    .local v9, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-long/2addr v7, v3

    cmp-long v5, v7, v5

    if-eqz v5, :cond_a4

    .line 1537
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_98

    goto :goto_a4

    .line 1538
    :cond_98
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v12}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v5

    move-object v10, v5

    goto :goto_a9

    .line 1537
    :cond_a4
    :goto_a4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v10, v5

    .line 1538
    :goto_a9
    nop

    .line 1540
    .local v10, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 1541
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v5

    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v7

    .line 1540
    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1544
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_ba

    .line 1545
    return-object v14

    .line 1548
    :cond_ba
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1549
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1551
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->provideInfoOfApkInApex()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 1552
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getApexModuleName()Ljava/lang/String;

    move-result-object v6

    .line 1553
    .local v6, "apexModuleName":Ljava/lang/String;
    if-eqz v6, :cond_d9

    .line 1554
    iget-object v7, v0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1555
    invoke-virtual {v7, v6}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInfo;->setApexPackageName(Ljava/lang/String;)V

    .line 1558
    .end local v6    # "apexModuleName":Ljava/lang/String;
    :cond_d9
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->verificationService()Z

    move-result v6

    if-eqz v6, :cond_ee

    .line 1559
    nop

    .line 1560
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getDeveloperVerificationStatusInternal()Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;

    move-result-object v6

    .line 1561
    .local v6, "developerVerificationStatusInternal":Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    if-eqz v6, :cond_ee

    .line 1562
    nop

    .line 1563
    invoke-virtual {v6}, Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;->isAppMetadataVerified()Z

    move-result v7

    .line 1562
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageInfo;->setIsAppMetadataVerified(Z)V

    .line 1566
    .end local v6    # "developerVerificationStatusInternal":Lcom/android/server/pm/verify/developer/DeveloperVerificationStatusInternal;
    :cond_ee
    return-object v5

    .line 1567
    .end local v2    # "gids":[I
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_ef
    const-wide v7, 0x100002000L    # 2.1219998384E-314

    and-long/2addr v7, v3

    cmp-long v2, v7, v5

    if-eqz v2, :cond_1c6

    .line 1568
    invoke-static {v11, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 1569
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1570
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1571
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1572
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v5

    .line 1573
    .local v5, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v5, :cond_11f

    invoke-interface {v5}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v14

    :cond_11f
    iput-object v14, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1574
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1575
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1577
    new-instance v6, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1578
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1579
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v12, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1580
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1581
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1582
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1583
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1584
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1585
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTargetSdkVersion()I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1586
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1587
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1588
    invoke-static {v6, v3, v4, v11, v12}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1590
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 1591
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-static {v7, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1592
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    if-eqz v7, :cond_19e

    .line 1593
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    .line 1596
    :cond_19e
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v7, :cond_1c5

    .line 1597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ps.pkg is n/a for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1598
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Provides a minimum info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1597
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_1c5
    return-object v2

    .line 1602
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1c6
    return-object v14
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .local v1, "component":Landroid/content/ComponentName;
    .local v2, "flags":J
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 902
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 903
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v3

    .line 905
    .end local p2    # "flags":J
    .local v3, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v6, p4

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p4    # "userId":I
    .local v2, "component":Landroid/content/ComponentName;
    .local v6, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 916
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 917
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v6

    .line 919
    .end local p2    # "flags":J
    .local v6, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v1

    if-nez v1, :cond_25

    .line 920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get activity info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 925
    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move-wide v2, v6

    .end local v6    # "flags":J
    .local v2, "flags":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    return-object v6
.end method

.method protected getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 930
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v1

    .line 933
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const-wide v2, 0x200000000L

    or-long/2addr v2, p2

    .line 935
    .end local p2    # "flags":J
    .local v2, "flags":J
    sget-boolean p2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz p2, :cond_32

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getActivityInfo "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_32
    const/4 p2, 0x0

    if-nez v1, :cond_37

    move-object v0, p2

    goto :goto_44

    :cond_37
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/pkg/AndroidPackage;

    move-object v0, p3

    .line 938
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_44
    if-eqz v0, :cond_85

    move-wide v3, v2

    move-object v2, v1

    move-object v1, v0

    .end local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v3, "flags":J
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result p3

    move-object v9, v1

    move-object v6, v2

    move-wide v7, v3

    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v3    # "flags":J
    .local v6, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v7, "flags":J
    .local v9, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz p3, :cond_80

    .line 939
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 940
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_62

    return-object p2

    .line 941
    :cond_62
    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    move v2, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p3

    if-eqz p3, :cond_6e

    .line 943
    return-object p2

    .line 945
    :cond_6e
    nop

    .line 946
    invoke-interface {v1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 945
    move-object v0, v6

    move-object v6, v1

    move-object v1, v0

    move-wide v2, v7

    move-object v0, v9

    .end local v7    # "flags":J
    .end local v9    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v2, "flags":J
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    move-wide v3, v2

    move-object v2, v1

    move-object v1, v0

    .end local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v3    # "flags":J
    return-object p2

    .line 938
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v3    # "flags":J
    .local v6, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v7    # "flags":J
    .restart local v9    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_80
    move v5, p5

    move-object v2, v6

    move-wide v3, v7

    move-object v1, v9

    .end local v6    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v7    # "flags":J
    .end local v9    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v2    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v3    # "flags":J
    goto :goto_89

    .end local v3    # "flags":J
    .restart local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v2, "flags":J
    :cond_85
    move v5, p5

    move-wide v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 948
    .end local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v3    # "flags":J
    :goto_89
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9c

    .line 949
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object p3, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-static {p2, v3, v4, p3, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    return-object p2

    .line 952
    :cond_9c
    return-object p2
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 3

    .line 1699
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 5177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5178
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5180
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5181
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5182
    .local v1, "callingUserId":I
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5183
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 5184
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_1f
    if-eqz v3, :cond_7a

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_7a

    .line 5187
    :cond_2c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5188
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 5190
    :cond_37
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 5191
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5192
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_45
    if-ge v6, v4, :cond_74

    .line 5193
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 5194
    .local v7, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 5195
    .local v8, "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_56
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_71

    .line 5196
    new-instance v10, Landroid/content/IntentFilter;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5195
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 5192
    .end local v7    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v8    # "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v9    # "index":I
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 5199
    .end local v6    # "n":I
    :cond_74
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v6

    .line 5185
    .end local v4    # "count":I
    .end local v5    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    :cond_7a
    :goto_7a
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4
.end method

.method public getAllPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4461
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4463
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4464
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4465
    .local v1, "callingUserId":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4466
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 4468
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4469
    .local v2, "instantAppPkgName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4470
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 4480
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 4470
    if-eqz v2, :cond_51

    .line 4472
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4473
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v6

    if-nez v6, :cond_48

    .line 4474
    goto :goto_35

    .line 4476
    :cond_48
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4477
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    goto :goto_35

    :cond_50
    goto :goto_92

    .line 4480
    :cond_51
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_59
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_92

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4481
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4482
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_8a

    .line 4483
    invoke-interface {v6, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_8a

    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4485
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 4484
    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 4486
    goto :goto_59

    .line 4488
    :cond_8a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4489
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_59

    .line 4491
    :cond_92
    :goto_92
    return-object v3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 9
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4675
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getAppOpPermissionPackages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4677
    if-eqz p1, :cond_57

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_57

    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4678
    invoke-virtual {p2, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_57

    .line 4682
    :cond_1e
    new-instance p2, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4683
    invoke-interface {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4684
    .local p2, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2f
    if-ltz v0, :cond_4a

    .line 4685
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4686
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4687
    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4686
    invoke-virtual {p0, v4, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 4688
    goto :goto_47

    .line 4690
    :cond_44
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 4684
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 4692
    .end local v0    # "i":I
    :cond_4a
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 4679
    .end local p2    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_57
    :goto_57
    sget-object p2, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p2
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5355
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    return v0

    .line 5356
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5357
    .local v2, "callingUid":I
    const/4 v5, 0x0

    const-string v6, "get enabled"

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p2

    .end local p2    # "userId":I
    .local v3, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5360
    :try_start_17
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5361
    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 5360
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 5364
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p2

    return p2

    .line 5362
    :cond_2a
    new-instance p2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v2    # "callingUid":I
    .end local v3    # "userId":I
    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "packageName":Ljava/lang/String;
    throw p2
    :try_end_30
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_30} :catch_30

    .line 5365
    .restart local v2    # "callingUid":I
    .restart local v3    # "userId":I
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_30
    move-exception v0

    move-object p2, v0

    .line 5366
    .local p2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5110
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 5112
    .local v4, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationHidden for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v5, p2

    .end local p2    # "userId":I
    .local v5, "userId":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5116
    .local v1, "callingId":J
    :try_start_2a
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_4f

    .line 5117
    .local p2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v0, 0x1

    if-nez p2, :cond_38

    .line 5118
    nop

    .line 5125
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5118
    return v0

    .line 5120
    :cond_38
    :try_start_38
    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4f

    if-eqz v3, :cond_43

    .line 5121
    nop

    .line 5125
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5121
    return v0

    .line 5123
    :cond_43
    :try_start_43
    invoke-interface {p2, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_4f

    .line 5125
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5123
    return v0

    .line 5125
    .end local p2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_4f
    move-exception v0

    move-object p2, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5126
    throw p2
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1001
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "flags":J
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 1013
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 1014
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v6

    .line 1016
    .end local p2    # "flags":J
    .local v6, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1017
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get application info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1022
    :cond_25
    move-object v0, p0

    move-object v1, p1

    move v4, p4

    move v5, p5

    move-wide v2, v6

    .end local v6    # "flags":J
    .local v2, "flags":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    return-object v6
.end method

.method protected getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 1030
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 1033
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1034
    .local v6, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_35

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_35
    const-wide/32 v0, 0x40000000

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    move v7, v0

    .line 1040
    .local v7, "matchApex":Z
    const/4 v8, 0x0

    if-eqz v6, :cond_83

    .line 1041
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1042
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_4f

    return-object v8

    .line 1043
    :cond_4f
    if-nez v7, :cond_58

    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1044
    return-object v8

    .line 1046
    :cond_58
    move-object v0, p0

    move-wide v4, p2

    move v2, p4

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    move v10, v2

    if-eqz v9, :cond_65

    .line 1047
    return-object v8

    .line 1049
    :cond_65
    invoke-virtual {p0, v1, p4, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1050
    return-object v8

    .line 1053
    :cond_6c
    nop

    .line 1054
    move v4, v3

    invoke-interface {v1, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 1053
    move-object v5, v1

    move-object v0, v6

    move-wide v1, p2

    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1055
    move-object v1, v5

    .end local v0    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v3, :cond_82

    .line 1056
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1058
    :cond_82
    return-object v3

    .line 1060
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_83
    move v10, p4

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object v1, p1

    goto :goto_ae

    .line 1063
    :cond_97
    const-wide v0, 0x100402000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    .line 1065
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v5, p5

    move v4, v10

    .end local p1    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1

    .line 1068
    .end local v1    # "packageName":Ljava/lang/String;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_ac
    return-object v8

    .line 1060
    :cond_ad
    move-object v1, p1

    .line 1061
    .end local p1    # "packageName":Ljava/lang/String;
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_ae
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    return-object p1
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5773
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5774
    .local v0, "sharedUserIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/SharedUserApi;

    .line 5775
    .local v2, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getAppId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5776
    .end local v2    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    goto :goto_13

    .line 5777
    :cond_2f
    return-object v0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5935
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5204
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5205
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5206
    .local v1, "callingUid":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1a

    .line 5209
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 5207
    :cond_1a
    :goto_1a
    const/4 v2, 0x0

    return v2
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;II)I
    .registers 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5376
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result p3

    return p3
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5383
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 5384
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    return v0

    .line 5387
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5388
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_18} :catch_38

    .line 5387
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v4, p2

    move v7, p3

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v4, "callingUid":I
    .local v5, "component":Landroid/content/ComponentName;
    .local v7, "userId":I
    :try_start_1e
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 5392
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1, v5, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result p1

    return p1

    .line 5390
    :cond_2b
    new-instance p1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v4    # "callingUid":I
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    throw p1
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_35} :catch_35

    .line 5393
    .restart local v4    # "callingUid":I
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v7    # "userId":I
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    :catch_35
    move-exception v0

    move-object p1, v0

    goto :goto_3d

    .end local v4    # "callingUid":I
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "callingUid":I
    .restart local p3    # "userId":I
    :catch_38
    move-exception v0

    move-object v5, p1

    move v4, p2

    move v7, p3

    move-object p1, v0

    .line 5394
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .restart local v4    # "callingUid":I
    .restart local v5    # "component":Landroid/content/ComponentName;
    .restart local v7    # "userId":I
    .local p1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown component: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 2

    .line 5989
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object v0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "sourceUserId"    # I
    .param p6, "parentUserId"    # I

    .line 1153
    move/from16 v0, p5

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v2, "allow_parent_profile_app_linking"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_e

    .line 1155
    return-object v8

    .line 1157
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v9

    .line 1160
    .local v9, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v9, :cond_82

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    move/from16 v6, p6

    goto :goto_84

    .line 1163
    :cond_28
    const/4 v1, 0x0

    .line 1164
    .local v1, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 1165
    .local v10, "size":I
    const/4 v2, 0x0

    move-object v11, v1

    move v12, v2

    .end local v1    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v11, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "i":I
    :goto_30
    if-ge v12, v10, :cond_78

    .line 1166
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1170
    .local v13, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v1, v13, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v1, :cond_40

    .line 1171
    move/from16 v6, p6

    goto :goto_75

    .line 1173
    :cond_40
    iget-object v1, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1174
    .local v14, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 1175
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_4f

    .line 1176
    move/from16 v6, p6

    goto :goto_75

    .line 1179
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1180
    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v1

    .line 1182
    .local v1, "approvalLevel":I
    if-nez v11, :cond_6d

    .line 1183
    new-instance v3, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v4, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v4}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {p0, v4, v0, v6}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-direct {v3, v4, v1, v6}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    move-object v11, v3

    .end local v11    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v3, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    goto :goto_75

    .line 1187
    .end local v3    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v11    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_6d
    iget v3, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1188
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1165
    .end local v1    # "approvalLevel":I
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    :goto_75
    add-int/lit8 v12, v12, 0x1

    goto :goto_30

    :cond_78
    move/from16 v6, p6

    .line 1191
    .end local v12    # "i":I
    if-eqz v11, :cond_81

    iget v1, v11, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz v1, :cond_81

    .line 1193
    return-object v8

    .line 1195
    :cond_81
    return-object v11

    .line 1160
    .end local v10    # "size":I
    .end local v11    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_82
    move/from16 v6, p6

    .line 1161
    :goto_84
    return-object v8
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 42
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 4153
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v3, "getDeclaredSharedLibraries"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4156
    .local v2, "callingUid":I
    const/4 v5, 0x0

    const-string v6, "getDeclaredSharedLibraries"

    const/4 v4, 0x1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4159
    move v10, v2

    .end local v2    # "callingUid":I
    .local v10, "callingUid":I
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {v9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4160
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4161
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_31

    .line 4162
    return-object v11

    .line 4165
    :cond_31
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 4166
    return-object v11

    .line 4169
    :cond_38
    nop

    .line 4170
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    .line 4171
    .local v12, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 4173
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v13

    .line 4174
    .local v13, "libraryCount":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_44
    if-ge v14, v13, :cond_14c

    .line 4175
    nop

    .line 4176
    invoke-virtual {v12, v14}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4177
    .local v15, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v15, :cond_53

    .line 4178
    move v2, v10

    goto/16 :goto_143

    .line 4181
    :cond_53
    invoke-virtual {v15}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v2

    .line 4182
    .local v2, "versionCount":I
    const/4 v4, 0x0

    move-object/from16 v16, v0

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "j":I
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_5a
    if-ge v4, v2, :cond_13c

    .line 4183
    invoke-virtual {v15, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4185
    .local v17, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v18

    .line 4186
    .local v18, "declaringPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 4187
    move/from16 v21, v2

    move/from16 v22, v4

    goto :goto_a6

    .line 4190
    :cond_77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4192
    .local v19, "identity":J
    nop

    .line 4193
    move v5, v2

    .end local v2    # "versionCount":I
    .local v5, "versionCount":I
    :try_start_7d
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_81
    .catchall {:try_start_7d .. :try_end_81} :catchall_130

    .line 4194
    move v6, v4

    .end local v4    # "j":I
    .local v6, "j":I
    :try_start_82
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_127

    const-wide/32 v7, 0x4000000

    or-long v7, p2, v7

    .line 4196
    move/from16 v21, v6

    move-wide/from16 v35, v7

    move v8, v5

    move-wide/from16 v5, v35

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .local v8, "versionCount":I
    .local v21, "j":I
    :try_start_92
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_11e

    .line 4192
    move/from16 v22, v21

    move/from16 v21, v8

    move/from16 v8, p4

    .end local v8    # "versionCount":I
    .local v21, "versionCount":I
    .local v22, "j":I
    :try_start_9c
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_119

    .line 4197
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_a8

    .line 4201
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4198
    nop

    .line 4182
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .end local v21    # "versionCount":I
    .end local v22    # "j":I
    .restart local v2    # "versionCount":I
    .restart local v4    # "j":I
    :goto_a6
    move v2, v10

    .end local v2    # "versionCount":I
    .end local v4    # "j":I
    .restart local v21    # "versionCount":I
    .restart local v22    # "j":I
    goto :goto_10e

    .line 4201
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v19    # "identity":J
    :cond_a8
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4202
    nop

    .line 4204
    nop

    .line 4205
    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move v5, v10

    move-object/from16 v2, v17

    .end local v10    # "callingUid":I
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v2, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v5, "callingUid":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v0

    .line 4206
    move-object v1, v2

    move v2, v5

    .end local v5    # "callingUid":I
    .local v0, "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v2, "callingUid":I
    new-instance v23, Landroid/content/pm/SharedLibraryInfo;

    .line 4207
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 4208
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v26

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 4209
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v28

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v30

    .line 4210
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v31

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v32, v3

    check-cast v32, Ljava/util/List;

    .line 4212
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_e9

    .line 4213
    move-object/from16 v33, v11

    goto :goto_f4

    :cond_e9
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v33, v3

    .line 4214
    :goto_f4
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v34

    invoke-direct/range {v23 .. v34}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    move-object/from16 v3, v23

    .line 4216
    .local v3, "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_107

    .line 4217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v4

    goto :goto_109

    .line 4216
    :cond_107
    move-object/from16 v4, v16

    .line 4219
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_109
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    .line 4182
    .end local v0    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_10e
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p4

    move v10, v2

    move/from16 v2, v21

    .end local v22    # "j":I
    .local v4, "j":I
    goto/16 :goto_5a

    .line 4201
    .end local v2    # "callingUid":I
    .end local v4    # "j":I
    .restart local v10    # "callingUid":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v19    # "identity":J
    .restart local v22    # "j":I
    :catchall_119
    move-exception v0

    move v2, v10

    move-object/from16 v1, v17

    .end local v10    # "callingUid":I
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "callingUid":I
    goto :goto_138

    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "callingUid":I
    .end local v22    # "j":I
    .restart local v8    # "versionCount":I
    .restart local v10    # "callingUid":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v21, "j":I
    :catchall_11e
    move-exception v0

    move v2, v10

    move-object/from16 v1, v17

    move/from16 v22, v21

    move/from16 v21, v8

    .end local v8    # "versionCount":I
    .end local v10    # "callingUid":I
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "callingUid":I
    .local v21, "versionCount":I
    .restart local v22    # "j":I
    goto :goto_138

    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "callingUid":I
    .end local v21    # "versionCount":I
    .end local v22    # "j":I
    .local v5, "versionCount":I
    .restart local v6    # "j":I
    .restart local v10    # "callingUid":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :catchall_127
    move-exception v0

    move/from16 v21, v5

    move/from16 v22, v6

    move v2, v10

    move-object/from16 v1, v17

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .end local v10    # "callingUid":I
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "callingUid":I
    .restart local v21    # "versionCount":I
    .restart local v22    # "j":I
    goto :goto_138

    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "callingUid":I
    .end local v21    # "versionCount":I
    .end local v22    # "j":I
    .restart local v4    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v10    # "callingUid":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    :catchall_130
    move-exception v0

    move/from16 v22, v4

    move/from16 v21, v5

    move v2, v10

    move-object/from16 v1, v17

    .end local v4    # "j":I
    .end local v5    # "versionCount":I
    .end local v10    # "callingUid":I
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "callingUid":I
    .restart local v21    # "versionCount":I
    .restart local v22    # "j":I
    :goto_138
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4202
    throw v0

    .line 4182
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .end local v21    # "versionCount":I
    .end local v22    # "j":I
    .local v2, "versionCount":I
    .restart local v4    # "j":I
    .restart local v10    # "callingUid":I
    :cond_13c
    move/from16 v21, v2

    move/from16 v22, v4

    move v2, v10

    .end local v4    # "j":I
    .end local v10    # "callingUid":I
    .local v2, "callingUid":I
    .restart local v21    # "versionCount":I
    .restart local v22    # "j":I
    move-object/from16 v0, v16

    .line 4174
    .end local v15    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v21    # "versionCount":I
    .end local v22    # "j":I
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_143
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p4

    move v10, v2

    goto/16 :goto_44

    .end local v2    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_14c
    move v2, v10

    .line 4223
    .end local v10    # "callingUid":I
    .end local v14    # "i":I
    .restart local v2    # "callingUid":I
    if-eqz v0, :cond_154

    new-instance v11, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v11, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_154
    return-object v11
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v0, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1078
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    .line 1079
    return-object v1

    .line 1083
    :cond_c
    const-string v2, "PackageManager"

    const-string v3, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/high16 v2, -0x80000000

    .line 1088
    .local v2, "lastPriority":I
    const/4 v3, 0x0

    .line 1089
    .local v3, "lastComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1090
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v4, :cond_38

    .line 1091
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1092
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v2, :cond_30

    .line 1093
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1094
    iget v2, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_35

    .line 1095
    :cond_30
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v2, :cond_35

    .line 1097
    const/4 v3, 0x0

    .line 1090
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1100
    .end local v5    # "i":I
    :cond_38
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5995
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledSystemPackageStates()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 3694
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4588
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4589
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4590
    return v2

    .line 4592
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4593
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4595
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4596
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4597
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4598
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4599
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4600
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4601
    return v2

    .line 4603
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v2

    return v2

    .line 4604
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4605
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4606
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4607
    return v2

    .line 4609
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v2

    return v2

    .line 4611
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4a
    return v2
.end method

.method public getFrozenPackages()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6007
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 14
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 4955
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4956
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4958
    .local v7, "recipientUserId":I
    nop

    .line 4959
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4958
    const-string v2, "com.android.contacts"

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 4960
    .local v8, "contactsProvider":Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4961
    invoke-virtual {p0, v0, v6}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4967
    .local v9, "token":J
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move v5, v7

    .end local v7    # "recipientUserId":I
    .end local p2    # "visibleAuthority":Ljava/lang/String;
    .local v2, "visibleAuthority":Ljava/lang/String;
    .local v5, "recipientUserId":I
    :try_start_2d
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_35

    .line 4970
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4967
    return-object p2

    .line 4970
    :catchall_35
    move-exception v0

    move-object p2, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4971
    throw p2

    .line 4961
    .end local v2    # "visibleAuthority":Ljava/lang/String;
    .end local v5    # "recipientUserId":I
    .end local v9    # "token":J
    .restart local v7    # "recipientUserId":I
    .restart local p2    # "visibleAuthority":Ljava/lang/String;
    :cond_3b
    move-object v2, p2

    move v5, v7

    .end local v7    # "recipientUserId":I
    .end local p2    # "visibleAuthority":Ljava/lang/String;
    .restart local v2    # "visibleAuthority":Ljava/lang/String;
    .restart local v5    # "recipientUserId":I
    goto :goto_40

    .line 4960
    .end local v2    # "visibleAuthority":Ljava/lang/String;
    .end local v5    # "recipientUserId":I
    .restart local v7    # "recipientUserId":I
    .restart local p2    # "visibleAuthority":Ljava/lang/String;
    :cond_3e
    move-object v2, p2

    move v5, v7

    .line 4962
    .end local v7    # "recipientUserId":I
    .end local p2    # "visibleAuthority":Ljava/lang/String;
    .restart local v2    # "visibleAuthority":Ljava/lang/String;
    .restart local v5    # "recipientUserId":I
    :goto_40
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not allow to call grantImplicitAccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5807
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5808
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 5810
    .local v6, "callingAppId":I
    const/4 v4, 0x1

    const-string v5, "getHarmfulAppInfo"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5813
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result p2

    if-nez p2, :cond_28

    .line 5814
    const-string p2, "android.permission.SET_HARMFUL_APP_WARNINGS"

    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_20

    goto :goto_28

    .line 5815
    :cond_20
    new-instance p2, Ljava/lang/SecurityException;

    const-string v0, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5819
    :cond_28
    :goto_28
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 5820
    .local p2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_37

    .line 5823
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5821
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 18
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 1105
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1106
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object v0, p0

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v2

    .line 1108
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1109
    const/4 v11, 0x0

    if-nez v2, :cond_15

    .line 1110
    return-object v11

    .line 1112
    :cond_15
    move-object/from16 v12, p1

    invoke-interface {v12, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1114
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move/from16 v5, p2

    invoke-virtual {v3, v5}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v13

    .line 1115
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_50

    .line 1123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 1124
    .local v14, "appId":I
    const/16 v3, 0x2710

    if-lt v14, v3, :cond_32

    const/4 v3, 0x1

    goto :goto_33

    :cond_32
    const/4 v3, 0x0

    :goto_33
    move v10, v3

    .line 1125
    .local v10, "filtered":Z
    nop

    .line 1126
    move-object v5, v2

    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v2

    .line 1128
    .local v2, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1129
    .local v0, "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_51

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_51

    .line 1130
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_51

    .line 1115
    .end local v0    # "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "filtered":Z
    .end local v14    # "appId":I
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_50
    move-object v5, v2

    .line 1133
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_51
    :goto_51
    if-nez v13, :cond_54

    .line 1134
    return-object v11

    .line 1137
    :cond_54
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 1138
    .local v0, "resolveInfosSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_59
    if-ge v2, v0, :cond_80

    .line 1139
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1141
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_7d

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1143
    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1138
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 1147
    .end local v2    # "i":I
    :cond_80
    return-object v11
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 3

    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1202
    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5650
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5651
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "get install reason"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5653
    iget-object p2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 5654
    .local p2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_25

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_25

    .line 5657
    :cond_1c
    invoke-interface {p2, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v0

    return v0

    .line 5655
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method public getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5254
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getInstallSourceInfo"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5262
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object p2

    .line 5263
    .local p2, "installSource":Lcom/android/server/pm/InstallSource;
    if-nez p2, :cond_15

    .line 5264
    const/4 v0, 0x0

    return-object v0

    .line 5267
    :cond_15
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5268
    .local v0, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 5269
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5270
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_27

    .line 5271
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 5272
    :cond_27
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_2b

    .line 5276
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_2a
    move-object v8, v0

    .end local v0    # "installerPackageName":Ljava/lang/String;
    .local v8, "installerPackageName":Ljava/lang/String;
    :goto_2b
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 5277
    .local v0, "updateOwnerPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_58

    .line 5278
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5279
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/16 v6, 0x3e8

    if-eq v1, v6, :cond_44

    .line 5280
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_42

    goto :goto_44

    :cond_42
    move v6, v3

    goto :goto_45

    :cond_44
    :goto_44
    move v6, v4

    .line 5285
    .local v6, "isCallerSystemOrUpdateOwner":Z
    :goto_45
    if-eqz v5, :cond_55

    .line 5286
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_55

    if-nez v6, :cond_58

    .line 5287
    invoke-direct {p0, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerFromManagedUserOrProfile(I)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 5288
    :cond_55
    const/4 v0, 0x0

    move-object v9, v0

    goto :goto_59

    .line 5292
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v6    # "isCallerSystemOrUpdateOwner":Z
    :cond_58
    move-object v9, v0

    .end local v0    # "updateOwnerPackageName":Ljava/lang/String;
    .local v9, "updateOwnerPackageName":Ljava/lang/String;
    :goto_59
    iget-boolean v0, p2, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v0, :cond_72

    .line 5297
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    move v3, v4

    .line 5298
    .local v3, "isInstantApp":Z
    :cond_64
    if-nez v3, :cond_6f

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 5299
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .local v0, "initiatingPackageName":Ljava/lang/String;
    goto :goto_70

    .line 5301
    .end local v0    # "initiatingPackageName":Ljava/lang/String;
    :cond_6f
    const/4 v0, 0x0

    .line 5303
    .end local v3    # "isInstantApp":Z
    .restart local v0    # "initiatingPackageName":Ljava/lang/String;
    :goto_70
    move-object v5, v0

    goto :goto_94

    .line 5304
    .end local v0    # "initiatingPackageName":Ljava/lang/String;
    :cond_72
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 5308
    move-object v0, v8

    move-object v5, v0

    .restart local v0    # "initiatingPackageName":Ljava/lang/String;
    goto :goto_94

    .line 5310
    .end local v0    # "initiatingPackageName":Ljava/lang/String;
    :cond_7f
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 5311
    .restart local v0    # "initiatingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5312
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_92

    .line 5313
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_90

    goto :goto_92

    :cond_90
    move-object v5, v0

    goto :goto_94

    .line 5314
    :cond_92
    :goto_92
    const/4 v0, 0x0

    move-object v5, v0

    .line 5319
    .end local v0    # "initiatingPackageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v5, "initiatingPackageName":Ljava/lang/String;
    :goto_94
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 5320
    .local v0, "originatingPackageName":Ljava/lang/String;
    if-eqz v0, :cond_a7

    .line 5321
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5322
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_a6

    .line 5323
    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 5324
    :cond_a6
    const/4 v0, 0x0

    .line 5331
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a7
    if-eqz v0, :cond_b6

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_b6

    .line 5333
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_b7

    .line 5339
    :cond_b6
    move-object v7, v0

    .end local v0    # "originatingPackageName":Ljava/lang/String;
    .local v7, "originatingPackageName":Ljava/lang/String;
    :goto_b7
    iget-object v0, p2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 5340
    .local v0, "signatures":Lcom/android/server/pm/PackageSignatures;
    if-eqz v5, :cond_cc

    if-eqz v0, :cond_cc

    iget-object v3, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v4, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v3, v4, :cond_cc

    .line 5342
    new-instance v3, Landroid/content/pm/SigningInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v3, v4}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    move-object v6, v3

    .local v3, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    goto :goto_ce

    .line 5344
    .end local v3    # "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :cond_cc
    const/4 v3, 0x0

    move-object v6, v3

    .line 5347
    .local v6, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :goto_ce
    new-instance v4, Landroid/content/pm/InstallSourceInfo;

    iget v10, p2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method public getInstalledApplications(JIIZ)Ljava/util/List;
    .registers 28
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "forceAllowCrossUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 4765
    move-object/from16 v0, p0

    move/from16 v3, p3

    move/from16 v6, p4

    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 4766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4768
    :cond_11
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 4769
    :cond_1e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v7

    .line 4770
    .end local p1    # "flags":J
    .local v7, "flags":J
    const-wide/32 v1, 0x402000

    and-long/2addr v1, v7

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_30

    move v1, v2

    goto :goto_31

    :cond_30
    move v1, v9

    :goto_31
    move v10, v1

    .line 4771
    .local v10, "listUninstalled":Z
    const-wide/32 v11, 0x40000000

    and-long/2addr v11, v7

    cmp-long v1, v11, v4

    if-eqz v1, :cond_3c

    move v1, v2

    goto :goto_3d

    :cond_3c
    move v1, v9

    :goto_3d
    move v11, v1

    .line 4772
    .local v11, "listApex":Z
    if-nez v10, :cond_4b

    const-wide v12, 0x100000000L

    and-long/2addr v12, v7

    cmp-long v1, v12, v4

    if-eqz v1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v9

    :goto_4c
    move v9, v2

    .line 4774
    .local v9, "listArchivedOnly":Z
    if-nez p5, :cond_5f

    .line 4775
    nop

    .line 4776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4775
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    move-object v12, v0

    goto :goto_60

    .line 4774
    :cond_5f
    move-object v12, v0

    .line 4783
    :goto_60
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 4784
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v5, p3

    move v1, v6

    move-wide v3, v7

    .end local v7    # "flags":J
    .local v3, "flags":J
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getApplicationInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v6

    .line 4785
    move v7, v1

    move-wide v4, v3

    .end local v3    # "flags":J
    .local v4, "flags":J
    .local v6, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v6, :cond_75

    .line 4786
    return-object v6

    .line 4791
    :cond_75
    nop

    .line 4792
    invoke-virtual {v12}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v8

    .line 4793
    .local v8, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-nez v10, :cond_ef

    if-eqz v9, :cond_82

    move/from16 v2, p3

    goto/16 :goto_f1

    .line 4832
    :cond_82
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v12, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 4833
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_96
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4834
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    .line 4835
    .local v15, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v15, :cond_aa

    .line 4836
    goto :goto_96

    .line 4838
    :cond_aa
    if-nez v11, :cond_b3

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 4839
    goto :goto_96

    .line 4841
    :cond_b3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v3, p3

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 4842
    goto :goto_96

    .line 4844
    :cond_c1
    invoke-virtual {v12, v1, v7, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 4845
    goto :goto_96

    .line 4847
    :cond_c8
    nop

    .line 4848
    move v2, v3

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4847
    move-object v0, v15

    move-wide/from16 v20, v4

    move-object v5, v1

    move v4, v2

    move-wide/from16 v1, v20

    .end local v4    # "flags":J
    .end local v15    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "flags":J
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 4849
    move v2, v4

    move-object v1, v5

    move-wide/from16 v4, v20

    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "flags":J
    if-eqz v3, :cond_e8

    .line 4850
    invoke-virtual {v12, v0}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4851
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4853
    .end local v0    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v1    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_e8
    goto :goto_96

    .line 4833
    :cond_e9
    move/from16 v2, p3

    move-wide/from16 v18, v4

    goto/16 :goto_1a1

    .line 4793
    .end local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :cond_ef
    move/from16 v2, p3

    .line 4794
    :goto_f1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 4795
    .restart local v13    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_103
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4797
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v15, v4

    .line 4798
    .local v15, "effectiveFlags":J
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 4799
    const-wide/32 v17, 0x400000

    or-long v15, v15, v17

    .line 4801
    :cond_11c
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_17d

    .line 4802
    if-nez v11, :cond_12f

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 4803
    goto :goto_103

    .line 4805
    :cond_12f
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v17

    .line 4806
    .local v17, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v9, :cond_142

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_142

    .line 4807
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_142

    .line 4808
    goto :goto_103

    .line 4810
    :cond_142
    move v3, v2

    move v2, v7

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v7

    move v0, v2

    move-wide/from16 v18, v4

    .end local v4    # "flags":J
    .local v18, "flags":J
    if-eqz v7, :cond_153

    .line 4811
    move v7, v0

    move v2, v3

    move-wide/from16 v4, v18

    goto :goto_103

    .line 4813
    :cond_153
    invoke-virtual {v12, v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 4814
    move v7, v0

    move v2, v3

    move-wide/from16 v4, v18

    goto :goto_103

    .line 4816
    :cond_15e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 4817
    move v2, v3

    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4816
    move-object v5, v1

    move v4, v2

    move-wide v1, v15

    .end local v15    # "effectiveFlags":J
    .local v1, "effectiveFlags":J
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4818
    move-object v7, v5

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_17b

    .line 4819
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4821
    .end local v17    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_17b
    move-wide v2, v1

    goto :goto_190

    .line 4824
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "flags":J
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "flags":J
    .restart local v15    # "effectiveFlags":J
    :cond_17d
    move-object v7, v1

    move-wide/from16 v18, v4

    move-wide v1, v15

    .end local v4    # "flags":J
    .end local v15    # "effectiveFlags":J
    .local v1, "effectiveFlags":J
    .restart local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v18    # "flags":J
    move-wide v2, v1

    .end local v1    # "effectiveFlags":J
    .local v2, "effectiveFlags":J
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move/from16 v5, p3

    move/from16 v4, p4

    move-object v0, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v0, v1

    .line 4827
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_190
    if-eqz v0, :cond_195

    .line 4828
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4830
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "effectiveFlags":J
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_195
    move-object/from16 v12, p0

    move/from16 v2, p3

    move/from16 v7, p4

    move-wide/from16 v4, v18

    goto/16 :goto_103

    .end local v18    # "flags":J
    .restart local v4    # "flags":J
    :cond_19f
    move-wide/from16 v18, v4

    .line 4856
    .end local v4    # "flags":J
    .restart local v18    # "flags":J
    :goto_1a1
    return-object v13
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/PackageInfoList;
    .registers 12
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1729
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1730
    invoke-static {}, Landroid/content/pm/PackageInfoList;->emptyList()Landroid/content/pm/PackageInfoList;

    move-result-object v0

    return-object v0

    .line 1732
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/PackageInfoList;->emptyList()Landroid/content/pm/PackageInfoList;

    move-result-object v0

    return-object v0

    .line 1733
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 1735
    .local v6, "updatedFlags":J
    const/4 v4, 0x0

    const-string v5, "get installed packages"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1738
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInstalledPackages: callingUid="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " flags="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " updatedFlags="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " userId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PackageManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-direct {p0, v6, v7, v2, v1}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/PackageInfoList;

    move-result-object p3

    return-object p3
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5216
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 5217
    .local v1, "installSource":Lcom/android/server/pm/InstallSource;
    if-eqz v1, :cond_27

    .line 5220
    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5221
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 5222
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5223
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_20

    .line 5224
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5223
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5225
    :cond_20
    const/4 v2, 0x0

    .line 5228
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_21
    :try_start_21
    const/4 v5, 0x0

    invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_27

    return-object v2

    .line 5218
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :catch_27
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 2

    .line 6020
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6

    .line 6021
    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 6020
    :goto_c
    return-object v0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 6001
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I

    .line 1908
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1909
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 1911
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1912
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 1913
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 1914
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1915
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1916
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    .line 1917
    .local v4, "isInstantApp":Z
    if-eqz v4, :cond_32

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_32
    return-object v3

    .line 1919
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "isInstantApp":Z
    :cond_33
    return-object v3
.end method

.method public getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .registers 14
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 5052
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5053
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getInstrumentationInfoAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5055
    move v5, v2

    .end local v2    # "userId":I
    .local v5, "userId":I
    iget-object p3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p3, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p3

    const/4 v6, 0x0

    if-nez p3, :cond_18

    return-object v6

    .line 5056
    :cond_18
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 5057
    .local p3, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5058
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5059
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v0, :cond_5a

    if-nez v7, :cond_34

    move-object v8, p1

    move v9, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5e

    .line 5060
    :cond_34
    const/4 v4, 0x0

    move-object v3, p1

    move v2, v1

    move-object v1, v0

    move-object v0, p0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p1    # "component":Landroid/content/ComponentName;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v3, "component":Landroid/content/ComponentName;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v9, v2

    move-object v8, v3

    .end local v2    # "callingUid":I
    .end local v3    # "component":Landroid/content/ComponentName;
    .local v8, "component":Landroid/content/ComponentName;
    .local v9, "callingUid":I
    if-eqz p1, :cond_42

    .line 5062
    return-object v6

    .line 5064
    :cond_42
    iget-object p1, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 5065
    .local v0, "i":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    invoke-interface {v1, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 5066
    .local v4, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    int-to-long v2, p2

    move-object v6, v1

    move-object v1, v7

    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object p1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "i":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    return-object p1

    .line 5059
    .end local v2    # "i":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    .end local v4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "callingUid":I
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "callingUid":I
    .restart local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p1    # "component":Landroid/content/ComponentName;
    :cond_5a
    move-object v8, p1

    move v9, v1

    move-object v1, v0

    move-object v0, v7

    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p1    # "component":Landroid/content/ComponentName;
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "component":Landroid/content/ComponentName;
    .restart local v9    # "callingUid":I
    :goto_5e
    return-object v6
.end method

.method public final getIsolatedUidsForUid(I)Landroid/util/IntArray;
    .registers 5
    .param p1, "ownerUid"    # I

    .line 1937
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1939
    .local v0, "isolatedUids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 1940
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 1941
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 1939
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1944
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 5448
    if-eqz p1, :cond_66

    if-nez p2, :cond_5

    goto :goto_66

    .line 5451
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5452
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5453
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5454
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_35

    .line 5455
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5454
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_35

    .line 5459
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5460
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5456
    .end local v3    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeySet requested for unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5457
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5449
    .end local v0    # "callingUid":I
    .end local v1    # "callingUserId":I
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMatchingCrossProfileIntentFilters(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/CrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 1207
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v1

    .line 1208
    .local v1, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v1, :cond_12

    .line 1209
    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "resolvedType":Ljava/lang/String;
    .end local p3    # "userId":I
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v6, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1212
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "resolvedType":Ljava/lang/String;
    .end local v6    # "userId":I
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "userId":I
    :cond_12
    move-object v3, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 4497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4498
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4499
    return-object v2

    .line 4501
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4502
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4504
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4505
    .local v1, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4506
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 4508
    :cond_24
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4509
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4510
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_58

    .line 4511
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4512
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 4513
    return-object v2

    .line 4515
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, v5, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4516
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_58
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_6b

    .line 4517
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4518
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 4519
    return-object v2

    .line 4521
    :cond_66
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4523
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_6b
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 13
    .param p1, "uids"    # [I

    .line 4529
    const/4 v0, 0x0

    if-eqz p1, :cond_85

    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_85

    .line 4532
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4533
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 4534
    return-object v0

    .line 4536
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4537
    .local v2, "callingUserId":I
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4538
    .local v3, "names":[Ljava/lang/String;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1d
    if-ltz v4, :cond_84

    .line 4539
    aget v5, p1, v4

    .line 4540
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4541
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4543
    :cond_2b
    invoke-direct {p0, v5}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 4544
    invoke-direct {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v5

    .line 4546
    :cond_35
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 4547
    .local v6, "appId":I
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 4548
    .local v7, "obj":Ljava/lang/Object;
    instance-of v8, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_68

    .line 4549
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 4550
    .local v8, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v9

    if-eqz v9, :cond_4f

    .line 4551
    aput-object v0, v3, v4

    goto :goto_67

    .line 4553
    :cond_4f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "shared:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4555
    .end local v8    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :goto_67
    goto :goto_81

    :cond_68
    instance-of v8, v7, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_7f

    .line 4556
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4557
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_78

    .line 4558
    aput-object v0, v3, v4

    goto :goto_7e

    .line 4560
    :cond_78
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4562
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_7e
    goto :goto_81

    .line 4563
    :cond_7f
    aput-object v0, v3, v4

    .line 4538
    .end local v5    # "uid":I
    .end local v6    # "appId":I
    .end local v7    # "obj":Ljava/lang/Object;
    :goto_81
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 4566
    .end local v4    # "i":I
    :cond_84
    return-object v3

    .line 4530
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_85
    :goto_85
    return-object v0
.end method

.method public getNotifyPackagesForReplacedReceived([Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3714
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3716
    .local v1, "callingUserId":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3717
    .local v2, "packagesToNotify":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 3718
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3719
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_20

    .line 3720
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3717
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3724
    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 8
    .param p1, "uid"    # I

    .line 962
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 964
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    array-length v2, v0

    .line 965
    .local v2, "numPackages":I
    :goto_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-nez v1, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 966
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 965
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 968
    .end local v3    # "i":I
    :cond_1f
    return-object v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 956
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 958
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3842
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3843
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3844
    .local v3, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 3845
    const/4 v6, 0x0

    const-string v7, "getPackageGids"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    .end local p4    # "userId":I
    .local v4, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3848
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p4

    .line 3849
    .local p4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez p4, :cond_22

    .line 3850
    return-object v1

    .line 3852
    :cond_22
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 3853
    invoke-static {p4, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3854
    invoke-interface {p4, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3855
    invoke-virtual {p0, p4, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 3856
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3857
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    .line 3856
    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v0

    return-object v0

    .line 3860
    :cond_4d
    const-wide v5, 0x100402000L

    and-long/2addr v5, p2

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_74

    .line 3861
    invoke-static {p4, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 3862
    invoke-virtual {p0, p4, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_74

    .line 3863
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3864
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-static {v4, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 3863
    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v0

    return-object v0

    .line 3868
    :cond_74
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1608
    nop

    .line 1609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1608
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v4, "flags":J
    .local v7, "userId":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1622
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    invoke-interface {v0}, Lmiui/enterprise/IApplicationHelper;->isNeglectUserId()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1623
    invoke-virtual {v0, p7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 1625
    :cond_14
    invoke-virtual {p0, p4, p5, p7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p4

    .line 1626
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get package info"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1629
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    move v7, p7

    .end local p4    # "flags":J
    .local v4, "flags":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object p4

    return-object p4
.end method

.method protected getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1637
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    .line 1639
    .end local p1    # "packageName":Ljava/lang/String;
    .local v6, "packageName":Ljava/lang/String;
    const-wide/32 v1, 0x200000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_15

    move v1, v2

    goto :goto_16

    :cond_15
    move v1, v5

    :goto_16
    move v7, v1

    .line 1640
    .local v7, "matchFactoryOnly":Z
    const-wide/32 v8, 0x40000000

    and-long v8, p4, v8

    cmp-long v1, v8, v3

    if-eqz v1, :cond_21

    goto :goto_22

    :cond_21
    move v2, v5

    :goto_22
    move v8, v2

    .line 1641
    .local v8, "matchApex":Z
    const/4 v9, 0x0

    if-eqz v7, :cond_69

    .line 1643
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1644
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_61

    .line 1645
    if-nez v8, :cond_41

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1646
    return-object v9

    .line 1648
    :cond_41
    move-wide/from16 v4, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v10

    move-object v12, v1

    move v11, v3

    move-wide/from16 v16, v4

    move v5, v2

    move-wide/from16 v1, v16

    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_55

    .line 1649
    return-object v9

    .line 1651
    :cond_55
    invoke-virtual {v0, v12, v5, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1652
    return-object v9

    .line 1654
    :cond_5c
    invoke-virtual {v0, v12, v1, v2, v11}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v3

    return-object v3

    .line 1644
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_61
    move/from16 v5, p6

    move/from16 v11, p7

    move-object v12, v1

    move-wide/from16 v1, p4

    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_6f

    .line 1641
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_69
    move-wide/from16 v1, p4

    move/from16 v5, p6

    move/from16 v11, p7

    .line 1658
    :goto_6f
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1659
    .local v10, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v12, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1660
    .local v12, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v7, :cond_88

    if-eqz v10, :cond_88

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v13

    if-nez v13, :cond_88

    .line 1661
    return-object v9

    .line 1663
    :cond_88
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v13, :cond_ae

    .line 1664
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPackageInfo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PackageManager"

    invoke-static {v14, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :cond_ae
    if-eqz v10, :cond_e2

    .line 1667
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1668
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v8, :cond_c1

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 1669
    return-object v9

    .line 1671
    :cond_c1
    move-wide/from16 v16, v1

    move v2, v5

    move-wide/from16 v4, v16

    move-object v1, v3

    move v3, v11

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v11

    move v13, v3

    move-object v3, v1

    move v5, v2

    move-wide/from16 v1, v16

    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_d4

    .line 1672
    return-object v9

    .line 1674
    :cond_d4
    if-eqz v3, :cond_dd

    invoke-virtual {v0, v3, v5, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_dd

    .line 1675
    return-object v9

    .line 1678
    :cond_dd
    invoke-virtual {v0, v3, v1, v2, v13}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v4

    return-object v4

    .line 1680
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_e2
    move v13, v11

    if-nez v7, :cond_112

    const-wide v14, 0x100402000L

    and-long/2addr v14, v1

    cmp-long v3, v14, v3

    if-eqz v3, :cond_112

    .line 1681
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1682
    .restart local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_f8

    return-object v9

    .line 1683
    :cond_f8
    move-wide/from16 v16, v1

    move v2, v5

    move-wide/from16 v4, v16

    move-object v1, v3

    move v3, v13

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 1684
    return-object v9

    .line 1686
    :cond_106
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_10d

    .line 1687
    return-object v9

    .line 1689
    :cond_10d
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v9

    return-object v9

    .line 1680
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_112
    move-wide/from16 v16, v1

    move v2, v5

    move-wide/from16 v4, v16

    move v3, v13

    .line 1693
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, v9, v6, v4, v5}, Lcom/android/server/pm/PackageManagerServiceStub;->hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1
.end method

.method public getPackageOrSharedUser(I)Landroid/util/Pair;
    .registers 5
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Lcom/android/server/pm/pkg/SharedUserApi;",
            ">;"
        }
    .end annotation

    .line 5941
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5942
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 5943
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5944
    :cond_13
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_1f

    .line 5945
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5947
    :cond_1f
    return-object v2
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 8
    .param p1, "safeMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 3731
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    .line 3732
    .local v0, "ceStorageUnlocked":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3733
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_3f

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3734
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3f

    .line 3738
    :cond_1b
    if-eqz p1, :cond_25

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3739
    const/4 v2, 0x2

    return v2

    .line 3742
    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3743
    const/4 v2, 0x3

    return v2

    .line 3746
    :cond_2f
    if-nez v0, :cond_3d

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 3747
    const/4 v2, 0x4

    return v2

    .line 3749
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 3735
    :cond_3f
    :goto_3f
    const/4 v2, 0x1

    return v2
.end method

.method public getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 1717
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1719
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1720
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1721
    const/4 v1, 0x0

    return-object v1

    .line 1723
    :cond_14
    return-object v0
.end method

.method public getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4299
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4300
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_e

    .line 4301
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    .line 4304
    :cond_d
    return-object v0

    .line 4302
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 1709
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1711
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    return-object v0
.end method

.method public getPackageStates()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 3688
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 5607
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "flags":J
    .local v4, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JIZ)I

    move-result p1

    return p1
.end method

.method public getPackageUid(Ljava/lang/String;JIZ)I
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "forPcc"    # Z

    .line 5614
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 5615
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5616
    .local v2, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 5617
    const/4 v5, 0x0

    const-string v6, "getPackageUid"

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p4

    .end local p4    # "userId":I
    .local v3, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5619
    move v7, p5

    move v6, v2

    move v5, v3

    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p5    # "forPcc":Z
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "flags":J
    .local v5, "userId":I
    .local v6, "callingUid":I
    .local v7, "forPcc":Z
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JIIZ)I

    move-result p1

    move v3, v5

    .end local v5    # "userId":I
    .local v3, "userId":I
    .restart local p2    # "flags":J
    return p1
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 2786
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .end local p5    # "callingUid":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "flags":J
    .local v4, "userId":I
    .local v5, "callingUid":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JIIZ)I

    move-result p1

    return p1
.end method

.method public getPackageUidInternal(Ljava/lang/String;JIIZ)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I
    .param p6, "forPcc"    # Z

    .line 2797
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2798
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2799
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v1, :cond_40

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2800
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2801
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_40

    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 2802
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_40

    .line 2803
    if-eqz p6, :cond_37

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPccId()I

    move-result v3

    goto :goto_3b

    :cond_37
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    :goto_3b
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2806
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_40
    const-wide v2, 0x100402000L

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_70

    .line 2807
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2808
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_70

    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 2809
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_70

    .line 2810
    if-eqz p6, :cond_67

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPccId()I

    move-result v3

    goto :goto_6b

    :cond_67
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    :goto_6b
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2814
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_70
    const/4 v2, -0x1

    return v2
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .registers 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 5867
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5868
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_12

    .line 5869
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5870
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5871
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_12
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_29

    .line 5872
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5873
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 5874
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_24

    .line 5875
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5877
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5880
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 2042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPackagesForUidInternalBody(IIIZ)[Ljava/lang/String;
    .registers 15
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "appId"    # I
    .param p4, "isCallerInstantApp"    # Z

    .line 2061
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 2062
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 2063
    if-eqz p4, :cond_e

    .line 2064
    return-object v2

    .line 2066
    :cond_e
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 2067
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 2068
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 2069
    .local v2, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2070
    .local v3, "n":I
    new-array v4, v3, [Ljava/lang/String;

    .line 2071
    .local v4, "res":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2072
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1e
    if-ge v6, v3, :cond_42

    .line 2073
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2074
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2075
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 2076
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move v5, v8

    .line 2072
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 2079
    .end local v6    # "index":I
    :cond_42
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 2080
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v3    # "n":I
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_49
    instance-of v1, v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v1, :cond_69

    .line 2081
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2082
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2083
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2084
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2087
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_69
    return-object v2
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 14
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 4700
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4701
    :cond_d
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v6

    .line 4702
    .end local p2    # "flags":J
    .local v6, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p4

    .end local p4    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4704
    const-wide p2, 0x100402000L

    and-long/2addr p2, v6

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_2c

    const/4 p2, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    .line 4707
    .local p2, "listUninstalled":Z
    :goto_2d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4708
    .local p3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    array-length p4, p1

    new-array v5, p4, [Z

    .line 4709
    .local v5, "tmpBools":[Z
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_41
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4710
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_57

    if-nez p2, :cond_57

    .line 4711
    goto :goto_41

    .line 4713
    :cond_57
    move-object v1, p0

    move-object v4, p1

    move v8, v2

    move-object v2, p3

    .end local p1    # "permissions":[Ljava/lang/String;
    .end local p3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v4, "permissions":[Ljava/lang/String;
    .local v8, "userId":I
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    .line 4714
    move v2, v8

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "userId":I
    .local v2, "userId":I
    .restart local p3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto :goto_41

    .line 4716
    .end local v4    # "permissions":[Ljava/lang/String;
    .restart local p1    # "permissions":[Ljava/lang/String;
    :cond_60
    move-object v4, p1

    .end local p1    # "permissions":[Ljava/lang/String;
    .restart local v4    # "permissions":[Ljava/lang/String;
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;
    .registers 26
    .param p1, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .param p2, "flags"    # J
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "JII)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 4082
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    .line 4083
    .local v3, "versionedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4084
    .local v4, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4085
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .line 4086
    .local v6, "usesLibsOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    if-ge v7, v5, :cond_12e

    .line 4087
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4088
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v8, :cond_1f

    .line 4089
    move-wide/from16 v10, p2

    goto/16 :goto_c9

    .line 4092
    :cond_1f
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    move-wide/from16 v10, p2

    invoke-static {v9, v10, v11}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 4093
    goto/16 :goto_c9

    .line 4096
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 4097
    .local v9, "libName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v12

    if-nez v12, :cond_85

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v12

    if-eqz v12, :cond_3e

    goto :goto_85

    .line 4130
    :cond_3e
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-eqz v12, :cond_c9

    .line 4131
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibraries()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_60

    .line 4132
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 4133
    :cond_60
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v12

    if-eqz v12, :cond_67

    .line 4134
    goto :goto_c9

    .line 4136
    :cond_67
    if-nez v3, :cond_6f

    .line 4137
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v12

    .line 4139
    :cond_6f
    new-instance v12, Landroid/content/pm/VersionedPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4140
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4139
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_122

    .line 4099
    :cond_85
    :goto_85
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_90

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v12

    goto :goto_94

    :cond_90
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 4100
    .local v12, "libs":[Ljava/lang/String;
    :goto_94
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    goto :goto_a3

    .line 4101
    :cond_9f
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    :goto_a3
    nop

    .line 4102
    .local v13, "libsVersions":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_af

    .line 4103
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesOptional()[Z

    move-result-object v14

    goto :goto_b0

    :cond_af
    const/4 v14, 0x0

    .line 4105
    .local v14, "libsOptional":[Z
    :goto_b0
    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    .line 4106
    .local v15, "libIdx":I
    if-gez v15, :cond_b7

    .line 4107
    goto :goto_c9

    .line 4109
    :cond_b7
    aget-wide v16, v13, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-eqz v16, :cond_c2

    .line 4111
    goto :goto_c9

    .line 4113
    :cond_c2
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_ce

    .line 4114
    nop

    .line 4086
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "libName":Ljava/lang/String;
    .end local v12    # "libs":[Ljava/lang/String;
    .end local v13    # "libsVersions":[J
    .end local v14    # "libsOptional":[Z
    .end local v15    # "libIdx":I
    :cond_c9
    :goto_c9
    move-object/from16 v16, v4

    move/from16 v17, v5

    goto :goto_122

    .line 4116
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "libName":Ljava/lang/String;
    .restart local v12    # "libs":[Ljava/lang/String;
    .restart local v13    # "libsVersions":[J
    .restart local v14    # "libsOptional":[Z
    .restart local v15    # "libIdx":I
    :cond_ce
    if-nez v3, :cond_d7

    .line 4117
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v16

    .line 4119
    :cond_d7
    if-nez v6, :cond_e0

    .line 4120
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v16

    .line 4123
    :cond_e0
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 4124
    .local v16, "dependentPackageName":Ljava/lang/String;
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    if-eqz v17, :cond_ff

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v17

    if-eqz v17, :cond_ff

    .line 4125
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getManifestPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_101

    .line 4127
    :cond_ff
    move-object/from16 v0, v16

    .end local v16    # "dependentPackageName":Ljava/lang/String;
    .local v0, "dependentPackageName":Ljava/lang/String;
    :goto_101
    new-instance v1, Landroid/content/pm/VersionedPackage;

    .line 4128
    move-object/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v5    # "packageCount":I
    .local v16, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v17, "packageCount":I
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v4

    invoke-direct {v1, v0, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4127
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4129
    if-eqz v14, :cond_119

    aget-boolean v1, v14, v15

    if-eqz v1, :cond_119

    const/4 v1, 0x1

    goto :goto_11a

    :cond_119
    const/4 v1, 0x0

    :goto_11a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4130
    .end local v0    # "dependentPackageName":Ljava/lang/String;
    .end local v12    # "libs":[Ljava/lang/String;
    .end local v13    # "libsVersions":[J
    .end local v14    # "libsOptional":[Z
    .end local v15    # "libIdx":I
    nop

    .line 4086
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "libName":Ljava/lang/String;
    :goto_122
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_11

    .line 4145
    .end local v7    # "i":I
    .end local v16    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v17    # "packageCount":I
    .restart local v4    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "packageCount":I
    :cond_12e
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .registers 15
    .param p1, "safeMode"    # Z
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 5734
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5735
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/pm/UserManagerServiceStub;->isInMaintenanceMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5736
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 5737
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->getPersistentAppsForOtherUser(ZII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5740
    :cond_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5742
    .local v0, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 5743
    .local v1, "numPackages":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 5744
    .local v6, "userId":I
    const/4 v2, 0x0

    move v8, v2

    .local v8, "index":I
    :goto_38
    if-ge v8, v1, :cond_9b

    .line 5745
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5746
    .local v2, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    .line 5748
    .local v9, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/high16 v3, 0x40000

    and-int/2addr v3, p2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5b

    .line 5749
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v3

    if-nez v3, :cond_5b

    move v3, v5

    goto :goto_5c

    :cond_5b
    move v3, v4

    :goto_5c
    move v10, v3

    .line 5750
    .local v10, "matchesUnaware":Z
    const/high16 v3, 0x80000

    and-int/2addr v3, p2

    if-eqz v3, :cond_6a

    .line 5751
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v3

    if-eqz v3, :cond_6a

    move v4, v5

    goto :goto_6b

    :cond_6a
    nop

    :goto_6b
    move v11, v4

    .line 5753
    .local v11, "matchesAware":Z
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_98

    if-eqz p1, :cond_7a

    .line 5754
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_98

    :cond_7a
    if-nez v10, :cond_7e

    if-eqz v11, :cond_98

    .line 5756
    :cond_7e
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 5757
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v7, :cond_98

    .line 5758
    int-to-long v3, p2

    .line 5759
    invoke-interface {v7, v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 5758
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 5760
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_98

    .line 5761
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5744
    .end local v2    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "matchesUnaware":Z
    .end local v11    # "matchesAware":Z
    :cond_98
    add-int/lit8 v8, v8, 0x1

    goto :goto_38

    .line 5767
    .end local v8    # "index":I
    :cond_9b
    return-object v0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3
    .param p1, "userId"    # I

    .line 3682
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4617
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4618
    return v2

    .line 4620
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4621
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4623
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4624
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4625
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4626
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4627
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4628
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4629
    return v2

    .line 4631
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4632
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4633
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4634
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4635
    return v2

    .line 4637
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4639
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_4a
    return v2
.end method

.method public getProcessesForUid(I)Landroid/util/ArrayMap;
    .registers 9
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 5917
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5918
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5920
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5921
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5922
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_24

    .line 5923
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5924
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v5, v2, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v3

    return-object v3

    .line 5925
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_24
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    if-eqz v2, :cond_3c

    .line 5926
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5927
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    .line 5928
    .local v6, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v6, :cond_33

    goto :goto_3b

    :cond_33
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v5

    :goto_3b
    return-object v5

    .line 5930
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3c
    return-object v5
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 2091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2093
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2093
    return-object v2

    .line 2095
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2096
    throw v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 18
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 4230
    move/from16 v2, p4

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_c

    return-object v6

    .line 4231
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4232
    .local v1, "callingUid":I
    move-wide v3, p2

    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v7

    .line 4233
    .end local p2    # "flags":J
    .local v7, "flags":J
    const/4 v4, 0x0

    const-string v5, "get provider info"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4235
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v3, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v9

    .line 4236
    .local v9, "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProviderInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4238
    :cond_49
    if-nez v9, :cond_4c

    .line 4239
    return-object v6

    .line 4242
    :cond_4c
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 4243
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_9f

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-nez v3, :cond_60

    move v10, v1

    move-wide v1, v7

    move-object v3, v9

    goto :goto_a2

    .line 4247
    :cond_60
    invoke-static {v5, v9, v7, v8, v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 4248
    const/4 v4, 0x4

    move v0, v2

    move v2, v1

    move-object v1, v5

    move v5, v0

    move-object v0, p0

    move-object v3, p1

    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v4

    move v10, v2

    move v2, v5

    .end local v2    # "callingUid":I
    .local v10, "callingUid":I
    if-eqz v4, :cond_76

    .line 4250
    return-object v6

    .line 4252
    :cond_76
    invoke-interface {v1, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4253
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    nop

    .line 4254
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move-object v5, v1

    move v4, v2

    move-wide v1, v7

    .end local v7    # "flags":J
    .local v1, "flags":J
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4255
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_89

    .line 4256
    return-object v6

    .line 4258
    :cond_89
    move-object v7, v5

    move-object v5, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move/from16 v6, p4

    move-object v4, v3

    move-wide v2, v1

    move-object v1, v9

    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v9    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .local v1, "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .local v2, "flags":J
    .local v4, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    move-wide v11, v2

    move-object v3, v1

    move-wide v1, v11

    move-object v6, v5

    move-object v5, v7

    .end local v2    # "flags":J
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "flags":J
    .local v3, "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    return-object v0

    .line 4261
    .end local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "callingUid":I
    .local v1, "callingUid":I
    .local v7, "flags":J
    .restart local v9    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_9e
    return-object v6

    .line 4243
    :cond_9f
    move v10, v1

    move-wide v1, v7

    move-object v3, v9

    .line 4244
    .end local v7    # "flags":J
    .end local v9    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .local v1, "flags":J
    .restart local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .restart local v10    # "callingUid":I
    :goto_a2
    return-object v6
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3921
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3922
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3923
    .local v3, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 3924
    const/4 v6, 0x0

    const-string v7, "get receiver info"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p4

    .end local p4    # "userId":I
    .local v4, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3927
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {p4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object p4

    .line 3928
    .local p4, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReceiverInfo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    :cond_47
    if-nez p4, :cond_4a

    .line 3932
    return-object v1

    .line 3935
    :cond_4a
    invoke-interface {p4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3936
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_87

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_5e

    move-object v0, p1

    move-wide v6, p2

    move-object v5, p4

    goto :goto_8a

    .line 3940
    :cond_5e
    invoke-static {v10, p4, p2, p3, v4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 3941
    const/4 v6, 0x2

    move-object v2, p0

    move-object v5, p1

    move v7, v4

    move v4, v3

    move-object v3, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p1    # "component":Landroid/content/ComponentName;
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "callingUid":I
    .local v5, "component":Landroid/content/ComponentName;
    .local v7, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p1

    move v3, v4

    move-object v0, v5

    move v4, v7

    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v7    # "userId":I
    .local v0, "component":Landroid/content/ComponentName;
    .local v3, "callingUid":I
    .local v4, "userId":I
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p1, :cond_74

    .line 3942
    return-object v1

    .line 3944
    :cond_74
    move v7, v4

    .end local v4    # "userId":I
    .restart local v7    # "userId":I
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 3945
    invoke-interface {v10, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 3944
    move-object v5, p4

    move v9, v7

    move-wide v6, p2

    .end local v7    # "userId":I
    .end local p2    # "flags":J
    .end local p4    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v5, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v6, "flags":J
    .local v9, "userId":I
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    move v4, v9

    .end local v9    # "userId":I
    .restart local v4    # "userId":I
    return-object p1

    .line 3947
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v5    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v6    # "flags":J
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "flags":J
    .restart local p4    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_86
    return-object v1

    .line 3936
    :cond_87
    move-object v0, p1

    move-wide v6, p2

    move-object v5, p4

    .line 3937
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "flags":J
    .end local p4    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v5    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v6    # "flags":J
    :goto_8a
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1863
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1864
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1865
    .local v2, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 1866
    const/4 v5, 0x0

    const-string v6, "get service info"

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p4

    .end local p4    # "userId":I
    .local v3, "userId":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 1869
    move v6, v2

    move v5, v3

    move-object v2, p1

    move-wide v3, p2

    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "flags":J
    .local v2, "component":Landroid/content/ComponentName;
    .local v3, "flags":J
    .local v5, "userId":I
    .local v6, "callingUid":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    move v3, v5

    .end local v5    # "userId":I
    .local v3, "userId":I
    .restart local p2    # "flags":J
    return-object p1
.end method

.method protected getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .registers 15
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 1874
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v2

    .line 1875
    .local v2, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_2c

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :cond_2c
    const/4 v0, 0x0

    if-nez v2, :cond_30

    .line 1880
    return-object v0

    .line 1883
    :cond_30
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1884
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    move-object v3, v2

    move-object v2, v1

    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v1

    move-object v8, v2

    move v2, v1

    move-object v1, v8

    move-object v8, v3

    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .restart local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v8, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    if-eqz v2, :cond_74

    .line 1885
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1886
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v3, :cond_59

    return-object v0

    .line 1887
    :cond_59
    const/4 v6, 0x3

    move-object v2, p0

    move-object v5, p1

    move v7, p4

    move v4, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 1889
    return-object v0

    .line 1891
    :cond_65
    nop

    .line 1892
    invoke-interface {v3, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 1891
    move v6, p4

    move-object v7, v3

    move-object v2, v8

    move-wide v3, p2

    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .local v2, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    move-object v3, v2

    .end local v2    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .local v3, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    return-object v0

    .line 1894
    .end local v3    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v8    # "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_74
    return-object v0
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 42
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .line 3954
    move-object/from16 v1, p0

    move/from16 v6, p4

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_e

    return-object v9

    .line 3955
    :cond_e
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v6, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3956
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3957
    .local v10, "callingUid":I
    invoke-virtual {v1, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3958
    return-object v9

    .line 3961
    :cond_1f
    move-wide/from16 v2, p2

    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v11

    .line 3963
    .end local p2    # "flags":J
    .local v11, "flags":J
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3964
    const-string v2, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3966
    const-string v2, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_57

    .line 3968
    const/4 v0, 0x0

    move-object/from16 v13, p1

    invoke-virtual {v1, v13, v10, v6, v0}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3970
    const-string v3, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3972
    const-string v3, "android.permission.ACCESS_SHARED_LIBRARIES"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5d

    goto :goto_5c

    .line 3966
    :cond_57
    move-object/from16 v13, p1

    goto :goto_5c

    .line 3964
    :cond_5a
    move-object/from16 v13, p1

    .line 3972
    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    :cond_5d
    move v14, v0

    .line 3975
    .local v14, "canSeeStaticAndSdkLibraries":Z
    nop

    .line 3976
    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v15

    .line 3977
    .local v15, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 3978
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v15}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 3979
    .local v2, "libCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_69
    if-ge v3, v2, :cond_1a2

    .line 3980
    invoke-virtual {v15, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 3981
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v4, :cond_7b

    .line 3982
    move/from16 v32, v2

    move/from16 v33, v3

    move v5, v10

    move-wide v3, v11

    goto/16 :goto_195

    .line 3985
    :cond_7b
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 3986
    .local v5, "versionCount":I
    const/4 v7, 0x0

    move-object/from16 v16, v0

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v7, "j":I
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_82
    if-ge v7, v5, :cond_187

    .line 3987
    invoke-virtual {v4, v7}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 3988
    .local v17, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v14, :cond_aa

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 3989
    move/from16 v32, v2

    move/from16 v33, v3

    move v5, v10

    move-wide v3, v11

    goto/16 :goto_193

    .line 3988
    :cond_a2
    move/from16 v32, v2

    move/from16 v33, v3

    move v5, v10

    move-wide v3, v11

    goto/16 :goto_193

    .line 3991
    :cond_aa
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3992
    .local v18, "identity":J
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v28

    .line 3994
    .local v28, "declaringPackage":Landroid/content/pm/VersionedPackage;
    nop

    .line 3995
    move v8, v2

    .end local v2    # "libCount":I
    .local v8, "libCount":I
    :try_start_b4
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_174

    .line 3996
    move/from16 v20, v3

    move-object/from16 v21, v4

    .end local v3    # "i":I
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v20, "i":I
    .local v21, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    :try_start_bc
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3
    :try_end_c0
    .catchall {:try_start_bc .. :try_end_c0} :catchall_164

    const-wide/32 v22, 0x4000000

    or-long v22, v11, v22

    .line 3998
    move/from16 v24, v7

    .end local v7    # "j":I
    .local v24, "j":I
    :try_start_c7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_154

    .line 3994
    move/from16 v35, v5

    move/from16 v32, v8

    move/from16 v33, v20

    move-object/from16 v34, v21

    move/from16 v36, v24

    move v8, v6

    move-wide/from16 v5, v22

    .end local v5    # "versionCount":I
    .end local v8    # "libCount":I
    .end local v20    # "i":I
    .end local v21    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v24    # "j":I
    .local v32, "libCount":I
    .local v33, "i":I
    .local v34, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v35, "versionCount":I
    .local v36, "j":I
    :try_start_d8
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_14e

    .line 3999
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_e4

    .line 4003
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4000
    move v5, v10

    move-wide v3, v11

    goto :goto_13c

    .line 4003
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_e4
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4004
    nop

    .line 4005
    new-instance v20, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 4006
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v23

    .line 4007
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v25

    .line 4008
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v27

    .line 4009
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10b

    .line 4010
    move-object/from16 v29, v9

    goto :goto_116

    .line 4011
    :cond_10b
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v29, v0

    .line 4012
    :goto_116
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v30

    .line 4013
    move-object/from16 v1, p0

    move/from16 v6, p4

    move v5, v10

    move-wide v3, v11

    move-object/from16 v2, v17

    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .end local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v2, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v3, "flags":J
    .local v5, "callingUid":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v31

    invoke-direct/range {v20 .. v31}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V

    move-object/from16 v0, v20

    .line 4014
    .local v0, "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_135

    .line 4015
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    goto :goto_137

    .line 4014
    :cond_135
    move-object/from16 v1, v16

    .line 4017
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_137
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    .line 3986
    .end local v0    # "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "identity":J
    .end local v28    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_13c
    add-int/lit8 v7, v36, 0x1

    move-object/from16 v1, p0

    move/from16 v6, p4

    move-wide v11, v3

    move v10, v5

    move/from16 v2, v32

    move/from16 v3, v33

    move-object/from16 v4, v34

    move/from16 v5, v35

    .end local v36    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_82

    .line 4003
    .end local v3    # "flags":J
    .end local v5    # "callingUid":I
    .end local v7    # "j":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    .restart local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "identity":J
    .restart local v28    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v36    # "j":I
    :catchall_14e
    move-exception v0

    move v5, v10

    move-wide v3, v11

    move-object/from16 v2, v17

    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .end local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "flags":J
    .restart local v5    # "callingUid":I
    goto :goto_183

    .end local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "flags":J
    .end local v32    # "libCount":I
    .end local v33    # "i":I
    .end local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v35    # "versionCount":I
    .end local v36    # "j":I
    .local v5, "versionCount":I
    .restart local v8    # "libCount":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    .restart local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v20    # "i":I
    .restart local v21    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v24    # "j":I
    :catchall_154
    move-exception v0

    move/from16 v35, v5

    move/from16 v32, v8

    move v5, v10

    move-wide v3, v11

    move-object/from16 v2, v17

    move/from16 v33, v20

    move-object/from16 v34, v21

    move/from16 v36, v24

    .end local v8    # "libCount":I
    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .end local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v20    # "i":I
    .end local v21    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v24    # "j":I
    .restart local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "flags":J
    .local v5, "callingUid":I
    .restart local v32    # "libCount":I
    .restart local v33    # "i":I
    .restart local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v35    # "versionCount":I
    .restart local v36    # "j":I
    goto :goto_183

    .end local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "flags":J
    .end local v32    # "libCount":I
    .end local v33    # "i":I
    .end local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v35    # "versionCount":I
    .end local v36    # "j":I
    .local v5, "versionCount":I
    .restart local v7    # "j":I
    .restart local v8    # "libCount":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    .restart local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v20    # "i":I
    .restart local v21    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    :catchall_164
    move-exception v0

    move/from16 v35, v5

    move/from16 v36, v7

    move/from16 v32, v8

    move v5, v10

    move-wide v3, v11

    move-object/from16 v2, v17

    move/from16 v33, v20

    move-object/from16 v34, v21

    .end local v7    # "j":I
    .end local v8    # "libCount":I
    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .end local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v20    # "i":I
    .end local v21    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v3    # "flags":J
    .local v5, "callingUid":I
    .restart local v32    # "libCount":I
    .restart local v33    # "i":I
    .restart local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v35    # "versionCount":I
    .restart local v36    # "j":I
    goto :goto_183

    .end local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v32    # "libCount":I
    .end local v33    # "i":I
    .end local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v35    # "versionCount":I
    .end local v36    # "j":I
    .local v3, "i":I
    .restart local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v5, "versionCount":I
    .restart local v7    # "j":I
    .restart local v8    # "libCount":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    .restart local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    :catchall_174
    move-exception v0

    move/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v35, v5

    move/from16 v36, v7

    move/from16 v32, v8

    move v5, v10

    move-wide v3, v11

    move-object/from16 v2, v17

    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "j":I
    .end local v8    # "libCount":I
    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .end local v17    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v2    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .local v3, "flags":J
    .local v5, "callingUid":I
    .restart local v32    # "libCount":I
    .restart local v33    # "i":I
    .restart local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v35    # "versionCount":I
    .restart local v36    # "j":I
    :goto_183
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4004
    throw v0

    .line 3986
    .end local v18    # "identity":J
    .end local v28    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v32    # "libCount":I
    .end local v33    # "i":I
    .end local v34    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v35    # "versionCount":I
    .end local v36    # "j":I
    .local v2, "libCount":I
    .local v3, "i":I
    .restart local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v5, "versionCount":I
    .restart local v7    # "j":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    :cond_187
    move/from16 v32, v2

    move/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v35, v5

    move/from16 v36, v7

    move v5, v10

    move-wide v3, v11

    .line 3979
    .end local v2    # "libCount":I
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "j":I
    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .local v3, "flags":J
    .local v5, "callingUid":I
    .restart local v32    # "libCount":I
    .restart local v33    # "i":I
    :goto_193
    move-object/from16 v0, v16

    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_195
    add-int/lit8 v1, v33, 0x1

    move/from16 v6, p4

    move-wide v11, v3

    move v10, v5

    move/from16 v2, v32

    move v3, v1

    move-object/from16 v1, p0

    .end local v33    # "i":I
    .local v1, "i":I
    goto/16 :goto_69

    .end local v1    # "i":I
    .end local v5    # "callingUid":I
    .end local v32    # "libCount":I
    .restart local v2    # "libCount":I
    .local v3, "i":I
    .restart local v10    # "callingUid":I
    .restart local v11    # "flags":J
    :cond_1a2
    move/from16 v32, v2

    move/from16 v33, v3

    move v5, v10

    move-wide v3, v11

    .line 4021
    .end local v2    # "libCount":I
    .end local v10    # "callingUid":I
    .end local v11    # "flags":J
    .local v3, "flags":J
    .restart local v5    # "callingUid":I
    .restart local v32    # "libCount":I
    if-eqz v0, :cond_1af

    new-instance v9, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v9, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_1af
    return-object v9
.end method

.method public getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/utils/WatchedLongSparseArray<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;>;"
        }
    .end annotation

    .line 3707
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 1899
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 3
    .param p1, "sharedUserAppId"    # I

    .line 5977
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromAppId(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackages(I)Landroid/util/ArraySet;
    .registers 3
    .param p1, "sharedUserAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 5983
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5784
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5785
    .local v0, "packageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_4f

    .line 5789
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5790
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 5791
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 5792
    .local v2, "numPackages":I
    new-array v3, v2, [Ljava/lang/String;

    .line 5793
    .local v3, "res":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 5794
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_23
    if-ge v5, v2, :cond_41

    .line 5795
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5796
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 5797
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    move v4, v7

    .line 5794
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 5800
    .end local v5    # "index":I
    :cond_41
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 5801
    if-eqz v3, :cond_4c

    move-object v5, v3

    goto :goto_4e

    :cond_4c
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_4e
    return-object v5

    .line 5786
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v2    # "numPackages":I
    .end local v3    # "res":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4f
    :goto_4f
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public getSharedUsers()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/SharedUserApi;",
            ">;"
        }
    .end annotation

    .line 6077
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "uid"    # I

    .line 3101
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3102
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 3103
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_24

    .line 3104
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_18

    .line 3105
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 3106
    :cond_18
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_24

    .line 3107
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3108
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    return-object v3

    .line 3111
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_24
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v2
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3093
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3094
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_c

    .line 3095
    const/4 v1, 0x0

    return-object v1

    .line 3097
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5466
    if-nez p1, :cond_4

    .line 5467
    const/4 v0, 0x0

    return-object v0

    .line 5469
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5470
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5471
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5472
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_4b

    .line 5473
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5472
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 5478
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3b

    const/16 v3, 0x3e8

    if-ne v3, v0, :cond_33

    goto :goto_3b

    .line 5480
    :cond_33
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "May not access signing KeySet of other apps."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5482
    :cond_3b
    :goto_3b
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5483
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5474
    .end local v3    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeySet requested for unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSystemSharedLibraryNamesAndPaths()Landroid/util/ArrayMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4267
    nop

    .line 4268
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4269
    .local v0, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 4270
    .local v1, "libs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 4271
    .local v2, "libCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_6c

    .line 4272
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4273
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v4, :cond_1a

    .line 4274
    goto :goto_69

    .line 4276
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4277
    .local v5, "versionCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1f
    if-ge v6, v5, :cond_69

    .line 4278
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4279
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v8

    if-nez v8, :cond_39

    .line 4280
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4281
    goto :goto_69

    .line 4283
    :cond_39
    nop

    .line 4284
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 4285
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_66

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 4285
    const-wide/32 v13, 0x4000000

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v8

    if-nez v8, :cond_66

    .line 4288
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4289
    goto :goto_69

    .line 4277
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 4271
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4293
    .end local v3    # "i":I
    :cond_6c
    return-object v1
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3873
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3874
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, -0x1

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_26

    .line 3877
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3878
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3877
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3879
    return v1

    .line 3881
    :cond_1d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 3875
    :cond_26
    :goto_26
    return v1
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 6
    .param p1, "sharedUserName"    # Ljava/lang/String;

    .line 4571
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 4572
    return v0

    .line 4574
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4575
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4576
    return v0

    .line 4578
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 4579
    .local v2, "suid":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v2, :cond_24

    .line 4580
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4579
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 4581
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return v0

    .line 4583
    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 11
    .param p1, "uid"    # I

    .line 5886
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5887
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5889
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5890
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5891
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_44

    .line 5892
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5893
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5894
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v3

    .line 5895
    .local v3, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/16 v4, 0x2710

    .line 5896
    .local v4, "vers":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 5897
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_27
    if-ge v6, v5, :cond_43

    .line 5898
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5899
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    if-eqz v8, :cond_40

    .line 5900
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v8

    .line 5901
    .local v8, "v":I
    if-ge v8, v4, :cond_40

    move v4, v8

    .line 5897
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "v":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5904
    .end local v6    # "index":I
    :cond_43
    return v4

    .line 5905
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v3    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v4    # "vers":I
    .end local v5    # "numPackages":I
    :cond_44
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_5a

    .line 5906
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5907
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 5908
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v3

    return v3

    .line 5911
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5a
    const/16 v2, 0x2710

    return v2
.end method

.method public final getUsed()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return v0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 2

    .line 6083
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return v0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5551
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v0

    .line 5553
    .local v0, "visibilityAllowList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    if-eqz v0, :cond_11

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method public getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 5540
    nop

    .line 5541
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5542
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_b

    .line 5543
    const/4 v1, 0x0

    return-object v1

    .line 5545
    :cond_b
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-interface {v1, p0, v0, p2, v2}, Lcom/android/server/pm/AppsFilterSnapshot;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1
.end method

.method public getVolumePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 6071
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getVolumePackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 4418
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4419
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4420
    return v1

    .line 4422
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4423
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4424
    .local v3, "callingUserId":I
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4425
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_3b

    .line 4426
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_3b

    .line 4429
    :cond_25
    packed-switch p3, :pswitch_data_3c

    .line 4435
    return v1

    .line 4433
    :pswitch_29
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v1

    return v1

    .line 4431
    :pswitch_32
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v1

    return v1

    .line 4427
    :cond_3b
    :goto_3b
    return v1

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_32
        :pswitch_29
    .end packed-switch
.end method

.method public hasUidSigningCertificate(I[BI)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "certificate"    # [B
    .param p3, "type"    # I

    .line 4442
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4443
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4444
    .local v1, "callingUserId":I
    nop

    .line 4445
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4446
    .local v2, "signingDetails":Landroid/content/pm/SigningDetails;
    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 4447
    return v3

    .line 4449
    :cond_11
    packed-switch p3, :pswitch_data_20

    .line 4455
    return v3

    .line 4453
    :pswitch_15
    invoke-virtual {v2, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v3

    return v3

    .line 4451
    :pswitch_1a
    invoke-virtual {v2, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v3

    return v3

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method protected instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 442
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3784
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3785
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isApplicationEffectivelyEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 5428
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5429
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5428
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    .line 5430
    .local v1, "appEnabledSetting":I
    if-nez v1, :cond_19

    .line 5431
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 5432
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v2, :cond_14

    .line 5434
    return v0

    .line 5436
    :cond_14
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1e

    return v0

    .line 5438
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    move v0, v2

    :cond_1d
    return v0

    .line 5440
    .end local v1    # "appEnabledSetting":I
    :catch_1e
    move-exception v1

    .line 5441
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 5633
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5634
    return v0

    .line 5636
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5637
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_f

    .line 5638
    return v0

    .line 5641
    :cond_f
    nop

    .line 5642
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5641
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5643
    .local v2, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_28

    .line 5644
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 5643
    :goto_29
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2320
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;IZ)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "resolveIsolatedUid"    # Z

    .line 2325
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 2326
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2327
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2326
    :goto_18
    return v1

    .line 2330
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2332
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_24

    .line 2333
    return v2

    .line 2336
    :cond_24
    invoke-static {p2}, Landroid/os/Process;->isPrivateComputeCoreUid(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2337
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->-$$Nest$fgetmSettings(Lcom/android/server/pm/ComputerEngine$Settings;)Lcom/android/server/pm/Settings;

    move-result-object v3

    .line 2338
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/Settings;->getPccSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2339
    .local v3, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_47

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v5

    if-ne v4, v5, :cond_47

    goto :goto_48

    :cond_47
    move v1, v2

    :goto_48
    return v1

    .line 2342
    .end local v3    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_49
    if-eqz p3, :cond_55

    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 2343
    invoke-direct {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    .line 2346
    :cond_55
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_60

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z
    .registers 10
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 5402
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5403
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5404
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5405
    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    .line 5406
    .local v3, "appEnabledSetting":I
    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 5407
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1a

    .line 5408
    return v0

    .line 5410
    :cond_17
    if-eq v3, v4, :cond_1a

    .line 5411
    return v0

    .line 5414
    :cond_1a
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5415
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 5414
    invoke-virtual {v5, v6, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v5

    .line 5416
    .local v5, "componentEnabledSetting":I
    if-nez v5, :cond_2b

    .line 5417
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f

    return v0

    .line 5418
    :cond_2b
    if-ne v5, v4, :cond_2e

    move v0, v4

    :cond_2e
    return v0

    .line 5419
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "appEnabledSetting":I
    .end local v5    # "componentEnabledSetting":I
    :catch_2f
    move-exception v1

    .line 5420
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2355
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2356
    return v0

    .line 2358
    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2359
    return v0

    .line 2361
    :cond_10
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z
    .registers 9
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "type"    # I

    .line 2366
    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2d

    .line 2367
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2368
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_11

    .line 2369
    return v2

    .line 2371
    :cond_11
    nop

    .line 2372
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 2373
    .local v1, "visibleToInstantApp":Z
    :goto_1c
    nop

    .line 2374
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    .line 2376
    .local v0, "explicitlyVisibleToInstantApp":Z
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    return v2

    .line 2377
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_2d
    const/4 v4, 0x2

    if-ne p2, v4, :cond_55

    .line 2378
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2379
    .restart local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_39

    .line 2380
    return v2

    .line 2382
    :cond_39
    nop

    .line 2383
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    .line 2384
    .restart local v1    # "visibleToInstantApp":Z
    :goto_44
    nop

    .line 2385
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_4e

    move v0, v3

    goto :goto_4f

    :cond_4e
    move v0, v2

    .line 2387
    .restart local v0    # "explicitlyVisibleToInstantApp":Z
    :goto_4f
    if-eqz v1, :cond_54

    if-nez v0, :cond_54

    move v2, v3

    :cond_54
    return v2

    .line 2388
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_55
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6b

    .line 2389
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v0

    .line 2390
    .local v0, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    if-eqz v0, :cond_69

    .line 2391
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    nop

    .line 2390
    :goto_6a
    return v2

    .line 2392
    .end local v0    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_6b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_81

    .line 2393
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v0

    .line 2394
    .local v0, "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    if-eqz v0, :cond_7f

    .line 2395
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    move v2, v3

    goto :goto_80

    :cond_7f
    nop

    .line 2394
    :goto_80
    return v2

    .line 2396
    .end local v0    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_81
    if-nez p2, :cond_88

    .line 2397
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 2399
    :cond_88
    return v2
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2414
    invoke-virtual {p1}, Landroid/content/Intent;->isImplicitImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public final isInstallDisabledForPackage(Ljava/lang/String;II)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 4065
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4066
    const-string/jumbo v2, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_29

    .line 4070
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 4071
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result v0

    .line 4072
    .local v0, "isTrusted":I
    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    .line 4074
    .end local v0    # "isTrusted":I
    :cond_28
    return v2

    .line 4068
    :cond_29
    :goto_29
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2419
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2420
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string/jumbo v5, "isInstantApp"

    const/4 v3, 0x1

    move-object v0, p0

    move v2, p2

    .end local p2    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2423
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result p2

    return p2
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2431
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2436
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2437
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2439
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2440
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2442
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2443
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2445
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2444
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v1

    .line 2446
    .local v2, "returnAllowed":Z
    :goto_32
    if-eqz v2, :cond_3d

    .line 2447
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    return v1

    .line 2449
    :cond_3d
    return v1
.end method

.method protected isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .param p4, "skipPackageCheck"    # Z
    .param p5, "flags"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZJ)Z"
        }
    .end annotation

    .line 2498
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v3, v2

    goto :goto_d

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2499
    .local v3, "count":I
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    if-eqz v4, :cond_18

    move v4, v5

    goto :goto_19

    :cond_18
    move v4, v2

    .line 2500
    .local v4, "debug":Z
    :goto_19
    const-string v6, "PackageManager"

    if-eqz v4, :cond_33

    .line 2501
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checking if instant app resolution allowed, resolvedActivities = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_33
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_34
    if-ge v7, v3, :cond_c0

    .line 2505
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2506
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2507
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 2508
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v12, :cond_a2

    .line 2510
    iget-boolean v10, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v10, :cond_7b

    .line 2511
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v13, p1

    move/from16 v16, p3

    move-wide/from16 v14, p5

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v10

    if-eqz v10, :cond_7b

    .line 2513
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_7a

    .line 2514
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DENY instant app; pkg: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", approved"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    :cond_7a
    return v2

    .line 2520
    :cond_7b
    move/from16 v10, p3

    invoke-interface {v12, v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v11

    if-eqz v11, :cond_bc

    .line 2521
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_a1

    .line 2522
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DENY instant app installed; pkg: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_a1
    return v2

    .line 2527
    :cond_a2
    move/from16 v10, p3

    if-eqz v4, :cond_bc

    .line 2528
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find package "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_bc
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_34

    :cond_c0
    move/from16 v10, p3

    .line 2532
    .end local v7    # "n":I
    return v5
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3754
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3755
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3756
    .local v3, "callingUid":I
    const/4 v6, 0x0

    const-string/jumbo v7, "is package available"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, p2

    .end local p2    # "userId":I
    .local v4, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3759
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p2

    .line 3760
    .local p2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz p2, :cond_5c

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 3761
    invoke-virtual {p0, p2, v3, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3762
    return v1

    .line 3764
    :cond_2b
    invoke-interface {p2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 3765
    .local v0, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v0, :cond_5c

    .line 3768
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3769
    invoke-static {v0}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_47

    .line 3770
    return v5

    .line 3772
    :cond_47
    invoke-interface {p2, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 3773
    .local v2, "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v2, :cond_54

    invoke-static {v2}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v1, v5

    :cond_54
    return v1

    .line 3776
    .end local v2    # "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_55
    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    return v1

    .line 3779
    .end local v0    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_5c
    return v1
.end method

.method public isPackageQuarantinedForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5150
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isQuarantined()Z

    move-result v0

    return v0
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 5488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5489
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5490
    return v2

    .line 5492
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5495
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5496
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5497
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5499
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5498
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5503
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5504
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5505
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5506
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5508
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5500
    .end local v4    # "ksh":Landroid/os/IBinder;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeySet requested for unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PackageManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5501
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5493
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "callingUserId":I
    :cond_75
    :goto_75
    return v2
.end method

.method public isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 5513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5514
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5515
    return v2

    .line 5517
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5520
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5521
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5522
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5524
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5523
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5528
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5529
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5530
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5531
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5533
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5525
    .end local v4    # "ksh":Landroid/os/IBinder;
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeySet requested for unknown package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PackageManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5518
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "callingUserId":I
    :cond_75
    :goto_75
    return v2
.end method

.method public isPackageStoppedForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5156
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isStopped()Z

    move-result v0

    return v0
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5144
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComputerEngine;->getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public final isSameProfileGroup(II)Z
    .registers 6
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 2572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2574
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2574
    return v2

    .line 2576
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2577
    throw v2
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "suspendingUserId"    # I
    .param p3, "targetUserId"    # I

    .line 5162
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    .line 5163
    .local v0, "suspender":Landroid/content/pm/UserPackage;
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5164
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .line 5165
    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 5166
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 5167
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 5168
    const/4 v1, 0x1

    return v1

    .line 5170
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_33
    goto :goto_10

    .line 5171
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method public isUidPrivileged(I)Z
    .registers 11
    .param p1, "uid"    # I

    .line 4644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4645
    return v1

    .line 4647
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4648
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4650
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4651
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 4652
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_45

    .line 4653
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4654
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 4655
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v4

    .line 4656
    .local v4, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 4657
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_31
    if-ge v6, v5, :cond_44

    .line 4658
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4659
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->isPrivileged()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 4660
    const/4 v1, 0x1

    return v1

    .line 4657
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_41
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v4    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v5    # "numPackages":I
    .end local v6    # "index":I
    :cond_44
    goto :goto_51

    .line 4663
    :cond_45
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_51

    .line 4664
    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4665
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    return v3

    .line 4663
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_51
    :goto_51
    nop

    .line 4667
    return v1
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 20
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # J
    .param p5, "metaDataKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 5009
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5010
    .local v1, "callingUid":I
    if-eqz p1, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v2, v0

    goto :goto_11

    .line 5011
    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move v2, v0

    :goto_11
    move v10, v2

    .line 5012
    .local v10, "userId":I
    const/4 v4, 0x0

    const-string/jumbo v5, "queryContentProviders"

    const/4 v3, 0x0

    move-object v0, p0

    .end local v10    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5014
    .end local v2    # "userId":I
    .restart local v10    # "userId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    return-object v2

    .line 5015
    :cond_28
    move-wide/from16 v2, p3

    invoke-virtual {p0, v2, v3, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v8

    .line 5016
    .end local p3    # "flags":J
    .local v8, "flags":J
    const/4 v2, 0x0

    .line 5017
    .local v2, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v4, p0

    move-object v5, p1

    move/from16 v7, p2

    move-object/from16 v6, p5

    invoke-interface/range {v3 .. v10}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v11

    .line 5019
    .local v11, "matchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-nez v11, :cond_3f

    const/4 v3, 0x0

    goto :goto_43

    :cond_3f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    :goto_43
    move v6, v3

    .line 5020
    .local v6, "listSize":I
    const/4 v3, 0x0

    move-object v7, v2

    move v12, v3

    .end local v2    # "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v7, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    .local v12, "i":I
    :goto_47
    if-ge v12, v6, :cond_8f

    .line 5021
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/content/pm/ProviderInfo;

    .line 5022
    .local v13, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v3, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 5023
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5022
    invoke-static {v2, v13, v8, v9, v10}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 5025
    goto :goto_8c

    .line 5027
    :cond_5f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v3, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5028
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v13, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v13, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5030
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v4, 0x4

    move-object v0, v2

    move v2, v1

    move-object v1, v0

    move-object v0, p0

    move v5, v10

    .end local v10    # "userId":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v4

    move-object v0, v1

    move v1, v2

    .end local v2    # "callingUid":I
    .end local v5    # "userId":I
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "callingUid":I
    .restart local v10    # "userId":I
    if-eqz v4, :cond_7f

    .line 5032
    goto :goto_8c

    .line 5034
    :cond_7f
    if-nez v7, :cond_89

    .line 5035
    new-instance v2, Ljava/util/ArrayList;

    sub-int v4, v6, v12

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v2

    .line 5037
    :cond_89
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5020
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v13    # "providerInfo":Landroid/content/pm/ProviderInfo;
    :goto_8c
    add-int/lit8 v12, v12, 0x1

    goto :goto_47

    .line 5040
    .end local v12    # "i":I
    :cond_8f
    if-eqz v7, :cond_9c

    .line 5041
    sget-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5042
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 5045
    :cond_9c
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .line 5073
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5074
    .local v1, "callingUid":I
    const/4 v4, 0x0

    const-string/jumbo v5, "queryInstrumentationAsUser"

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p3

    .end local p3    # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5076
    move p3, v1

    .end local v1    # "callingUid":I
    .local p3, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5077
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 5079
    .local v7, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v8

    .line 5080
    .local v8, "numInstrumentations":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "index":I
    :goto_2a
    if-ge v9, v8, :cond_74

    .line 5081
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v9}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 5082
    .local v0, "p":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    if-eqz p1, :cond_43

    .line 5083
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_43

    :cond_41
    move v5, v2

    goto :goto_70

    .line 5084
    :cond_43
    :goto_43
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 5085
    .local v10, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v10}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5086
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {p0, v10}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 5087
    .local v6, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_6f

    if-eqz v6, :cond_6f

    .line 5088
    invoke-virtual {p0, v6, p3, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 5089
    move v5, v2

    goto :goto_70

    .line 5091
    :cond_5f
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 5092
    .local v4, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move v5, v2

    .end local v2    # "userId":I
    .local v5, "userId":I
    int-to-long v2, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v2

    .line 5094
    .local v2, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v2, :cond_70

    .line 5095
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_70

    .line 5087
    .end local v4    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v5    # "userId":I
    .local v2, "userId":I
    :cond_6f
    move v5, v2

    .line 5080
    .end local v0    # "p":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "userId":I
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "packageName":Ljava/lang/String;
    .restart local v5    # "userId":I
    :cond_70
    :goto_70
    add-int/lit8 v9, v9, 0x1

    move v2, v5

    goto :goto_2a

    .line 5100
    .end local v5    # "userId":I
    .end local v9    # "index":I
    .restart local v2    # "userId":I
    :cond_74
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v7}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 650
    nop

    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 650
    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 642
    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v5, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;
    .registers 39
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "privateResolveFlags"    # J
    .param p7, "filterCallingUid"    # I
    .param p8, "callingPid"    # I
    .param p9, "userId"    # I
    .param p10, "resolveForStart"    # Z
    .param p11, "allowDynamicSplits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJIIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 512
    move-object/from16 v0, p0

    move/from16 v6, p7

    move/from16 v2, p9

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 515
    :cond_13
    const-wide v3, 0x200000000L

    or-long v7, p3, v3

    .line 517
    .end local p3    # "flags":J
    .local v7, "flags":J
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 518
    .local v10, "instantAppPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    .line 522
    .local v9, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 523
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 524
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_49

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 526
    move-object/from16 v0, p1

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 528
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v12, v1

    move-object v1, v2

    move-object v11, v0

    goto :goto_4d

    .line 533
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_49
    move-object v12, v1

    move-object/from16 v1, p1

    move-object v11, v0

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v11, "originalIntent":Landroid/content/Intent;
    .local v12, "comp":Landroid/content/ComponentName;
    :goto_4d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/xspace/XSpaceManagerStub;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 534
    const-wide/32 v2, 0x402000

    or-long/2addr v7, v2

    move-wide v4, v7

    goto :goto_5e

    .line 533
    :cond_5d
    move-wide v4, v7

    .line 537
    .end local v7    # "flags":J
    .local v4, "flags":J
    :goto_5e
    if-nez v12, :cond_65

    if-eqz v9, :cond_63

    goto :goto_65

    :cond_63
    const/4 v6, 0x0

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v6, 0x1

    .line 539
    :goto_66
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v2, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    .line 537
    move-object v14, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local v14, "intent":Landroid/content/Intent;
    move/from16 v3, p9

    move-wide v1, v4

    move/from16 v4, p7

    move/from16 v5, p10

    .end local v4    # "flags":J
    .local v1, "flags":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v1

    .line 542
    move-object v7, v0

    move v15, v3

    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-wide v4, v1

    move-object v1, v14

    move-wide v13, v4

    move-object/from16 v2, p2

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v4, p10

    .end local v14    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v13, "flags":J
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move v4, v5

    .line 544
    .local v0, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 545
    iput-object v7, v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 548
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v17, 0x0

    .line 549
    .local v17, "skipPostResolution":Z
    if-eqz v12, :cond_19a

    .line 550
    invoke-virtual {v7, v12, v13, v14, v15}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 551
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v2, :cond_18b

    .line 556
    const-wide/32 v5, 0x800000

    and-long/2addr v5, v13

    const-wide/16 v18, 0x0

    cmp-long v3, v5, v18

    if-eqz v3, :cond_b4

    const/4 v3, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v3, 0x0

    .line 558
    .local v3, "matchInstantApp":Z
    :goto_b5
    const-wide/32 v5, 0x1000000

    and-long/2addr v5, v13

    cmp-long v5, v5, v18

    if-eqz v5, :cond_bf

    const/4 v5, 0x1

    goto :goto_c0

    :cond_bf
    const/4 v5, 0x0

    .line 560
    .local v5, "matchVisibleToInstantAppOnly":Z
    :goto_c0
    const-wide/32 v20, 0x2000000

    and-long v20, v13, v20

    cmp-long v6, v20, v18

    if-eqz v6, :cond_cb

    const/4 v6, 0x1

    goto :goto_cc

    :cond_cb
    const/4 v6, 0x0

    .line 562
    .local v6, "matchExplicitlyVisibleOnly":Z
    :goto_cc
    if-eqz v10, :cond_d1

    const/16 v18, 0x1

    goto :goto_d3

    :cond_d1
    const/16 v18, 0x0

    .line 564
    .local v18, "isCallerInstantApp":Z
    :goto_d3
    nop

    .line 565
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 566
    .local v8, "isTargetSameInstantApp":Z
    move-object/from16 p4, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local p4, "intent":Landroid/content/Intent;
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_e8

    const/4 v1, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    .line 569
    .local v1, "isTargetInstantApp":Z
    :goto_e9
    move/from16 v19, v1

    .end local v1    # "isTargetInstantApp":Z
    .local v19, "isTargetInstantApp":Z
    iget v1, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x100000

    and-int v1, v1, v20

    if-eqz v1, :cond_f5

    const/4 v1, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v1, 0x0

    .line 571
    .local v1, "isTargetVisibleToInstantApp":Z
    :goto_f6
    if-eqz v1, :cond_104

    move/from16 v20, v1

    .end local v1    # "isTargetVisibleToInstantApp":Z
    .local v20, "isTargetVisibleToInstantApp":Z
    iget v1, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v21, 0x200000

    and-int v1, v1, v21

    if-nez v1, :cond_106

    const/4 v1, 0x1

    goto :goto_107

    .end local v20    # "isTargetVisibleToInstantApp":Z
    .restart local v1    # "isTargetVisibleToInstantApp":Z
    :cond_104
    move/from16 v20, v1

    .end local v1    # "isTargetVisibleToInstantApp":Z
    .restart local v20    # "isTargetVisibleToInstantApp":Z
    :cond_106
    const/4 v1, 0x0

    .line 575
    .local v1, "isTargetExplicitlyVisibleToInstantApp":Z
    :goto_107
    if-eqz v20, :cond_111

    if-eqz v6, :cond_10e

    if-nez v1, :cond_10e

    goto :goto_111

    :cond_10e
    const/16 v21, 0x0

    goto :goto_113

    :cond_111
    :goto_111
    const/16 v21, 0x1

    .line 579
    .local v21, "isTargetHiddenFromInstantApp":Z
    :goto_113
    if-nez v8, :cond_124

    if-nez v3, :cond_11b

    if-nez v18, :cond_11b

    if-nez v19, :cond_121

    :cond_11b
    if-eqz v5, :cond_124

    if-eqz v18, :cond_124

    if-eqz v21, :cond_124

    :cond_121
    const/16 v22, 0x1

    goto :goto_126

    :cond_124
    const/16 v22, 0x0

    .line 584
    .local v22, "blockInstantResolution":Z
    :goto_126
    if-eqz p10, :cond_136

    move/from16 v23, v1

    .end local v1    # "isTargetExplicitlyVisibleToInstantApp":Z
    .local v23, "isTargetExplicitlyVisibleToInstantApp":Z
    iget-boolean v1, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v1, :cond_138

    .line 586
    invoke-virtual {v7, v9, v4}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_138

    const/4 v1, 0x1

    goto :goto_139

    .line 584
    .end local v23    # "isTargetExplicitlyVisibleToInstantApp":Z
    .restart local v1    # "isTargetExplicitlyVisibleToInstantApp":Z
    :cond_136
    move/from16 v23, v1

    .line 586
    .end local v1    # "isTargetExplicitlyVisibleToInstantApp":Z
    .restart local v23    # "isTargetExplicitlyVisibleToInstantApp":Z
    :cond_138
    const/4 v1, 0x0

    .line 587
    .local v1, "resolveForStartNonExported":Z
    :goto_139
    if-eqz p10, :cond_143

    if-eqz v1, :cond_13e

    goto :goto_143

    :cond_13e
    move/from16 v24, v1

    move/from16 v25, v3

    goto :goto_161

    :cond_143
    :goto_143
    if-nez v19, :cond_15d

    if-nez v18, :cond_15d

    move/from16 v24, v1

    .end local v1    # "resolveForStartNonExported":Z
    .local v24, "resolveForStartNonExported":Z
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 592
    move/from16 v25, v3

    .end local v3    # "matchInstantApp":Z
    .local v25, "matchInstantApp":Z
    const/16 v3, 0x3e8

    invoke-virtual {v7, v1, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 591
    invoke-virtual {v7, v1, v4, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_161

    const/4 v1, 0x1

    goto :goto_162

    .line 587
    .end local v24    # "resolveForStartNonExported":Z
    .end local v25    # "matchInstantApp":Z
    .restart local v1    # "resolveForStartNonExported":Z
    .restart local v3    # "matchInstantApp":Z
    :cond_15d
    move/from16 v24, v1

    move/from16 v25, v3

    .line 591
    .end local v1    # "resolveForStartNonExported":Z
    .end local v3    # "matchInstantApp":Z
    .restart local v24    # "resolveForStartNonExported":Z
    .restart local v25    # "matchInstantApp":Z
    :cond_161
    :goto_161
    const/4 v1, 0x0

    .line 594
    .local v1, "blockNormalResolution":Z
    :goto_162
    if-nez v22, :cond_186

    if-nez v1, :cond_186

    .line 595
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 596
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 597
    move/from16 p3, v1

    .end local v1    # "blockNormalResolution":Z
    .local p3, "blockNormalResolution":Z
    invoke-static {v15}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 598
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v26, v2

    const/4 v2, 0x1

    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .local v26, "ai":Landroid/content/pm/ActivityInfo;
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 599
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-static {v0, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v16, v1

    goto :goto_18f

    .line 594
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "ai":Landroid/content/pm/ActivityInfo;
    .end local p3    # "blockNormalResolution":Z
    .local v1, "blockNormalResolution":Z
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_186
    move/from16 p3, v1

    move-object/from16 v26, v2

    .end local v1    # "blockNormalResolution":Z
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v26    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "blockNormalResolution":Z
    goto :goto_18f

    .line 551
    .end local v5    # "matchVisibleToInstantAppOnly":Z
    .end local v6    # "matchExplicitlyVisibleOnly":Z
    .end local v8    # "isTargetSameInstantApp":Z
    .end local v18    # "isCallerInstantApp":Z
    .end local v19    # "isTargetInstantApp":Z
    .end local v20    # "isTargetVisibleToInstantApp":Z
    .end local v21    # "isTargetHiddenFromInstantApp":Z
    .end local v22    # "blockInstantResolution":Z
    .end local v23    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v24    # "resolveForStartNonExported":Z
    .end local v25    # "matchInstantApp":Z
    .end local v26    # "ai":Landroid/content/pm/ActivityInfo;
    .end local p3    # "blockNormalResolution":Z
    .end local p4    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_18b
    move-object/from16 p4, v1

    move-object/from16 v26, v2

    .line 603
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_18f
    move-object/from16 v7, p4

    move-object v15, v9

    move-wide/from16 v19, v13

    move-object/from16 v1, v16

    move-object v13, v0

    move v9, v4

    goto/16 :goto_1ef

    .line 604
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_19a
    move-object/from16 p4, v1

    .line 605
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    move-object/from16 v2, p2

    move/from16 v8, p11

    move v5, v4

    move-wide v3, v13

    move v6, v15

    move-object v13, v0

    move-object v0, v7

    move/from16 v7, p10

    .end local v0    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    .local v3, "flags":J
    .local v13, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v14

    .line 608
    move-object v15, v9

    move v9, v5

    move-wide v4, v3

    .end local v3    # "flags":J
    .end local v9    # "pkgName":Ljava/lang/String;
    .restart local v4    # "flags":J
    .local v14, "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    .local v15, "pkgName":Ljava/lang/String;
    iget-object v2, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v2, :cond_1bb

    .line 609
    const/16 v17, 0x1

    .line 610
    iget-object v2, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    move-object v7, v1

    move-object v0, v2

    move-wide/from16 v19, v4

    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1eb

    .line 612
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1bb
    iget-boolean v2, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v2, :cond_1db

    .line 613
    invoke-virtual {v0, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "callingPkgName":Ljava/lang/String;
    invoke-virtual {v0, v2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v8

    .line 615
    .local v8, "isRequesterInstantApp":Z
    move-object v7, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    iget-object v1, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v3, p2

    move-object/from16 v18, v2

    move-object v2, v7

    move/from16 v7, p10

    .end local v7    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    .local v18, "callingPkgName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v1

    move-object v7, v2

    move-wide/from16 v19, v4

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":J
    .restart local v7    # "intent":Landroid/content/Intent;
    .local v19, "flags":J
    iput-object v1, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    goto :goto_1de

    .line 612
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isRequesterInstantApp":Z
    .end local v18    # "callingPkgName":Ljava/lang/String;
    .end local v19    # "flags":J
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v4    # "flags":J
    :cond_1db
    move-object v7, v1

    move-wide/from16 v19, v4

    .line 619
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":J
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v19    # "flags":J
    :goto_1de
    iget-boolean v0, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_1e9

    .line 620
    iget-object v0, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 622
    :cond_1e9
    iget-object v0, v14, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 624
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1eb
    invoke-static {v13, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v1, v0

    .line 627
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_1ef
    if-eqz v11, :cond_1f6

    .line 629
    iput-object v11, v13, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 630
    invoke-static {v13, v1}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 633
    :cond_1f6
    if-eqz v17, :cond_1fd

    move-object v8, v1

    move-object/from16 v16, v8

    move-object v1, v7

    goto :goto_20e

    :cond_1fd
    move-object/from16 v0, p0

    move/from16 v6, p9

    move/from16 v5, p10

    move/from16 v3, p11

    move v4, v9

    move-object v2, v10

    .end local v10    # "instantAppPkgName":Ljava/lang/String;
    .local v2, "instantAppPkgName":Ljava/lang/String;
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v16, v1

    move-object v1, v7

    .end local v2    # "instantAppPkgName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .restart local v10    # "instantAppPkgName":Ljava/lang/String;
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_20e
    return-object v8
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .registers 30
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "allowDynamicSplits"    # Z
    .param p9, "pkgName"    # Ljava/lang/String;
    .param p10, "instantAppPkgName"    # Ljava/lang/String;

    .line 771
    move-object/from16 v1, p0

    move/from16 v3, p6

    const/4 v11, 0x0

    .line 772
    .local v11, "sortResult":Z
    const/4 v8, 0x0

    .line 773
    .local v8, "addInstant":Z
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .local v13, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 776
    .local v12, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    if-nez p9, :cond_9b

    .line 777
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_56

    .line 781
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-wide/32 v5, 0x20000000

    and-long v5, p3, v5

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_3f

    .line 783
    const-wide/32 v5, -0x402001

    and-long v5, p3, v5

    move-wide v4, v5

    .end local p3    # "flags":J
    .local v5, "flags":J
    goto :goto_41

    .line 786
    .end local v5    # "flags":J
    .restart local p3    # "flags":J
    :cond_3f
    move-wide/from16 v4, p3

    .end local p3    # "flags":J
    .local v4, "flags":J
    :goto_41
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move v6, v3

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 789
    move v3, v6

    .local v0, "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_54

    .line 795
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 798
    .end local v0    # "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_54
    move-wide v5, v4

    goto :goto_58

    .line 777
    .end local v4    # "flags":J
    .restart local p3    # "flags":J
    :cond_56
    move-wide/from16 v5, p3

    .line 798
    .end local p3    # "flags":J
    .restart local v5    # "flags":J
    :goto_58
    const/4 v4, 0x0

    move-object v0, v1

    move-object v2, v13

    move-object/from16 v1, p1

    .end local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v13

    .line 801
    move-object v1, v0

    move v14, v13

    move-object v13, v2

    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "addInstant":Z
    .restart local v13    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v14, "addInstant":Z
    invoke-direct {v1, v13}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v8

    .line 808
    .local v8, "hasNonNegativePriorityResult":Z
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 810
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 808
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v9, p7

    move-object/from16 v7, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 811
    move v3, v4

    move-object v9, v7

    .end local v12    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v0, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v2

    if-nez v2, :cond_90

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    :cond_90
    const/4 v11, 0x1

    .line 812
    .end local v8    # "hasNonNegativePriorityResult":Z
    :cond_91
    move/from16 v15, p5

    move-wide v8, v5

    move/from16 v16, v14

    move/from16 v17, v11

    move-object v14, v0

    goto/16 :goto_113

    .line 813
    .end local v0    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v5    # "flags":J
    .end local v14    # "addInstant":Z
    .local v8, "addInstant":Z
    .restart local v12    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .restart local p3    # "flags":J
    :cond_9b
    move-object/from16 v9, p9

    .line 814
    const/16 v0, 0x3e8

    invoke-virtual {v1, v9, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 816
    .local v14, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_d8

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_d8

    if-nez p7, :cond_b6

    .line 817
    move/from16 v15, p5

    invoke-virtual {v1, v14, v15, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_da

    goto :goto_b8

    .line 816
    :cond_b6
    move/from16 v15, p5

    .line 818
    :goto_b8
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 819
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    .line 818
    move-object/from16 v2, p1

    move-wide/from16 v4, p3

    move v7, v3

    move-object/from16 v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 822
    move v3, v7

    .local v0, "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_da

    .line 823
    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_da

    .line 816
    .end local v0    # "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d8
    move/from16 v15, p5

    .line 826
    :cond_da
    :goto_da
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_ef

    .line 829
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-wide/from16 v5, p3

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v8

    move-object v1, v0

    move/from16 v16, v8

    goto :goto_f1

    .line 826
    :cond_ef
    move/from16 v16, v8

    .line 837
    .end local v8    # "addInstant":Z
    .local v16, "addInstant":Z
    :goto_f1
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 839
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v10, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 837
    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v5, p3

    move/from16 v4, p6

    move-object v7, v9

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move v3, v4

    move-wide/from16 v8, p3

    move-object v14, v0

    move/from16 v17, v11

    .line 848
    .end local v11    # "sortResult":Z
    .end local v12    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local p3    # "flags":J
    .local v8, "flags":J
    .local v14, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v17, "sortResult":Z
    :goto_113
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 852
    invoke-direct {v1, v3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v15

    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 853
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 849
    move/from16 v11, p5

    move/from16 v12, p7

    move/from16 v7, p8

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move-object v2, v1

    move v10, v3

    move-object/from16 v18, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v1, v0

    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v0

    .line 848
    return-object v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIIZZ)Ljava/util/List;
    .registers 31
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "callingPid"    # I
    .param p8, "includeInstantApps"    # Z
    .param p9, "resolveForStart"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 660
    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v6, p6

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 661
    :cond_13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent services"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 666
    invoke-virtual {v0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 667
    .local v7, "instantAppPkgName":Ljava/lang/String;
    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v8

    .line 670
    move-object v10, v0

    move v11, v3

    .end local p3    # "flags":J
    .local v8, "flags":J
    new-instance v0, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v4, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move v6, v5

    move-object v12, v0

    .line 672
    .local v12, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v0, v10, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 673
    iput-object v10, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 677
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_69

    .line 678
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 679
    move-object/from16 v0, p1

    .line 680
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 681
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v14, v1

    move-object v1, v2

    move-object v13, v0

    goto :goto_6d

    .line 684
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_69
    move-object v14, v1

    move-object/from16 v1, p1

    move-object v13, v0

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    .local v13, "originalIntent":Landroid/content/Intent;
    .local v14, "comp":Landroid/content/ComponentName;
    :goto_6d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 685
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v14, :cond_116

    .line 686
    invoke-virtual {v10, v14, v8, v9, v11}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 687
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_10e

    .line 692
    const-wide/32 v2, 0x800000

    and-long/2addr v2, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_85

    const/4 v2, 0x1

    goto :goto_86

    :cond_85
    const/4 v2, 0x0

    .line 694
    .local v2, "matchInstantApp":Z
    :goto_86
    const-wide/32 v16, 0x1000000

    and-long v16, v8, v16

    cmp-long v4, v16, v4

    if-eqz v4, :cond_91

    const/4 v4, 0x1

    goto :goto_92

    :cond_91
    const/4 v4, 0x0

    .line 696
    .local v4, "matchVisibleToInstantAppOnly":Z
    :goto_92
    if-eqz v7, :cond_96

    const/4 v5, 0x1

    goto :goto_97

    :cond_96
    const/4 v5, 0x0

    .line 698
    .local v5, "isCallerInstantApp":Z
    :goto_97
    nop

    .line 699
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 700
    .local v3, "isTargetSameInstantApp":Z
    move-object/from16 p4, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .local p4, "intent":Landroid/content/Intent;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_ac

    const/4 v1, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v1, 0x0

    .line 703
    .local v1, "isTargetInstantApp":Z
    :goto_ad
    move/from16 v16, v1

    .end local v1    # "isTargetInstantApp":Z
    .local v16, "isTargetInstantApp":Z
    iget v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v1, v1, v17

    if-nez v1, :cond_b9

    const/4 v1, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v1, 0x0

    .line 705
    .local v1, "isTargetHiddenFromInstantApp":Z
    :goto_ba
    if-nez v3, :cond_cb

    if-nez v2, :cond_c2

    if-nez v5, :cond_c2

    if-nez v16, :cond_c8

    :cond_c2
    if-eqz v4, :cond_cb

    if-eqz v5, :cond_cb

    if-eqz v1, :cond_cb

    :cond_c8
    const/16 v17, 0x1

    goto :goto_cd

    :cond_cb
    const/16 v17, 0x0

    .line 711
    .local v17, "blockInstantResolution":Z
    :goto_cd
    if-nez v16, :cond_e7

    if-nez v5, :cond_e7

    move/from16 v18, v1

    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .local v18, "isTargetHiddenFromInstantApp":Z
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 713
    move/from16 v19, v2

    .end local v2    # "matchInstantApp":Z
    .local v19, "matchInstantApp":Z
    const/16 v2, 0x3e8

    invoke-virtual {v10, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 712
    invoke-virtual {v10, v1, v6, v11}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_eb

    const/4 v1, 0x1

    goto :goto_ec

    .line 711
    .end local v18    # "isTargetHiddenFromInstantApp":Z
    .end local v19    # "matchInstantApp":Z
    .restart local v1    # "isTargetHiddenFromInstantApp":Z
    .restart local v2    # "matchInstantApp":Z
    :cond_e7
    move/from16 v18, v1

    move/from16 v19, v2

    .line 712
    .end local v1    # "isTargetHiddenFromInstantApp":Z
    .end local v2    # "matchInstantApp":Z
    .restart local v18    # "isTargetHiddenFromInstantApp":Z
    .restart local v19    # "matchInstantApp":Z
    :cond_eb
    const/4 v1, 0x0

    .line 715
    .local v1, "blockNormalResolution":Z
    :goto_ec
    if-nez v17, :cond_109

    if-nez v1, :cond_109

    .line 716
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 717
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 718
    move-object/from16 p1, v0

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .local p1, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "blockNormalResolution":Z
    .local v20, "blockNormalResolution":Z
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 719
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-static {v12, v15}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_112

    .line 715
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "blockNormalResolution":Z
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "blockNormalResolution":Z
    :cond_109
    move-object/from16 p1, v0

    move/from16 v20, v1

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "blockNormalResolution":Z
    .restart local v20    # "blockNormalResolution":Z
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_112

    .line 687
    .end local v3    # "isTargetSameInstantApp":Z
    .end local v4    # "matchVisibleToInstantAppOnly":Z
    .end local v5    # "isCallerInstantApp":Z
    .end local v16    # "isTargetInstantApp":Z
    .end local v17    # "blockInstantResolution":Z
    .end local v18    # "isTargetHiddenFromInstantApp":Z
    .end local v19    # "matchInstantApp":Z
    .end local v20    # "blockNormalResolution":Z
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .local v1, "intent":Landroid/content/Intent;
    :cond_10e
    move-object/from16 p1, v0

    move-object/from16 p4, v1

    .line 723
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :goto_112
    move-object/from16 v1, p4

    move-wide v3, v8

    goto :goto_124

    .line 724
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_116
    move-object/from16 p4, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    move-object/from16 v2, p2

    move-wide v3, v8

    move-object v0, v10

    move v5, v11

    .end local v8    # "flags":J
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    .local v3, "flags":J
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 726
    invoke-static {v12, v15}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 729
    :goto_124
    if-eqz v13, :cond_12b

    .line 731
    iput-object v13, v12, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 732
    invoke-static {v12, v15}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 735
    :cond_12b
    return-object v15
.end method

.method protected queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "instantAppPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JII",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 742
    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 743
    .local v10, "pkgName":Ljava/lang/String;
    if-nez v10, :cond_22

    .line 744
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 746
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1d

    .line 747
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 749
    :cond_1d
    invoke-direct {p0, v0, v9, v6, v8}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 752
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_22
    move/from16 v6, p5

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v10}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 753
    .local v11, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v11, :cond_4c

    .line 754
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 755
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 754
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 757
    move v6, v7

    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_47

    .line 758
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 760
    :cond_47
    invoke-direct {p0, v0, v9, v6, v8}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 763
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .registers 15
    .param p1, "safeMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4977
    .local p2, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4978
    return-void

    .line 4980
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 4981
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4982
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 4983
    .local v6, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move v5, p1

    .end local p1    # "safeMode":Z
    .local v5, "safeMode":Z
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4984
    .end local v5    # "safeMode":Z
    .restart local p1    # "safeMode":Z
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_27
    if-ltz v0, :cond_5a

    .line 4985
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    .line 4986
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4987
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v5, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4989
    .local v8, "component":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x4

    move-object v5, p0

    move v10, v6

    move-object v6, v2

    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v10, "callingUserId":I
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v2

    move-object v5, v6

    move v6, v10

    .end local v10    # "callingUserId":I
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v6, "callingUserId":I
    if-nez v2, :cond_51

    .line 4991
    goto :goto_57

    .line 4993
    :cond_51
    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4994
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4984
    .end local v1    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "component":Landroid/content/ComponentName;
    :goto_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 4996
    .end local v0    # "i":I
    :cond_5a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 4997
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4999
    :cond_63
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 5000
    invoke-interface {p3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5002
    :cond_6c
    return-void
.end method

.method protected resolveComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 4898
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4899
    .local v2, "authorityWithoutUserId":Ljava/lang/String;
    invoke-static {p1, p4}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v5

    .line 4901
    .end local p4    # "userId":I
    .local v5, "userId":I
    iget-object p4, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p4, v5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p4

    const/4 v9, 0x0

    if-nez p4, :cond_12

    return-object v9

    .line 4902
    :cond_12
    invoke-virtual {p0, p2, p3, v5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v3

    .line 4904
    .end local p2    # "flags":J
    .local v3, "flags":J
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    .line 4906
    move-wide p3, v3

    .end local v3    # "flags":J
    .local p2, "providerInfo":Landroid/content/pm/ProviderInfo;
    .local p3, "flags":J
    const/4 v0, 0x0

    .line 4907
    .local v0, "checkedGrants":Z
    if-eqz p2, :cond_37

    .line 4909
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v5, v1, :cond_37

    .line 4910
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4911
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4912
    .local v1, "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    nop

    .line 4913
    const/4 v3, 0x1

    invoke-interface {v1, p5, p2, v5, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v0

    .line 4916
    .end local v1    # "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    :cond_37
    if-nez v0, :cond_6a

    .line 4917
    const/4 v1, 0x1

    .line 4919
    .local v1, "enforceCrossUser":Z
    invoke-static {v2}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 4920
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    .line 4922
    .local v3, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 4923
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_5b

    iget v6, v4, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, v5, :cond_5b

    .line 4925
    const/4 v1, 0x0

    .line 4929
    .end local v3    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5b
    if-eqz v1, :cond_68

    .line 4930
    const/4 v7, 0x0

    const-string/jumbo v8, "resolveContentProvider"

    const/4 v6, 0x0

    move-object v3, p0

    move v4, p5

    .end local p5    # "callingUid":I
    .local v4, "callingUid":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    goto :goto_6b

    .line 4929
    .end local v4    # "callingUid":I
    .restart local p5    # "callingUid":I
    :cond_68
    move v4, p5

    .end local p5    # "callingUid":I
    .restart local v4    # "callingUid":I
    goto :goto_6b

    .line 4916
    .end local v1    # "enforceCrossUser":Z
    .end local v4    # "callingUid":I
    .restart local p5    # "callingUid":I
    :cond_6a
    move v4, p5

    .line 4935
    .end local p5    # "callingUid":I
    .restart local v4    # "callingUid":I
    :goto_6b
    if-nez p2, :cond_6e

    .line 4936
    return-object v9

    .line 4938
    :cond_6e
    iget-object p5, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p5

    .line 4940
    .local p5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {p5, p2, p3, p4, v5}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 4941
    return-object v9

    .line 4943
    :cond_7b
    new-instance v6, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4945
    .local v6, "component":Landroid/content/ComponentName;
    const/4 v7, 0x4

    move-object v3, p0

    move v8, v5

    move v5, v4

    move-object v4, p5

    .end local p5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v5, "callingUid":I
    .local v8, "userId":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result p5

    move-object v1, v4

    move v4, v5

    move v5, v8

    .end local v8    # "userId":I
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "callingUid":I
    .local v5, "userId":I
    if-eqz p5, :cond_93

    .line 4946
    return-object v9

    .line 4948
    :cond_93
    return-object p2
.end method

.method public resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "filterCallingUid"    # I

    .line 4864
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RESOLVE_COMPONENT_FOR_UID"

    const-string/jumbo v2, "resolveContentProviderForUid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 4868
    .local v4, "callingUid":I
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4869
    .local v5, "filterUserId":I
    const/4 v7, 0x0

    const-string/jumbo v8, "resolveContentProviderForUid"

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4873
    move v0, v5

    .end local v5    # "filterUserId":I
    .local v0, "filterUserId":I
    invoke-virtual {p0, p5, v4}, Lcom/android/server/pm/ComputerEngine;->filterAppAccess(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 4874
    return-object v2

    .line 4877
    :cond_24
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 4878
    .local v1, "pInfo":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_2b

    .line 4879
    return-object v2

    .line 4882
    :cond_2b
    move-object v3, p0

    move-wide v5, p2

    move v7, p4

    move v8, v4

    move-object v4, p1

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "flags":J
    .end local p4    # "userId":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "flags":J
    .local v7, "userId":I
    .local v8, "callingUid":I
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 4883
    .end local v5    # "flags":J
    .end local v7    # "userId":I
    .local p1, "pInfo2":Landroid/content/pm/ProviderInfo;
    .restart local p2    # "flags":J
    .restart local p4    # "userId":I
    if-eqz p1, :cond_4b

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 4884
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4885
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 4886
    return-object v1

    .line 4888
    :cond_4b
    return-object v2
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1948
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1949
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1951
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 2021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2022
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 15
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2704
    const/4 v0, 0x1

    .line 2705
    .local v0, "filterApp":Z
    nop

    .line 2706
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 2707
    .local v1, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_c
    if-ltz v2, :cond_26

    if-eqz v0, :cond_26

    .line 2708
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move v6, p2

    move v9, p3

    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v6, "callingUid":I
    .local v9, "userId":I
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p2

    and-int/2addr v0, p2

    .line 2707
    add-int/lit8 v2, v2, -0x1

    move p2, v6

    goto :goto_c

    .end local v6    # "callingUid":I
    .end local v9    # "userId":I
    .restart local p2    # "callingUid":I
    .restart local p3    # "userId":I
    :cond_26
    move v6, p2

    move v9, p3

    .line 2711
    .end local v2    # "index":I
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .restart local v6    # "callingUid":I
    .restart local v9    # "userId":I
    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 11
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2694
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .end local p1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p1

    return p1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .registers 13
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I

    .line 2684
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "callingUid":I
    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "componentType":I
    .end local p5    # "userId":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v3, "component":Landroid/content/ComponentName;
    .local v4, "componentType":I
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p1

    return p1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z
    .registers 15
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z

    .line 2672
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "callingUid":I
    .end local p3    # "component":Landroid/content/ComponentName;
    .end local p4    # "componentType":I
    .end local p5    # "userId":I
    .end local p6    # "filterUninstall":Z
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v3, "component":Landroid/content/ComponentName;
    .local v4, "componentType":I
    .local v5, "userId":I
    .local v6, "filterUninstall":Z
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p1

    return p1
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .registers 17
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z
    .param p7, "filterArchived"    # Z

    .line 2592
    move v5, p5

    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 2593
    invoke-static {p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    .line 2595
    .local v0, "clientAppUid":I
    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {p5, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_19

    .line 2596
    return v1

    .line 2600
    .end local v0    # "clientAppUid":I
    :cond_19
    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2601
    invoke-direct {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    move v2, p2

    goto :goto_26

    .line 2600
    :cond_25
    move v2, p2

    .line 2603
    .end local p2    # "callingUid":I
    .local v2, "callingUid":I
    :goto_26
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    .line 2604
    .local p2, "instantAppPkgName":Ljava/lang/String;
    const/4 v0, 0x1

    if-eqz p2, :cond_2f

    move v3, v0

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    move v6, v3

    .line 2605
    .local v6, "callerIsInstantApp":Z
    if-eqz p1, :cond_3f

    .line 2606
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 2605
    invoke-static {v3}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v3

    if-eqz v3, :cond_3f

    move v3, v0

    goto :goto_40

    :cond_3f
    move v3, v1

    :goto_40
    move v7, v3

    .line 2610
    .local v7, "packageArchivedForUser":Z
    if-eqz p1, :cond_d7

    if-eqz p6, :cond_61

    .line 2612
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 2613
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isHiddenUntilInstalled()Z

    move-result v3

    if-nez v3, :cond_61

    .line 2614
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-nez v3, :cond_61

    if-eqz v7, :cond_5f

    if-eqz p7, :cond_61

    :cond_5f
    goto/16 :goto_d7

    .line 2624
    :cond_61
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2625
    return v1

    .line 2627
    :cond_6c
    if-eqz v6, :cond_a0

    .line 2629
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_79

    .line 2630
    return v0

    .line 2634
    :cond_79
    if-eqz p3, :cond_96

    .line 2635
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2636
    invoke-virtual {v3, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 2637
    .local v3, "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    if-eqz v3, :cond_90

    .line 2638
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2639
    return v1

    .line 2641
    :cond_90
    invoke-virtual {p0, p3, p4}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2644
    .end local v3    # "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    :cond_96
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isVisibleToInstantApps()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2646
    :cond_a0
    invoke-interface {p1, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 2648
    invoke-virtual {p0, v2, p5}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 2649
    return v1

    .line 2652
    :cond_b1
    if-eqz p3, :cond_b4

    .line 2653
    return v0

    .line 2657
    :cond_b4
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2658
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2657
    invoke-virtual {v1, p5, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2660
    :cond_c4
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 2661
    .local v8, "appId":I
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 2662
    .local v3, "callingPs":Lcom/android/server/pm/SettingBase;
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v1, p0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    return v0

    .line 2621
    .end local v3    # "callingPs":Lcom/android/server/pm/SettingBase;
    .end local v8    # "appId":I
    :cond_d7
    :goto_d7
    if-nez v6, :cond_e1

    if-nez p6, :cond_e1

    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v3

    if-eqz v3, :cond_e2

    :cond_e1
    move v1, v0

    :cond_e2
    return v1
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 10
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2741
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2742
    return v1

    .line 2744
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2745
    return v2

    .line 2747
    :cond_10
    nop

    .line 2748
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 2749
    .local v0, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 2750
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2751
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->isHiddenUntilInstalled()Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_36

    .line 2749
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2752
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_36
    :goto_36
    return v2

    .line 2756
    .end local v3    # "index":I
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_37
    return v1
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 11
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2720
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .end local p1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result p1

    return p1
.end method

.method public final shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 12
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2730
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .end local p1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v2, "callingUid":I
    .local v5, "userId":I
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result p1

    return p1
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2879
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2886
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 14
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2893
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2895
    .local v0, "isCallerSystemUser":Z
    :goto_a
    const-wide/32 v2, 0x400000

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    .line 2898
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v2

    xor-int/lit8 v8, v2, 0x1

    .line 2898
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    move-object v3, p0

    move v5, p3

    .end local p3    # "userId":I
    .local v5, "userId":I
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_2d

    .line 2895
    .end local v5    # "userId":I
    .restart local p3    # "userId":I
    :cond_2c
    move v5, p3

    .line 2902
    .end local p3    # "userId":I
    .restart local v5    # "userId":I
    :goto_2d
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .registers 15
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2920
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .end local p1    # "flags":J
    .end local p3    # "userId":I
    .end local p4    # "callingUid":I
    .end local p5    # "wantInstantApps":Z
    .end local p6    # "isImplicitImageCaptureIntentAndNotSetByDpc":Z
    .local v1, "flags":J
    .local v3, "userId":I
    .local v4, "callingUid":I
    .local v5, "wantInstantApps":Z
    .local v7, "isImplicitImageCaptureIntentAndNotSetByDpc":Z
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .registers 13
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "onlyExposedExplicitly"    # Z
    .param p7, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2929
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    .line 2930
    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2932
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    if-eqz v0, :cond_21

    .line 2934
    if-eqz p6, :cond_1b

    .line 2935
    const-wide/32 v3, 0x2000000

    or-long/2addr p1, v3

    .line 2937
    :cond_1b
    const-wide/32 v3, 0x1000000

    or-long/2addr p1, v3

    .line 2938
    or-long/2addr p1, v1

    goto :goto_46

    .line 2940
    :cond_21
    and-long v0, p1, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 2941
    .local v0, "wantMatchInstant":Z
    :goto_2e
    if-nez p5, :cond_3b

    if-eqz v0, :cond_39

    .line 2942
    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    move v1, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    nop

    .line 2943
    .local v1, "allowMatchInstant":Z
    :goto_3c
    const-wide/32 v2, -0x3000001

    and-long/2addr p1, v2

    .line 2945
    if-nez v1, :cond_46

    .line 2946
    const-wide/32 v2, -0x800001

    and-long/2addr p1, v2

    .line 2949
    .end local v0    # "wantMatchInstant":Z
    .end local v1    # "allowMatchInstant":Z
    :cond_46
    :goto_46
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final use()Lcom/android/server/pm/Computer;
    .registers 2

    .line 496
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 497
    return-object p0
.end method
