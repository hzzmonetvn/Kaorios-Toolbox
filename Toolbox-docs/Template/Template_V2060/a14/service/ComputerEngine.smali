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

.field private final mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

.field private final mCompilerStats:Lcom/android/server/pm/CompilerStats;

.field private final mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

.field private final mContext:Landroid/content/Context;

.field private final mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

.field private final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field private final mDexManager:Lcom/android/server/pm/dex/DexManager;

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
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

.field private final mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

.field private final mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

.field private final mLocalResolveComponentName:Landroid/content/ComponentName;

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

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

    .line 370
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 8
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;
    .param p2, "version"    # I

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 437
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 438
    new-instance v0, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 439
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 440
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 441
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 442
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 443
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 444
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 445
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 446
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 447
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 448
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 449
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 450
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 451
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 452
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 454
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 458
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 459
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 460
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 461
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 462
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 463
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 464
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 465
    iget-object v3, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 466
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 467
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 468
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 469
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    .line 470
    iget-object v4, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 471
    new-instance v4, Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    invoke-direct {v4, v0, v3, v2, v1}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 476
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 477
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

    .line 4620
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 4621
    .local v0, "numMatch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_1f

    .line 4622
    aget-object v2, p3, v1

    .line 4623
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_19

    .line 4625
    const/4 v3, 0x1

    aput-boolean v3, p4, v1

    .line 4626
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 4628
    :cond_19
    const/4 v3, 0x0

    aput-boolean v3, p4, v1

    .line 4621
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4631
    .end local v1    # "i":I
    :cond_1f
    if-nez v0, :cond_22

    .line 4632
    return-void

    .line 4634
    :cond_22
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4638
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_52

    .line 4639
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_4f

    .line 4640
    array-length v2, p3

    if-ne v0, v2, :cond_37

    .line 4641
    iput-object p3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_4f

    .line 4643
    :cond_37
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4644
    const/4 v0, 0x0

    .line 4645
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    array-length v3, p3

    if-ge v2, v3, :cond_4f

    .line 4646
    aget-boolean v3, p4, v2

    if-eqz v3, :cond_4c

    .line 4647
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, p3, v2

    aput-object v4, v3, v0

    .line 4648
    add-int/lit8 v0, v0, 0x1

    .line 4645
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 4653
    .end local v2    # "i":I
    :cond_4f
    :goto_4f
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4655
    :cond_52
    return-void
.end method

.method private applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;
    .registers 16
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

    .line 1283
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_be

    .line 1284
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1285
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_32

    .line 1286
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1287
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 1288
    .local v2, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1289
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1290
    .local v3, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object v5, p0

    move v6, p4

    move-object v7, v2

    move-object v8, v3

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1292
    goto/16 :goto_ba

    .line 1295
    .end local v2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v3    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_32
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 1297
    .local v2, "isEphemeralApp":Z
    if-eqz v2, :cond_ab

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1298
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_ba

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 1299
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_71

    .line 1302
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_6d

    .line 1303
    const-string v3, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_6d
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1307
    goto :goto_ba

    .line 1311
    :cond_71
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_7a

    .line 1312
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_7a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1316
    .local v3, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v5, 0x0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1322
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1324
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1325
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1326
    .end local v3    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_ba

    .line 1330
    :cond_ab
    if-nez v2, :cond_b7

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b7

    .line 1333
    goto :goto_ba

    .line 1335
    :cond_b7
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1283
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isEphemeralApp":Z
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 1337
    .end local v0    # "i":I
    :cond_be
    return-object p1
.end method

.method private areWebInstantAppsDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2021
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private bestDomainVerificationStatus(II)I
    .registers 4
    .param p1, "status1"    # I
    .param p2, "status2"    # I

    .line 2611
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2612
    return p2

    .line 2614
    :cond_4
    if-ne p2, v0, :cond_7

    .line 2615
    return p1

    .line 2617
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

    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2818
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 2819
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2823
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2824
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    if-nez p3, :cond_37

    .line 2827
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2828
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    if-eqz p4, :cond_37

    .line 2830
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    :cond_37
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2835
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2836
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
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

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2890
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 2891
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2892
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2896
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2898
    if-nez p3, :cond_2d

    .line 2899
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    :cond_2d
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2903
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2904
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 7
    .param p1, "p1SigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "p2SigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 4271
    if-nez p1, :cond_8

    .line 4272
    if-nez p2, :cond_6

    .line 4273
    const/4 v0, 0x1

    goto :goto_7

    .line 4274
    :cond_6
    const/4 v0, -0x1

    .line 4272
    :goto_7
    return v0

    .line 4276
    :cond_8
    if-nez p2, :cond_c

    .line 4277
    const/4 v0, -0x2

    return v0

    .line 4279
    :cond_c
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    .line 4280
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 4279
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    .line 4281
    .local v0, "result":I
    if-nez v0, :cond_1b

    .line 4282
    return v0

    .line 4287
    :cond_1b
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4288
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 4289
    :cond_27
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    .line 4290
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v1

    aget-object v1, v1, v2

    filled-new-array {v1}, [Landroid/content/pm/Signature;

    move-result-object v1

    goto :goto_3d

    .line 4291
    :cond_39
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    :goto_3d
    nop

    .line 4292
    .local v1, "p1Signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 4293
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v3

    aget-object v2, v3, v2

    filled-new-array {v2}, [Landroid/content/pm/Signature;

    move-result-object v2

    goto :goto_53

    .line 4294
    :cond_4f
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    :goto_53
    nop

    .line 4295
    .local v2, "p2Signatures":[Landroid/content/pm/Signature;
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v0

    .line 4297
    .end local v1    # "p1Signatures":[Landroid/content/pm/Signature;
    .end local v2    # "p2Signatures":[Landroid/content/pm/Signature;
    :cond_58
    return v0
.end method

.method private dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3206
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3207
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3208
    .local v1, "activePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3209
    .local v2, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3210
    .local v3, "factoryActivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3211
    .local v4, "factoryInactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/pm/ComputerEngine;->generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3213
    const-string v5, "Active APEX packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3214
    const/4 v5, 0x1

    invoke-static {v1, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3215
    const-string v6, "Inactive APEX packages:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3216
    const/4 v6, 0x0

    invoke-static {v2, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3217
    const-string v7, "Factory APEX packages:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    invoke-static {v3, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3219
    invoke-static {v4, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3220
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

    .line 3232
    .local p0, "packageStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3233
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3234
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_b
    if-ge v0, v1, :cond_b5

    .line 3235
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3236
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 3237
    .local v3, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;
    if-eqz p2, :cond_25

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 3238
    goto/16 :goto_b1

    .line 3240
    :cond_25
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3241
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3244
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

    .line 3245
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

    .line 3246
    const-string v4, "ApplicationInfo: "

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3249
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3250
    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3251
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3252
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3234
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 3254
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_b5
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3255
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3256
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

    .line 1347
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_3

    .line 1348
    return-object p1

    .line 1351
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 1352
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1353
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    .line 1354
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1351
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1357
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

    .line 2121
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2123
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2124
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2125
    return v2

    .line 2128
    :cond_19
    nop

    .line 2129
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2130
    return v2

    .line 2121
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2135
    :cond_27
    if-eqz p1, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_a6

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v1

    if-nez v1, :cond_3c

    move/from16 v5, p3

    goto :goto_a8

    .line 2139
    :cond_3c
    nop

    .line 2140
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v3

    int-to-long v5, v3

    .line 2139
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2141
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_55

    .line 2142
    return v2

    .line 2145
    :cond_55
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2146
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2147
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_67

    .line 2148
    return v7

    .line 2151
    :cond_67
    array-length v8, v6

    move v9, v2

    :goto_69
    if-ge v9, v8, :cond_a5

    aget-object v10, v6, v9

    .line 2152
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 2153
    return v2

    .line 2155
    :cond_78
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2156
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a2

    .line 2157
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2158
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2157
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2159
    .local v12, "index":I
    if-gez v12, :cond_8f

    .line 2160
    goto :goto_a2

    .line 2162
    :cond_8f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2163
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a2

    .line 2164
    return v2

    .line 2151
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 2168
    :cond_a5
    return v7

    .line 2135
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a6
    move/from16 v5, p3

    .line 2136
    :goto_a8
    return v2
.end method

.method private filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2065
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2067
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2068
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2069
    return v2

    .line 2072
    :cond_19
    nop

    .line 2073
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2074
    return v2

    .line 2065
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2079
    :cond_27
    if-eqz p1, :cond_a5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_a5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v1

    if-nez v1, :cond_3c

    move/from16 v5, p3

    goto :goto_a7

    .line 2083
    :cond_3c
    nop

    .line 2084
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 2085
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryVersion()J

    move-result-wide v5

    .line 2083
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2086
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_54

    .line 2087
    return v2

    .line 2090
    :cond_54
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2091
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2092
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_66

    .line 2093
    return v7

    .line 2096
    :cond_66
    array-length v8, v6

    move v9, v2

    :goto_68
    if-ge v9, v8, :cond_a4

    aget-object v10, v6, v9

    .line 2097
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 2098
    return v2

    .line 2100
    :cond_77
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2101
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a1

    .line 2102
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2103
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2102
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2104
    .local v12, "index":I
    if-gez v12, :cond_8e

    .line 2105
    goto :goto_a1

    .line 2107
    :cond_8e
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2108
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a1

    .line 2109
    return v2

    .line 2096
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a1
    :goto_a1
    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    .line 2113
    :cond_a4
    return v7

    .line 2079
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a5
    move/from16 v5, p3

    .line 2080
    :goto_a7
    return v2
.end method

.method private findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 834
    move-object v0, p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 835
    .local v1, "failureActivityIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 837
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, p0

    move-object v4, v1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v2

    .line 841
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 842
    .local v3, "numResults":I
    if-lez v3, :cond_3f

    .line 843
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v3, :cond_3f

    .line 844
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 845
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v6, :cond_35

    .line 846
    nop

    .line 843
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 848
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_35
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, p1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 851
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3f
    const/4 v4, 0x0

    return-object v4
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

    .line 3188
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

    .line 3189
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3190
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3191
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_29

    .line 3192
    goto :goto_a

    .line 3194
    :cond_29
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3195
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_36

    .line 3196
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 3198
    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 3199
    .local v4, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3200
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3202
    .end local v1    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_42
    goto :goto_a

    .line 3203
    :cond_43
    return-void
.end method

.method private getBaseSdkSandboxUid()I
    .registers 2

    .line 5813
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

    .line 5085
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5088
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5089
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object v1

    .line 5092
    :cond_f
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1d

    .line 5096
    :cond_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    return-object v1

    .line 5093
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIsolatedOwner(I)I
    .registers 6
    .param p1, "isolatedUid"    # I

    .line 1860
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result v0

    .line 1861
    .local v0, "ownerUid":I
    if-eq v0, v1, :cond_a

    .line 1865
    return v0

    .line 1862
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No owner UID found for isolated UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPackagesForUidInternal(II)[Ljava/lang/String;
    .registers 7
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 1967
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1968
    .local v0, "isCallerInstantApp":Z
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1969
    .local v1, "userId":I
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1970
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 1972
    :cond_17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1973
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

    .line 4248
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4249
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 4250
    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 4251
    return-object v2

    .line 4253
    :cond_e
    instance-of v3, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_21

    .line 4254
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4255
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4256
    return-object v2

    .line 4258
    :cond_1c
    iget-object v2, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 4259
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_21
    instance-of v3, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_34

    .line 4260
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4261
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4262
    return-object v2

    .line 4264
    :cond_2f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    return-object v2

    .line 4266
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_34
    return-object v2
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 2181
    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    .line 2182
    return v0

    .line 2184
    :cond_6
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2185
    return v0

    .line 2189
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2190
    return v0

    .line 2193
    :cond_18
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_21

    .line 2194
    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 2196
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2197
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    nop

    .line 2196
    :goto_33
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

    .line 2205
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

    .line 2209
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

.method private isCallerFromManagedUserOrProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 2232
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2233
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

    .line 3475
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3476
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3477
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 3475
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

    .line 2337
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2338
    return v1

    .line 2340
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2341
    return v1

    .line 2343
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2344
    return v1

    .line 2346
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    .line 2347
    return v1

    .line 2349
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_27

    .line 2350
    return v1

    .line 2352
    :cond_27
    if-nez p4, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2353
    return v1

    .line 2355
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2358
    if-eqz p2, :cond_3e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    .line 2359
    :cond_3e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_63

    .line 2360
    :cond_46
    return v1

    .line 2363
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

    .line 2365
    :cond_5c
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2366
    return v1

    .line 2371
    :cond_63
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v0

    return v0

    .line 2364
    :cond_68
    :goto_68
    return v1
.end method

.method private isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2419
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2420
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 2422
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_21

    .line 2423
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    move v5, v7

    goto :goto_17

    :cond_16
    move v5, v8

    :goto_17
    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    goto :goto_26

    .line 2426
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    nop

    .line 2427
    .local v1, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2428
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-boolean v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz v4, :cond_3c

    .line 2429
    return v7

    .line 2431
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_3c
    goto :goto_2b

    .line 2432
    :cond_3d
    return v8
.end method

.method private isRecentsAccessingChildProfiles(II)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "targetUserId"    # I

    .line 2436
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2437
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2438
    return v1

    .line 2440
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2442
    .local v2, "token":J
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2443
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2f

    if-eq v4, v0, :cond_25

    .line 2444
    nop

    .line 2448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    return v1

    .line 2446
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2f

    .line 2448
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2446
    return v1

    .line 2448
    .end local v0    # "callingUserId":I
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2449
    throw v0
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 5
    .param p0, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p1, "p2"    # Landroid/content/pm/ProviderInfo;

    .line 371
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 372
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 373
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
    .registers 34
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

    .line 1364
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p6

    const-wide/32 v0, 0x800000

    and-long v2, p4, v0

    const-wide/16 v13, 0x0

    cmp-long v2, v2, v13

    const/4 v12, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_15

    move v2, v11

    goto :goto_16

    :cond_15
    move v2, v12

    :goto_16
    move/from16 v21, v2

    .line 1365
    .local v21, "alreadyResolvedLocally":Z
    const/4 v9, 0x0

    .line 1366
    .local v9, "localInstantApp":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 1367
    .local v10, "blockResolution":Z
    const-string v6, "PackageManager"

    if-nez v21, :cond_b5

    .line 1368
    iget-object v2, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const-wide/16 v3, 0x40

    or-long v3, p4, v3

    or-long/2addr v0, v3

    const-wide/32 v3, 0x1000000

    or-long v4, v0, v3

    move-object v0, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v14, v6

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 1376
    .local v6, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_3e
    if-ltz v13, :cond_b6

    .line 1377
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1378
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1379
    .local v3, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1380
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1381
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v1, v4

    move-object/from16 v2, p2

    move-object v11, v3

    move-object/from16 v19, v4

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "packageName":Ljava/lang/String;
    .local v19, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v3, p4

    move-object/from16 v20, v5

    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    .local v20, "info":Landroid/content/pm/ResolveInfo;
    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1383
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_89

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_89
    move-object/from16 v9, v20

    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1389
    :cond_8e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_a8

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instant app not approved for intent; pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_a8
    const/4 v10, 0x1

    .line 1395
    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1380
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v19    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v20    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_ac
    move-object v11, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 1376
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v13, v13, -0x1

    const/4 v11, 0x1

    goto :goto_3e

    .line 1367
    .end local v6    # "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "i":I
    :cond_b5
    move-object v14, v6

    .line 1400
    :cond_b6
    move-object v0, v9

    move v1, v10

    .end local v9    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .end local v10    # "blockResolution":Z
    .local v0, "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v1, "blockResolution":Z
    :goto_b8
    const/4 v2, 0x0

    .line 1401
    .local v2, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    if-nez v1, :cond_118

    .line 1402
    if-nez v0, :cond_104

    .line 1404
    const-string/jumbo v3, "resolveEphemeral"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1405
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1406
    .local v3, "token":Ljava/lang/String;
    nop

    .line 1407
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v6

    .line 1408
    .local v6, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    new-instance v22, Landroid/content/pm/InstantAppRequest;

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1413
    invoke-virtual {v6}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v23

    move-object/from16 v9, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v24, v14

    move-object/from16 v14, v19

    move/from16 v15, p8

    move/from16 v16, p6

    move-object/from16 v17, v20

    move/from16 v18, p7

    move-object/from16 v19, v23

    move-object/from16 v20, v3

    invoke-direct/range {v9 .. v20}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1414
    .local v9, "requestObject":Landroid/content/pm/InstantAppRequest;
    iget-object v10, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v11, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v7, v10, v11, v9}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v2

    .line 1416
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1417
    .end local v3    # "token":Ljava/lang/String;
    .end local v6    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .end local v9    # "requestObject":Landroid/content/pm/InstantAppRequest;
    goto :goto_11a

    .line 1423
    :cond_104
    move-object/from16 v24, v14

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1424
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    const/4 v10, 0x0

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v12, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v2, v4

    goto :goto_11a

    .line 1401
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_118
    move-object/from16 v24, v14

    .line 1429
    :goto_11a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_123

    if-nez v2, :cond_123

    .line 1430
    return-object v8

    .line 1432
    :cond_123
    iget-object v3, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1433
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1434
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_1a9

    move/from16 v4, p6

    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 1435
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1434
    const-wide/16 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v5

    if-nez v5, :cond_144

    goto :goto_1ab

    .line 1438
    :cond_144
    new-instance v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1439
    .local v5, "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    nop

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1441
    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 1439
    invoke-static {v6, v9, v10, v11, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1442
    const v6, 0x588000

    iput v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1445
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1446
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_175

    .line 1447
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    :cond_175
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_193

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_193

    .line 1450
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1451
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1450
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1453
    :cond_193
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1455
    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1456
    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1457
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_1a5

    .line 1458
    const-string v6, "Adding ephemeral installer to the ResolveInfo list"

    move-object/from16 v9, v24

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_1a5
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1462
    return-object v8

    .line 1434
    .end local v5    # "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    :cond_1a9
    move/from16 v4, p6

    .line 1436
    :goto_1ab
    return-object v8
.end method

.method private resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "callingUid"    # I

    .line 1878
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "normalizedPackageName":Ljava/lang/String;
    if-eqz v1, :cond_e

    move-object v3, v1

    goto :goto_f

    :cond_e
    move-object v3, v2

    :goto_f
    move-object v2, v3

    .line 1882
    .end local p1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1883
    invoke-interface {v3, v2}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v3

    .line 1884
    .local v3, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_c1

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_22

    move/from16 v8, p4

    goto/16 :goto_c3

    .line 1889
    :cond_22
    const/4 v4, 0x0

    .line 1890
    .local v4, "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 1891
    .local v5, "callingAppId":I
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v6

    if-nez v6, :cond_67

    .line 1892
    new-instance v6, Landroid/util/LongSparseLongArray;

    invoke-direct {v6}, Landroid/util/LongSparseLongArray;-><init>()V

    move-object v4, v6

    .line 1893
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1894
    .local v7, "libName":Ljava/lang/String;
    move/from16 v8, p4

    invoke-direct {v0, v8, v8}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v9

    .line 1895
    .local v9, "uidPackages":[Ljava/lang/String;
    if-eqz v9, :cond_69

    .line 1896
    array-length v10, v9

    :goto_47
    if-ge v6, v10, :cond_69

    aget-object v11, v9, v6

    .line 1897
    .local v11, "uidPackage":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1898
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 1899
    .local v13, "libIdx":I
    if-ltz v13, :cond_64

    .line 1900
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v14

    aget-wide v14, v14, v13

    .line 1901
    .local v14, "libVersion":J
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 1896
    .end local v11    # "uidPackage":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "libIdx":I
    .end local v14    # "libVersion":J
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 1891
    .end local v7    # "libName":Ljava/lang/String;
    .end local v9    # "uidPackages":[Ljava/lang/String;
    :cond_67
    move/from16 v8, p4

    .line 1908
    :cond_69
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_72

    .line 1909
    return-object v2

    .line 1913
    :cond_72
    const/4 v6, 0x0

    .line 1914
    .local v6, "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    .line 1915
    .local v7, "versionCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_78
    if-ge v9, v7, :cond_b9

    .line 1916
    invoke-virtual {v3, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/SharedLibraryInfo;

    .line 1917
    .local v10, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v4, :cond_8d

    .line 1918
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    .line 1917
    invoke-virtual {v4, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-gez v11, :cond_8d

    .line 1919
    goto :goto_b6

    .line 1921
    :cond_8d
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    .line 1922
    .local v11, "libVersionCode":J
    const-wide/16 v13, -0x1

    cmp-long v13, p2, v13

    if-eqz v13, :cond_a4

    .line 1923
    cmp-long v13, v11, p2

    if-nez v13, :cond_b6

    .line 1924
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 1926
    :cond_a4
    if-nez v6, :cond_a8

    .line 1927
    move-object v6, v10

    goto :goto_b6

    .line 1928
    :cond_a8
    nop

    .line 1929
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_b6

    .line 1930
    move-object v6, v10

    .line 1915
    .end local v10    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v11    # "libVersionCode":J
    :cond_b6
    :goto_b6
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 1934
    .end local v9    # "i":I
    :cond_b9
    if-eqz v6, :cond_c0

    .line 1935
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1938
    :cond_c0
    return-object v2

    .line 1884
    .end local v4    # "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    .end local v5    # "callingAppId":I
    .end local v6    # "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "versionCount":I
    :cond_c1
    move/from16 v8, p4

    .line 1885
    :goto_c3
    return-object v2
.end method

.method private safeMode()Z
    .registers 2

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v0

    return v0
.end method

.method private updateFlags(JI)J
    .registers 10
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2658
    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_1e

    .line 2664
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2666
    .local v2, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2667
    or-long/2addr p1, v0

    goto :goto_1e

    .line 2669
    :cond_1a
    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    .line 2674
    .end local v2    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    :goto_1e
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2675
    const-wide/32 v0, 0x402000

    or-long/2addr p1, v0

    .line 2678
    :cond_30
    return-wide p1
.end method


# virtual methods
.method public activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 28
    .param p1, "resolveComponentName"    # Landroid/content/ComponentName;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .line 3766
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3767
    .local v9, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "activitySupportsIntentAsUser"

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3769
    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1e

    .line 3771
    return v11

    .line 3773
    :cond_1e
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v12

    .line 3774
    .local v12, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    const/4 v13, 0x0

    if-nez v12, :cond_28

    .line 3775
    return v13

    .line 3777
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 3778
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_33

    .line 3779
    return v13

    .line 3781
    :cond_33
    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v9

    move-object/from16 v3, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3783
    return v13

    .line 3785
    :cond_44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 3786
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 3787
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 3788
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v20

    const-string v21, "PackageManager"

    .line 3787
    move-object/from16 v17, p4

    invoke-virtual/range {v15 .. v21}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_78

    .line 3789
    return v11

    .line 3785
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 3792
    .end local v0    # "i":I
    :cond_7b
    return v13
.end method

.method protected androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 433
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;
    .registers 30
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

    .line 1196
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p6

    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_17

    invoke-direct {v6, v9}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v11

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    move v12, v0

    .line 1197
    .local v12, "blockInstant":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_1f
    if-ltz v13, :cond_15a

    .line 1198
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1200
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v14, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v0, :cond_37

    if-eqz v12, :cond_37

    .line 1201
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1202
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1205
    :cond_37
    if-eqz p3, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v0, :cond_e4

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 1208
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_6d

    .line 1211
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_64

    .line 1212
    const-string v0, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_64
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1215
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1217
    :cond_6d
    if-eqz v12, :cond_84

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {v6, v0, v9, v2}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1219
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1220
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1224
    :cond_84
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_8d

    .line 1225
    const-string v0, "Adding installer to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_8d
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1229
    .local v0, "installerInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v15, p4

    invoke-direct {v6, v1, v15, v9}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v1

    .line 1231
    .local v1, "installFailureActivity":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v4, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v10, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move-wide/from16 v19, v4

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v21}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1237
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1242
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1243
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1244
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1245
    iput-boolean v11, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1246
    invoke-interface {v7, v13, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1208
    .end local v0    # "installerInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "installFailureActivity":Landroid/content/ComponentName;
    :cond_e1
    move/from16 v15, p4

    goto :goto_e6

    .line 1205
    :cond_e4
    move/from16 v15, p4

    .line 1249
    :goto_e6
    if-nez v8, :cond_115

    .line 1251
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1252
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v10

    .line 1253
    .local v10, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1254
    const/4 v5, 0x0

    invoke-virtual {v6, v0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1255
    .local v16, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez p5, :cond_112

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1256
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v10

    move-object/from16 v4, v16

    move/from16 v17, v5

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_111

    .line 1258
    goto :goto_156

    .line 1260
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_111
    goto :goto_153

    .line 1255
    .restart local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_112
    move/from16 v17, v5

    goto :goto_156

    .line 1260
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_115
    const/16 v17, 0x0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1262
    goto :goto_156

    .line 1263
    :cond_122
    if-eqz p5, :cond_13f

    .line 1264
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_132

    .line 1265
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13f

    .line 1266
    :cond_132
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1267
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1269
    goto :goto_156

    .line 1270
    :cond_13f
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_153

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1272
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_153

    .line 1274
    goto :goto_156

    .line 1276
    :cond_153
    :goto_153
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1197
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    :goto_156
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1f

    :cond_15a
    move/from16 v15, p4

    .line 1278
    .end local v13    # "i":I
    return-object v7
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 5465
    nop

    .line 5466
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5467
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_1a

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I

    .line 5545
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5547
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1e

    .line 5549
    return v8

    .line 5551
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_68

    .line 5553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5554
    .local v10, "callingUid":I
    move/from16 v11, p3

    invoke-virtual {v7, v11}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 5555
    .local v12, "parent":Landroid/content/pm/UserInfo;
    if-nez v12, :cond_32

    .line 5556
    return v9

    .line 5558
    :cond_32
    const-wide/16 v13, 0x0

    iget v6, v12, Landroid/content/pm/UserInfo;->id:I

    const/4 v15, 0x0

    iget v2, v12, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v4, 0x0

    .line 5560
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v16

    .line 5558
    move-wide v1, v13

    move v3, v6

    move v4, v10

    move v5, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v0

    .line 5562
    .local v0, "flags":J
    const-wide/32 v2, 0x10000

    or-long v13, v0, v2

    .line 5563
    .end local v0    # "flags":J
    .local v13, "flags":J
    iget v6, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v13

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    .line 5565
    .local v0, "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v0, :cond_66

    goto :goto_67

    :cond_66
    move v8, v9

    :goto_67
    return v8

    .line 5567
    .end local v0    # "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v10    # "callingUid":I
    .end local v12    # "parent":Landroid/content/pm/UserInfo;
    .end local v13    # "flags":J
    :cond_68
    move/from16 v11, p3

    return v9
.end method

.method public canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .registers 14
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5504
    array-length v0, p2

    .line 5505
    .local v0, "targetSize":I
    new-array v1, v0, [Z

    .line 5506
    .local v1, "results":[Z
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5507
    return-object v1

    .line 5509
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5510
    .local v2, "callingUid":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "can package query"

    move-object v3, p0

    move v4, v2

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5513
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5514
    .local v3, "sourceSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-array v4, v0, [Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5516
    .local v4, "targetSettings":[Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2d

    .line 5517
    invoke-virtual {p0, v3, v2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v7, v5

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v7, v6

    .line 5519
    .local v7, "throwException":Z
    :goto_2e
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2f
    if-nez v7, :cond_4f

    if-ge v8, v0, :cond_4f

    .line 5520
    aget-object v9, p2, v8

    invoke-virtual {p0, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    aput-object v9, v4, v8

    .line 5522
    aget-object v9, v4, v8

    if-eqz v9, :cond_4a

    aget-object v9, v4, v8

    .line 5523
    invoke-virtual {p0, v9, v2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_48

    goto :goto_4a

    :cond_48
    move v9, v5

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v9, v6

    :goto_4b
    move v7, v9

    .line 5519
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 5526
    .end local v8    # "i":I
    :cond_4f
    if-nez v7, :cond_69

    .line 5532
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {p3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 5533
    .local v5, "sourcePackageUid":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5a
    if-ge v8, v0, :cond_68

    .line 5534
    aget-object v9, v4, v8

    invoke-virtual {p0, v9, v5, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    xor-int/2addr v9, v6

    aput-boolean v9, v1, v8

    .line 5533
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 5536
    .end local v8    # "i":I
    :cond_68
    return-object v1

    .line 5527
    .end local v5    # "sourcePackageUid":I
    :cond_69
    new-instance v5, Landroid/os/ParcelableException;

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

    .line 5528
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

    invoke-direct {v5, v6}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public canQueryPackage(ILjava/lang/String;)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "targetPackageName"    # Ljava/lang/String;

    .line 5409
    const/4 v0, 0x1

    if-eqz p1, :cond_82

    if-nez p2, :cond_7

    goto/16 :goto_82

    .line 5412
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5413
    .local v1, "setting":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 5414
    return v2

    .line 5417
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5418
    .local v3, "userId":I
    nop

    .line 5419
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5418
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 5421
    .local v4, "targetAppId":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_43

    .line 5422
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 5423
    .local v2, "targetSetting":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_3a

    .line 5424
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5427
    :cond_3a
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5434
    .end local v2    # "targetSetting":Ljava/lang/Object;
    :cond_43
    instance-of v5, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5b

    .line 5435
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 5436
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v5, :cond_59

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v6, v5, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    return v0

    .line 5438
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_5b
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 5440
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5441
    .local v5, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_67
    if-ltz v6, :cond_81

    .line 5442
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 5443
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_7e

    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v8, v7, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 5444
    return v0

    .line 5441
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_7e
    add-int/lit8 v6, v6, -0x1

    goto :goto_67

    .line 5447
    .end local v6    # "i":I
    :cond_81
    return v2

    .line 5410
    .end local v1    # "setting":Ljava/lang/Object;
    .end local v3    # "userId":I
    .end local v4    # "targetAppId":I
    .end local v5    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_82
    :goto_82
    return v0
.end method

.method public canRequestPackageInstalls(Ljava/lang/String;IIZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "throwIfPermNotDeclared"    # Z

    .line 3907
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v0

    .line 3908
    .local v0, "uid":I
    if-eq p2, v0, :cond_36

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 3909
    :cond_13
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not own package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3912
    :cond_36
    :goto_36
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 3913
    return v2

    .line 3915
    :cond_40
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3916
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v1, :cond_4b

    .line 3917
    return v2

    .line 3919
    :cond_4b
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_54

    .line 3920
    return v2

    .line 3922
    :cond_54
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v3

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 3924
    const-string v3, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    .line 3927
    .local v3, "message":Ljava/lang/String;
    const-string v4, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_6c

    .line 3930
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    return v2

    .line 3928
    :cond_6c
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3935
    .end local v3    # "message":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public final canViewInstantApps(II)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 2039
    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 2040
    return v1

    .line 2042
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 2044
    return v1

    .line 2046
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3a

    .line 2048
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2049
    .local v0, "homeComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2d

    .line 2050
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2051
    return v1

    .line 2054
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 2055
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    .line 2054
    :goto_39
    return v1

    .line 2057
    .end local v0    # "homeComponent":Landroid/content/ComponentName;
    :cond_3a
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "names"    # [Ljava/lang/String;

    .line 3693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3694
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3695
    return-object p1

    .line 3697
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3698
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3699
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3700
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_5b

    .line 3701
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3702
    .local v6, "cur":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3703
    .local v7, "translateName":Z
    if-eqz v6, :cond_50

    .line 3704
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 3705
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v9, 0x0

    if-eqz v8, :cond_39

    .line 3706
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_39

    move v10, v5

    goto :goto_3a

    :cond_39
    move v10, v9

    .line 3707
    .local v10, "targetIsInstantApp":Z
    :goto_3a
    if-eqz v10, :cond_4e

    if-nez v3, :cond_4e

    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3710
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    .line 3709
    invoke-virtual {v11, v2, v12, v13}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v11

    if-eqz v11, :cond_4f

    :cond_4e
    move v9, v5

    :cond_4f
    move v7, v9

    .line 3712
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

    .line 3700
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3714
    .end local v4    # "i":I
    :cond_5b
    return-object v1
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5854
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5855
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

    .line 5857
    :cond_2b
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4193
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4194
    .local v6, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "checkSignatures"

    move-object v0, p0

    move v1, v6

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4197
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4198
    .local v0, "p1":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4200
    .local v1, "p2":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v2, 0x0

    if-nez v0, :cond_23

    move-object v3, v2

    goto :goto_2b

    :cond_23
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4202
    .local v3, "ps1":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_2b
    if-nez v1, :cond_2e

    goto :goto_36

    :cond_2e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4203
    .local v2, "ps2":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_36
    const/4 v4, -0x4

    if-eqz v0, :cond_5b

    if-eqz v3, :cond_5b

    if-eqz v1, :cond_5b

    if-nez v2, :cond_40

    goto :goto_5b

    .line 4206
    :cond_40
    invoke-virtual {p0, v3, v6, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 4207
    invoke-virtual {p0, v2, v6, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_5a

    .line 4210
    :cond_4d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4208
    :cond_5a
    :goto_5a
    return v4

    .line 4204
    :cond_5b
    :goto_5b
    return v4
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2623
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    .line 2624
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2623
    invoke-interface {v0, v1, p1}, Lmiui/enterprise/IApplicationHelper;->isGrantSystemPermission([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2625
    const/4 v0, 0x0

    return v0

    .line 2628
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {v0, p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkUidSignatures(II)I
    .registers 8
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4216
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4217
    .local v1, "callingUserId":I
    nop

    .line 4218
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4219
    .local v2, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4220
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 4221
    .local v3, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v2, :cond_1c

    if-nez v3, :cond_17

    goto :goto_1c

    .line 4224
    :cond_17
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4222
    :cond_1c
    :goto_1c
    const/4 v4, -0x4

    return v4
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .registers 12
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4230
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4231
    .local v7, "userId1":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4232
    .local v8, "userId2":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "checkUidSignaturesForAllUsers"

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4234
    const-string v5, "checkUidSignaturesForAllUsers"

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4236
    nop

    .line 4237
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 4238
    .local v0, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4239
    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 4240
    .local v1, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v0, :cond_30

    if-nez v1, :cond_2b

    goto :goto_30

    .line 4243
    :cond_2b
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v2

    return v2

    .line 4241
    :cond_30
    :goto_30
    const/4 v2, -0x4

    return v2
.end method

.method public final createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;
    .registers 13
    .param p1, "filter"    # Lcom/android/server/pm/WatchedIntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I

    .line 1760
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1761
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1764
    .local v1, "ident":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_56

    .line 1766
    .local v3, "targetIsProfile":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1767
    nop

    .line 1769
    if-eqz v3, :cond_1c

    .line 1770
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .local v4, "className":Ljava/lang/String;
    goto :goto_1e

    .line 1772
    .end local v4    # "className":Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1774
    .restart local v4    # "className":Ljava/lang/String;
    :goto_1e
    new-instance v5, Landroid/content/ComponentName;

    .line 1775
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    .local v5, "forwardingActivityComponentName":Landroid/content/ComponentName;
    nop

    .line 1777
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1779
    .local v6, "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x1

    if-nez v3, :cond_37

    .line 1780
    iput p3, v6, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1781
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1783
    :cond_37
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1784
    const/4 v8, 0x0

    iput v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1785
    iput v8, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1786
    iput v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1787
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1788
    new-instance v7, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1789
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1790
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1791
    return-object v0

    .line 1766
    .end local v3    # "targetIsProfile":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "forwardingActivityComponentName":Landroid/content/ComponentName;
    .end local v6    # "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1767
    throw v3
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "names"    # [Ljava/lang/String;

    .line 3668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3669
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3670
    return-object p1

    .line 3672
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3673
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3674
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3675
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_59

    .line 3676
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3677
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v7, 0x0

    .line 3678
    .local v7, "translateName":Z
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 3679
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 3680
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v8

    .line 3681
    .local v8, "targetIsInstantApp":Z
    if-eqz v8, :cond_49

    if-nez v3, :cond_49

    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3684
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 3683
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

    .line 3686
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

    .line 3675
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3688
    .end local v4    # "i":I
    :cond_59
    return-object v1
.end method

.method public dump(ILjava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .registers 21
    .param p1, "type"    # I
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 2973
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const-string v2, "Failed writing: "

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v10

    .line 2974
    .local v10, "packageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2975
    .local v11, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v12

    .line 2978
    .local v12, "checkin":Z
    if-eqz v10, :cond_21

    if-nez v11, :cond_21

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 2979
    return-void

    .line 2982
    :cond_21
    const-string v0, "]"

    const-string v3, "["

    const/4 v4, 0x0

    const-string v5, "  "

    sparse-switch p1, :sswitch_data_2d0

    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3028
    :sswitch_2f
    if-nez v11, :cond_32

    goto :goto_3b

    :cond_32
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    .line 3029
    .local v4, "filteringAppId":Ljava/lang/Integer;
    :goto_3b
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3030
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    .line 3029
    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 3032
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3175
    .end local v4    # "filteringAppId":Ljava/lang/Integer;
    :sswitch_53
    if-eqz v10, :cond_60

    invoke-virtual {v1, v10}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_60

    :cond_5c
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3176
    :cond_60
    :goto_60
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;)V

    .line 3177
    invoke-direct {v1, v8, v10}, Lcom/android/server/pm/ComputerEngine;->dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3111
    :sswitch_6c
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3112
    .local v2, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 3113
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3115
    :cond_7a
    const-string v4, "Compiler stats:"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3116
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3118
    if-eqz v11, :cond_89

    .line 3119
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_93

    .line 3121
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_89
    iget-object v4, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 3124
    .restart local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_93
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_97
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_de

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3125
    .local v6, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 3126
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v7, :cond_aa

    .line 3127
    goto :goto_97

    .line 3129
    :cond_aa
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3130
    .local v13, "pkgName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3133
    iget-object v14, v1, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 3134
    invoke-virtual {v14, v13}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v14

    .line 3135
    .local v14, "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-nez v14, :cond_d7

    .line 3136
    const-string v15, "(No recorded stats)"

    invoke-virtual {v2, v15}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_da

    .line 3138
    :cond_d7
    invoke-virtual {v14, v2}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3140
    :goto_da
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3141
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "pkgName":Ljava/lang/String;
    .end local v14    # "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    goto :goto_97

    .line 3142
    :cond_de
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3057
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :sswitch_e2
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3058
    .restart local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 3059
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3061
    :cond_f0
    const-string v4, "Dexopt state:"

    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3062
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3063
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->useArtService()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 3064
    invoke-static {v2, v10}, Lcom/android/server/pm/DexOptHelper;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 3066
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, v2, v11, v10}, Lcom/android/server/pm/PackageManagerServiceStub;->dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V

    goto/16 :goto_186

    .line 3071
    :cond_10a
    const/4 v4, 0x0

    .line 3072
    .restart local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-eqz v11, :cond_119

    .line 3073
    invoke-static {v11}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3074
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v0, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3, v2, v11, v10}, Lcom/android/server/pm/PackageManagerServiceStub;->dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V

    .line 3075
    return-void

    .line 3078
    .end local v0    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_119
    iget-object v5, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 3081
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_127
    :goto_127
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_176

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3082
    .restart local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 3083
    .restart local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_127

    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v13

    if-eqz v13, :cond_140

    .line 3085
    goto :goto_127

    .line 3087
    :cond_140
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 3088
    .restart local v13    # "pkgName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3089
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3093
    :try_start_15f
    iget-object v14, v1, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iget-object v15, v1, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 3094
    invoke-virtual {v15, v13}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v15

    .line 3093
    invoke-virtual {v14, v2, v7, v6, v15}, Lcom/android/server/pm/PackageDexOptimizer;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    :try_end_16a
    .catch Lcom/android/server/pm/Installer$LegacyDexoptDisabledException; {:try_start_15f .. :try_end_16a} :catch_16f

    .line 3097
    nop

    .line 3098
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3099
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "pkgName":Ljava/lang/String;
    goto :goto_127

    .line 3095
    .restart local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v13    # "pkgName":Ljava/lang/String;
    :catch_16f
    move-exception v0

    .line 3096
    .local v0, "e":Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3100
    .end local v0    # "e":Lcom/android/server/pm/Installer$LegacyDexoptDisabledException;
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "pkgName":Ljava/lang/String;
    :cond_176
    const-string v0, "BgDexopt state:"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3102
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mBackgroundDexOptService:Lcom/android/server/pm/BackgroundDexOptService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/BackgroundDexOptService;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3103
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3105
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_186
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3106
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3153
    .end local v2    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :sswitch_18d
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_196

    .line 3154
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3156
    :cond_196
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v2, 0x78

    invoke-direct {v0, v8, v5, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3157
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3158
    const-string v2, "Frozen packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3160
    iget-object v2, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_1b6

    .line 3161
    const-string v2, "(none)"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e1

    .line 3163
    :cond_1b6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b7
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e1

    .line 3164
    const-string/jumbo v3, "package="

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3165
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3166
    const-string v3, ", refCounts="

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3167
    iget-object v3, v1, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3163
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b7

    .line 3170
    .end local v2    # "i":I
    :cond_1e1
    :goto_1e1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3171
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3037
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :sswitch_1e8
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, v8}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v0

    .line 3039
    .local v2, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 3040
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 3042
    :cond_1f7
    const-string v0, "Domain verification status:"

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3045
    :try_start_1ff
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 3046
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3045
    invoke-interface {v0, v1, v2, v10, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_209} :catch_20a

    .line 3050
    goto :goto_215

    .line 3047
    :catch_20a
    move-exception v0

    .line 3048
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failure printing domain verification information"

    invoke-virtual {v8, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v4, "PackageManager"

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3051
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_215
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3052
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 2985
    .end local v2    # "writer":Landroid/util/IndentingPrintWriter;
    :sswitch_21c
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_225

    .line 2986
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 2988
    :cond_225
    const-string v0, "Database versions:"

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2990
    move-object/from16 v3, p2

    goto/16 :goto_2ce

    .line 3003
    :sswitch_238
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->flush()V

    .line 3004
    new-instance v0, Ljava/io/FileOutputStream;

    move-object/from16 v3, p2

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v5, v0

    .line 3005
    .local v5, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v6, v0

    .line 3006
    .local v6, "str":Ljava/io/BufferedOutputStream;
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v7

    .line 3008
    .local v7, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :try_start_24d
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3009
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v7, v4, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3010
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3012
    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3013
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result v4

    .line 3012
    const/4 v13, 0x0

    invoke-virtual {v0, v7, v13, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 3014
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 3015
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_273
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24d .. :try_end_273} :catch_2a0
    .catch Ljava/lang/IllegalStateException; {:try_start_24d .. :try_end_273} :catch_28a
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_273} :catch_274

    goto :goto_2b5

    .line 3020
    :catch_274
    move-exception v0

    .line 3021
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_2ce

    .line 3018
    :catch_28a
    move-exception v0

    .line 3019
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    goto :goto_2b5

    .line 3016
    :catch_2a0
    move-exception v0

    .line 3017
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3022
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2b5
    goto :goto_2ce

    .line 2998
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .end local v7    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :sswitch_2b6
    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 2999
    goto :goto_2ce

    .line 3146
    :sswitch_2be
    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3147
    goto :goto_2ce

    .line 2994
    :sswitch_2c6
    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, v8, v9}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 2995
    nop

    .line 3182
    :goto_2ce
    return-void

    nop

    :sswitch_data_2d0
    .sparse-switch
        0x1 -> :sswitch_2c6
        0x200 -> :sswitch_2be
        0x1000 -> :sswitch_2b6
        0x2000 -> :sswitch_238
        0x8000 -> :sswitch_21c
        0x40000 -> :sswitch_1e8
        0x80000 -> :sswitch_18d
        0x100000 -> :sswitch_e2
        0x200000 -> :sswitch_6c
        0x2000000 -> :sswitch_53
        0x4000000 -> :sswitch_2f
    .end sparse-switch
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 5882
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 5883
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

    .line 5876
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 5877
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5899
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5900
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

    .line 5869
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 5870
    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5904
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5905
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

    .line 5889
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 5890
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 5894
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 5895
    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2785
    if-ltz p2, :cond_4a

    .line 2788
    if-eqz p4, :cond_10

    .line 2789
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2790
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2789
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2793
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2794
    .local v0, "callingUserId":I
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2796
    return-void

    .line 2798
    :cond_21
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result v1

    .line 2799
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 2804
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2799
    const-string v4, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, p1, v3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    .line 2806
    return-void

    .line 2808
    :cond_3b
    invoke-static {p1, p2, p5, p3, v1}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 2810
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2786
    .end local v0    # "callingUserId":I
    .end local v1    # "isSameProfileGroup":Z
    .end local v2    # "errorMessage":Ljava/lang/String;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2849
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2851
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

    .line 2867
    if-ltz p2, :cond_30

    .line 2870
    if-eqz p4, :cond_10

    .line 2871
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2872
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2871
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2875
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2876
    .local v0, "callingUserId":I
    move-object v2, p0

    move v3, p1

    move v4, v0

    move v5, p2

    move v6, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->hasCrossUserPermission(IIIZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2879
    return-void

    .line 2881
    :cond_21
    invoke-static {p1, p2, p6, p3}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2883
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2868
    .end local v0    # "callingUserId":I
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public filterAppAccess(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "callingUid"    # I

    .line 2943
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 2945
    const/4 v0, 0x0

    if-ne p2, p1, :cond_b

    .line 2946
    return v0

    .line 2948
    :cond_b
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 2950
    .local v2, "clientAppUid":I
    if-ne v2, p1, :cond_12

    .line 2951
    return v0

    .line 2954
    :cond_12
    return v1

    .line 2956
    .end local v2    # "clientAppUid":I
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2957
    .local v0, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2958
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 2959
    .local v3, "setting":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 2960
    return v1

    .line 2962
    :cond_24
    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_30

    .line 2963
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1

    return v1

    .line 2965
    :cond_30
    instance-of v4, v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v4, :cond_3c

    .line 2966
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1

    .line 2969
    :cond_3c
    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2931
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2932
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1
.end method

.method public filterAppAccess(Ljava/lang/String;IIZ)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "filterUninstalled"    # Z

    .line 2937
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 2938
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v7

    move v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    return v0
.end method

.method public varargs filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .param p1, "pkgNames"    # [Ljava/lang/String;

    .line 5702
    if-nez p1, :cond_b

    .line 5703
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 5706
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5708
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_65

    aget-object v4, p1, v3

    .line 5709
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 5710
    goto :goto_62

    .line 5713
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5714
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v6, "PackageManager"

    if-eqz v5, :cond_4b

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_2a

    goto :goto_4b

    .line 5719
    :cond_2a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v7

    if-nez v7, :cond_47

    .line 5720
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

    .line 5721
    goto :goto_62

    .line 5724
    :cond_47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 5715
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

    .line 5716
    nop

    .line 5708
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5727
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

    .line 2174
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
    .registers 25
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

    .line 3500
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    .line 3501
    .local v8, "n":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3502
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v9

    .line 3504
    .local v9, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v10, "PackageManager"

    if-nez v0, :cond_16

    if-eqz p6, :cond_1b

    .line 3505
    :cond_16
    const-string v0, "Looking for persistent preferred activities..."

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    :cond_1b
    const/4 v11, 0x0

    if-eqz v9, :cond_3b

    .line 3508
    const-wide/32 v0, 0x10000

    and-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    move v4, v0

    goto :goto_2d

    :cond_2c
    move v4, v11

    :goto_2d
    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_3c

    .line 3511
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    nop

    .line 3512
    .local v0, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    if-eqz v0, :cond_122

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 3513
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3514
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_11f

    .line 3515
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3516
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v5, "  "

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v4, :cond_5c

    if-eqz p6, :cond_93

    .line 3517
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3518
    invoke-virtual {v3}, Lcom/android/server/pm/PersistentPreferredActivity;->countDataSchemes()I

    move-result v15

    if-lez v15, :cond_72

    invoke-virtual {v3, v11}, Lcom/android/server/pm/PersistentPreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_74

    :cond_72
    const-string v15, "<none>"

    :goto_74
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, "\n  component="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v15, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3517
    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3520
    new-instance v4, Landroid/util/LogPrinter;

    invoke-direct {v4, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PersistentPreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3522
    :cond_93
    iget-object v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v15, 0x200

    or-long v11, p3, v15

    invoke-virtual {v6, v4, v11, v12, v7}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3524
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v11, :cond_a3

    if-eqz p6, :cond_b8

    .line 3525
    :cond_a3
    const-string v11, "Found persistent preferred activity:"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    if-eqz v4, :cond_b3

    .line 3527
    new-instance v11, Landroid/util/LogPrinter;

    invoke-direct {v11, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v11, v5}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_b8

    .line 3529
    :cond_b3
    const-string v5, "  null"

    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    :cond_b8
    :goto_b8
    if-nez v4, :cond_bd

    .line 3535
    move-object/from16 v11, p5

    goto :goto_11a

    .line 3537
    :cond_bd
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_be
    if-ge v5, v8, :cond_118

    .line 3538
    move-object/from16 v11, p5

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3539
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3540
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d9

    .line 3541
    goto :goto_e6

    .line 3543
    :cond_d9
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e9

    .line 3544
    nop

    .line 3537
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_e6
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 3547
    .restart local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e9
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v13, :cond_ef

    if-eqz p6, :cond_117

    .line 3548
    :cond_ef
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

    invoke-static {v10, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_117
    return-object v12

    .line 3537
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_118
    move-object/from16 v11, p5

    .line 3514
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "j":I
    :goto_11a
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4a

    :cond_11f
    move-object/from16 v11, p5

    goto :goto_124

    .line 3512
    .end local v1    # "m":I
    .end local v2    # "i":I
    :cond_122
    move-object/from16 v11, p5

    .line 3555
    :goto_124
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 43
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

    .line 3265
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p9

    new-instance v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    move-object v12, v0

    .line 3267
    .local v12, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    const/4 v6, 0x0

    .line 3269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v7

    .line 3267
    move-wide/from16 v1, p3

    move/from16 v3, p9

    move/from16 v4, p11

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 3271
    .end local p3    # "flags":J
    .local v13, "flags":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v15

    .line 3274
    .end local p1    # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    move-object v1, v15

    move-object/from16 v2, p2

    move-wide v3, v13

    move-object/from16 v5, p5

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->findPersistentPreferredActivity(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3278
    iget-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_42

    .line 3279
    return-object v12

    .line 3282
    :cond_42
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v6

    .line 3284
    .local v6, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v0, :cond_50

    if-eqz p8, :cond_55

    :cond_50
    const-string v0, "Looking for preferred activities..."

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_55
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v6, :cond_7c

    .line 3286
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v13

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    if-eqz v0, :cond_67

    move/from16 v16, v3

    goto :goto_69

    :cond_67
    move/from16 v16, v4

    :goto_69
    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v15

    move-wide/from16 p3, v13

    move v13, v3

    .end local v13    # "flags":J
    .restart local p3    # "flags":J
    move-object/from16 v3, p2

    move v14, v4

    move/from16 v4, v16

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PreferredIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v5

    goto :goto_81

    .line 3289
    .end local p3    # "flags":J
    .restart local v13    # "flags":J
    :cond_7c
    move-wide/from16 p3, v13

    move v13, v3

    move v14, v4

    .end local v13    # "flags":J
    .restart local p3    # "flags":J
    const/4 v5, 0x0

    :goto_81
    move-object v0, v5

    .line 3290
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v0, :cond_412

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_412

    .line 3295
    const/4 v1, 0x0

    .line 3297
    .local v1, "match":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v2, :cond_91

    if-eqz p8, :cond_96

    .line 3298
    :cond_91
    const-string v2, "Figuring out best match..."

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    :cond_96
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    .line 3302
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9b
    if-ge v3, v2, :cond_db

    .line 3303
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3304
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v5, :cond_a9

    if-eqz p8, :cond_d1

    .line 3305
    :cond_a9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Match for "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ": 0x"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v13, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3306
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3305
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_d1
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v1, :cond_d7

    .line 3309
    iget v1, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3302
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d7
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x1

    goto :goto_9b

    .line 3313
    .end local v3    # "j":I
    :cond_db
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_e1

    if-eqz p8, :cond_fb

    .line 3314
    :cond_e1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Best match: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    :cond_fb
    const/high16 v3, 0xfff0000

    and-int/2addr v1, v3

    .line 3317
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3318
    .local v3, "m":I
    const/4 v4, 0x0

    move-wide/from16 v18, p3

    .end local p3    # "flags":J
    .local v4, "i":I
    .local v18, "flags":J
    :goto_105
    if-ge v4, v3, :cond_405

    .line 3319
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 3320
    .local v5, "pa":Lcom/android/server/pm/PreferredActivity;
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v14, "  "

    move-object/from16 p1, v0

    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-nez v13, :cond_11b

    if-eqz p8, :cond_118

    goto :goto_11b

    :cond_118
    move/from16 v26, v3

    goto :goto_15b

    .line 3321
    :cond_11b
    :goto_11b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking PreferredActivity ds="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3322
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v13

    if-lez v13, :cond_132

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_134

    :cond_132
    const-string v20, "<none>"

    :goto_134
    move-object/from16 v13, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, "\n  component="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3321
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    new-instance v0, Landroid/util/LogPrinter;

    move/from16 v26, v3

    const/4 v3, 0x2

    const/4 v13, 0x3

    .end local v3    # "m":I
    .local v26, "m":I
    invoke-direct {v0, v3, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v0, v14}, Lcom/android/server/pm/PreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3326
    :goto_15b
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v0, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v0, v1, :cond_186

    .line 3327
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_167

    if-eqz p8, :cond_199

    .line 3328
    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping bad match "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v3, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3329
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3328
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_199

    .line 3335
    :cond_186
    if-eqz p6, :cond_1a4

    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v0, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v0, :cond_1a4

    .line 3336
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_194

    if-eqz p8, :cond_199

    :cond_194
    const-string v0, "Skipping mAlways=false entry"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_199
    :goto_199
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 p3, v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f8

    .line 3341
    .restart local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_1a4
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 3342
    const-wide/32 v20, 0x402000

    or-long v18, v18, v20

    .line 3345
    :cond_1b3
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v0, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v20, 0x200

    or-long v20, v18, v20

    const-wide/32 v22, 0x80000

    or-long v20, v20, v22

    const-wide/32 v22, 0x40000

    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    or-long v3, v20, v22

    invoke-virtual {v8, v0, v3, v4, v11}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 3349
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_1d4

    if-eqz p8, :cond_1d1

    goto :goto_1d4

    :cond_1d1
    move/from16 v27, v1

    goto :goto_1ef

    .line 3350
    :cond_1d4
    :goto_1d4
    const-string v3, "Found preferred activity:"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    if-eqz v0, :cond_1e8

    .line 3352
    new-instance v3, Landroid/util/LogPrinter;

    move/from16 v27, v1

    const/4 v1, 0x2

    const/4 v4, 0x3

    .end local v1    # "match":I
    .local v27, "match":I
    invoke-direct {v3, v1, v7, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3, v14}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1ef

    .line 3354
    .end local v27    # "match":I
    .restart local v1    # "match":I
    :cond_1e8
    move/from16 v27, v1

    .end local v1    # "match":I
    .restart local v27    # "match":I
    const-string v1, "  null"

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :goto_1ef
    invoke-static {v15}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    if-nez p12, :cond_1f9

    const/4 v4, 0x1

    goto :goto_1fa

    :cond_1f9
    const/4 v4, 0x0

    :goto_1fa
    move v1, v4

    .line 3359
    .local v1, "excludeSetupWizardHomeActivity":Z
    if-nez v1, :cond_201

    if-nez p10, :cond_201

    const/4 v4, 0x1

    goto :goto_202

    :cond_201
    const/4 v4, 0x0

    :goto_202
    move v3, v4

    .line 3361
    .local v3, "allowSetMutation":Z
    if-nez v0, :cond_239

    .line 3364
    if-nez v3, :cond_210

    .line 3365
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f8

    .line 3373
    :cond_210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing dangling preferred activity: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v14, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v14, v14, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3376
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3377
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f8

    .line 3379
    :cond_239
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_23a
    if-ge v4, v2, :cond_3ed

    .line 3380
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 3381
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    move/from16 v28, v2

    .end local v2    # "n":I
    .local v28, "n":I
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 p3, v13

    .end local v13    # "i":I
    .local p3, "i":I
    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3382
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_257

    .line 3383
    goto :goto_264

    .line 3385
    :cond_257
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26b

    .line 3386
    nop

    .line 3379
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_264
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, p3

    move/from16 v2, v28

    goto :goto_23a

    .line 3389
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_26b
    if-eqz p7, :cond_29d

    if-eqz v3, :cond_29d

    .line 3390
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3391
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3392
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_298

    .line 3393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing match "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f8

    .line 3392
    :cond_298
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_3f8

    .line 3404
    :cond_29d
    if-eqz p6, :cond_3b8

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3405
    invoke-virtual {v2, v10, v1, v11}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v2

    if-nez v2, :cond_3b3

    .line 3406
    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v2

    const-string v13, " type "

    if-eqz v2, :cond_317

    .line 3407
    if-eqz v3, :cond_308

    .line 3410
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_2d8

    .line 3411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p4, v0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local p4, "ai":Landroid/content/pm/ActivityInfo;
    const-string v0, "Result set changed, but PreferredActivity is still valid as only non-preferred components were removed for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2da

    .line 3410
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2d8
    move-object/from16 p4, v0

    .line 3418
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2da
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v2, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3420
    invoke-virtual {v13, v10}, Lcom/android/server/pm/PreferredComponent;->discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;

    move-result-object v23

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    move/from16 v29, v1

    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .local v29, "excludeSetupWizardHomeActivity":Z
    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v1, v1, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move/from16 v22, v2

    move-object/from16 v24, v13

    move/from16 v25, v1

    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3423
    .local v0, "freshPa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3424
    invoke-virtual {v6, v8, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3425
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3426
    .end local v0    # "freshPa":Lcom/android/server/pm/PreferredActivity;
    goto/16 :goto_3bc

    .line 3427
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_308
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_3bc

    .line 3428
    const-string v0, "Do not remove preferred activity"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3bc

    .line 3432
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_317
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_3af

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result set changed, dropping preferred activity for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_359

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing preferred activity since set changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v1, v1, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    :cond_359
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3444
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v1, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v1, v1, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    const/16 v23, 0x0

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move/from16 v22, v1

    move-object/from16 v24, v2

    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3447
    .local v0, "lastChosen":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v8, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3448
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "preferred:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 3451
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", while query:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/ResolveInfo;

    .line 3453
    invoke-interface {v10, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3450
    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    .end local v0    # "lastChosen":Lcom/android/server/pm/PreferredActivity;
    :cond_3af
    const/4 v0, 0x0

    iput-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3457
    return-object v12

    .line 3405
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_3b3
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_3bc

    .line 3404
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_3b8
    move-object/from16 p4, v0

    move/from16 v29, v1

    .line 3462
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3bc
    :goto_3bc
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_3c2

    if-eqz p8, :cond_3ea

    .line 3463
    :cond_3c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning preferred activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    :cond_3ea
    iput-object v14, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3467
    return-object v12

    .line 3379
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v28    # "n":I
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p3    # "i":I
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v2    # "n":I
    .restart local v13    # "i":I
    :cond_3ed
    move-object/from16 p4, v0

    move/from16 v29, v1

    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3318
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .end local v2    # "n":I
    .end local v3    # "allowSetMutation":Z
    .end local v4    # "j":I
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v13    # "i":I
    .restart local v28    # "n":I
    .restart local p3    # "i":I
    :goto_3f8
    add-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p1

    move v14, v2

    move/from16 v3, v26

    move/from16 v1, v27

    move/from16 v2, v28

    .end local p3    # "i":I
    .local v4, "i":I
    goto/16 :goto_105

    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v1, "match":I
    .restart local v2    # "n":I
    .local v3, "m":I
    :cond_405
    move-object/from16 p1, v0

    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 v26, v3

    move/from16 p3, v4

    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .end local v1    # "match":I
    .end local v2    # "n":I
    .end local v3    # "m":I
    .end local v4    # "i":I
    .restart local v26    # "m":I
    .restart local v27    # "match":I
    .restart local v28    # "n":I
    .restart local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local p3    # "i":I
    move-wide/from16 v13, v18

    goto :goto_416

    .line 3290
    .end local v18    # "flags":J
    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p3, "flags":J
    :cond_412
    move-object/from16 p1, v0

    .line 3471
    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    move-wide/from16 v13, p3

    .end local p3    # "flags":J
    .local v13, "flags":J
    :goto_416
    return-object v12
.end method

.method public final findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .registers 26
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

    .line 3485
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3488
    .local v13, "callingUid":I
    move-object v14, p0

    iget-object v0, v14, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3489
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    move v12, v1

    goto :goto_18

    :cond_17
    move v12, v2

    .line 3492
    .local v12, "isDeviceProvisioned":Z
    :goto_18
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move v11, v13

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityBody(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    return-object v0
.end method

.method public findSharedNonSystemLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;
    .registers 8
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;"
        }
    .end annotation

    .line 4958
    invoke-static {p1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v0

    .line 4959
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 4960
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4961
    .local v1, "retValue":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/SharedLibraryInfo;

    .line 4962
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    nop

    .line 4963
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4964
    .local v4, "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_33

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 4965
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4967
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    goto :goto_13

    .line 4968
    :cond_34
    return-object v1

    .line 4970
    .end local v1    # "retValue":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 939
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 940
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 941
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_51

    .line 942
    move-object v2, p0

    move-object v3, v0

    move v4, p4

    move v5, p5

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 943
    return-object v1

    .line 945
    :cond_1e
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 946
    return-object v1

    .line 948
    :cond_25
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_35

    .line 949
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 950
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_34

    .line 951
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 953
    :cond_34
    return-object v1

    .line 955
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_35
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 956
    invoke-interface {v0, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 955
    move-wide v3, p2

    move v6, p5

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 957
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_50

    .line 958
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 960
    :cond_50
    return-object v1

    .line 962
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_51
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 26
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1469
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v15, p4

    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v1

    invoke-interface {v1}, Lmiui/enterprise/IApplicationHelper;->isNeglectUserId()Z

    move-result v1

    const/16 v16, 0x0

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1470
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v16

    .line 1472
    :cond_1b
    if-nez v14, :cond_1e

    .line 1473
    return-object v16

    .line 1475
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1482
    .local v13, "callingUid":I
    invoke-virtual {v0, v14, v13, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1483
    return-object v16

    .line 1486
    :cond_29
    const-wide/16 v1, 0x2000

    and-long v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_40

    .line 1487
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1488
    const-wide/32 v3, 0x400000

    or-long v3, p2, v3

    move-wide v11, v3

    .end local p2    # "flags":J
    .local v3, "flags":J
    goto :goto_42

    .line 1491
    .end local v3    # "flags":J
    .restart local p2    # "flags":J
    :cond_40
    move-wide/from16 v11, p2

    .end local p2    # "flags":J
    .local v11, "flags":J
    :goto_42
    invoke-interface {v14, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 1492
    .local v7, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 1493
    .local v8, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v8, :cond_da

    .line 1495
    const-wide/16 v1, 0x100

    and-long/2addr v1, v11

    cmp-long v1, v1, v5

    if-nez v1, :cond_57

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v2, v1

    goto :goto_66

    .line 1496
    :cond_57
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {v15, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    move-object v2, v1

    :goto_66
    nop

    .line 1498
    .local v2, "gids":[I
    const-wide/16 v3, 0x1000

    and-long v9, v11, v3

    cmp-long v1, v9, v5

    if-eqz v1, :cond_86

    .line 1499
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_86

    .line 1500
    :cond_7a
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    goto :goto_8b

    .line 1499
    :cond_86
    :goto_86
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    .line 1500
    :goto_8b
    nop

    .line 1502
    .local v9, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-long/2addr v3, v11

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a8

    .line 1503
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9c

    goto :goto_a8

    .line 1504
    :cond_9c
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    goto :goto_ad

    .line 1503
    :cond_a8
    :goto_a8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    .line 1504
    :goto_ad
    nop

    .line 1506
    .local v10, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 1507
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v17

    .line 1506
    move-object v1, v8

    move-wide v3, v11

    move-object/from16 p2, v7

    move-object v14, v8

    .end local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v14, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .local p2, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move-wide/from16 v7, v17

    move-wide/from16 v19, v11

    .end local v11    # "flags":J
    .local v19, "flags":J
    move-object/from16 v11, p2

    move/from16 v12, p4

    move/from16 v17, v13

    .end local v13    # "callingUid":I
    .local v17, "callingUid":I
    move-object/from16 v13, p1

    invoke-static/range {v1 .. v13}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generate(Lcom/android/server/pm/pkg/AndroidPackage;[IJJJLjava/util/Set;Ljava/util/Set;Lcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1510
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_cf

    .line 1511
    return-object v16

    .line 1514
    :cond_cf
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1515
    invoke-virtual {v0, v14}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1517
    return-object v1

    .line 1518
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "gids":[I
    .end local v9    # "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v17    # "callingUid":I
    .end local v19    # "flags":J
    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v8    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v11    # "flags":J
    .restart local v13    # "callingUid":I
    :cond_da
    move-object/from16 p2, v7

    move-object v14, v8

    move-wide/from16 v19, v11

    move/from16 v17, v13

    .end local v7    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v8    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v11    # "flags":J
    .end local v13    # "callingUid":I
    .restart local v14    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v17    # "callingUid":I
    .restart local v19    # "flags":J
    .restart local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move-wide/from16 v3, v19

    .end local v19    # "flags":J
    .restart local v3    # "flags":J
    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_182

    .line 1519
    move-object/from16 v1, p2

    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static {v1, v3, v4}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-eqz v2, :cond_184

    .line 1520
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1521
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1522
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1523
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v5

    .line 1524
    .local v5, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v5, :cond_110

    invoke-interface {v5}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v16

    :cond_110
    move-object/from16 v6, v16

    iput-object v6, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1525
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1526
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1528
    new-instance v6, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1529
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1530
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v15, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1531
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1532
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1533
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1534
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1535
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v7

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1536
    invoke-static {v6, v3, v4, v1, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1539
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v7, :cond_181

    .line 1540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ps.pkg is n/a for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1541
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Provides a minimum info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1540
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_181
    return-object v2

    .line 1518
    .end local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_182
    move-object/from16 v1, p2

    .line 1545
    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_184
    return-object v16
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 856
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 871
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 872
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getActivityInfoInternal(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 886
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 888
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get activity info"

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 894
    :cond_25
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityInfoInternalBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ActivityInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 899
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p5

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v14

    .line 901
    .local v14, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActivityInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_32
    const/4 v8, 0x0

    if-nez v14, :cond_37

    move-object v0, v8

    goto :goto_43

    :cond_37
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v14}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    :goto_43
    move-object/from16 v16, v0

    .line 904
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v16, :cond_88

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v1, v16

    move-object v2, v14

    move-wide/from16 v3, p2

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 905
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 906
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_63

    return-object v8

    .line 907
    :cond_63
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p4

    move-object/from16 v3, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 909
    return-object v8

    .line 911
    :cond_74
    nop

    .line 912
    invoke-interface {v13, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 911
    move-object/from16 v8, v16

    move-object v9, v14

    move-wide/from16 v10, p2

    move-object v0, v13

    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p5

    move-object v1, v14

    .end local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .local v1, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    move-object v14, v0

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    return-object v2

    .line 904
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v1    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_88
    move-object v1, v14

    .line 914
    .end local v14    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .restart local v1    # "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 915
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object v2, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-wide/from16 v3, p2

    invoke-static {v0, v3, v4, v2, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0

    .line 918
    :cond_9e
    move-wide/from16 v3, p2

    return-object v8
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 3

    .line 1642
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

    .line 5028
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5029
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5031
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5032
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5033
    .local v1, "callingUserId":I
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5034
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 5035
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_1f
    if-eqz v3, :cond_7a

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_7a

    .line 5038
    :cond_2c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5039
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 5041
    :cond_37
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 5042
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5043
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_45
    if-ge v6, v4, :cond_74

    .line 5044
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 5045
    .local v7, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 5046
    .local v8, "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_56
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_71

    .line 5047
    new-instance v10, Landroid/content/IntentFilter;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5046
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 5043
    .end local v7    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    .end local v8    # "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v9    # "index":I
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 5050
    .end local v6    # "n":I
    :cond_74
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v6

    .line 5036
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

    .line 4346
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4348
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4349
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4350
    .local v1, "callingUserId":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4351
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 4353
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4354
    .local v2, "instantAppPkgName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4355
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_50

    .line 4357
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4358
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v6

    if-nez v6, :cond_47

    .line 4359
    goto :goto_34

    .line 4361
    :cond_47
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4362
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    goto :goto_34

    :cond_4f
    goto :goto_93

    .line 4365
    :cond_50
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4366
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4367
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_8b

    .line 4368
    invoke-interface {v6, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4370
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 4369
    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 4371
    goto :goto_5a

    .line 4373
    :cond_8b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4374
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_5a

    .line 4376
    :cond_93
    :goto_93
    return-object v3
.end method

.method public getAllSharedUsers()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    .line 5916
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 10
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4574
    .local v6, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getAppOpPermissionPackages"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4576
    if-eqz p1, :cond_58

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4577
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_58

    .line 4581
    :cond_1f
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4582
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4583
    .local v0, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_30
    if-ltz v1, :cond_4b

    .line 4584
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4585
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4586
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4585
    invoke-virtual {p0, v3, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_45

    .line 4587
    goto :goto_48

    .line 4589
    :cond_45
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 4583
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 4591
    .end local v1    # "i":I
    :cond_4b
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 4578
    .end local v0    # "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_58
    :goto_58
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5205
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    return v0

    .line 5206
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5207
    .local v0, "callingUid":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get enabled"

    move-object v1, p0

    move v2, v0

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5210
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5211
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5210
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5214
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 5212
    :cond_2b
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v1
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_31} :catch_31

    .line 5215
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_31
    move-exception v1

    .line 5216
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4981
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4983
    .local v0, "callingUid":I
    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationHidden for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, p0

    move v4, v0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4987
    .local v1, "callingId":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_50

    .line 4988
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v4, 0x1

    if-nez v3, :cond_39

    .line 4989
    nop

    .line 4996
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4989
    return v4

    .line 4991
    :cond_39
    :try_start_39
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_50

    if-eqz v5, :cond_44

    .line 4992
    nop

    .line 4996
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4992
    return v4

    .line 4994
    :cond_44
    :try_start_44
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 4996
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4994
    return v4

    .line 4996
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_50
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4997
    throw v3
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 967
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getApplicationInfoInternal(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 979
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 980
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide p2

    .line 982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 983
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get application info"

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 988
    :cond_25
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationInfoInternalBody(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "filterCallingUid"    # I
    .param p5, "userId"    # I

    .line 996
    move-object v6, p0

    move/from16 v7, p5

    const-wide/16 v0, -0x1

    move-object v2, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 999
    .end local p1    # "packageName":Ljava/lang/String;
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1000
    .local v9, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_39

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApplicationInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_39
    const-wide/32 v0, 0x40000000

    and-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    move v10, v0

    .line 1006
    .local v10, "matchApex":Z
    const/4 v11, 0x0

    if-eqz v9, :cond_8d

    .line 1007
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1008
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v12, :cond_54

    return-object v11

    .line 1009
    :cond_54
    if-nez v10, :cond_5d

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1010
    return-object v11

    .line 1012
    :cond_5d
    move-object v0, p0

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1013
    return-object v11

    .line 1015
    :cond_6c
    move/from16 v13, p4

    invoke-virtual {p0, v12, v13, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1016
    return-object v11

    .line 1019
    :cond_75
    nop

    .line 1020
    invoke-interface {v12, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 1019
    move-object v0, v9

    move-wide/from16 v1, p2

    move/from16 v4, p5

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1021
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_8c

    .line 1022
    invoke-virtual {p0, v9}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1024
    :cond_8c
    return-object v0

    .line 1026
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_8d
    move/from16 v13, p4

    const-string v0, "android"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    const-string/jumbo v0, "system"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    goto :goto_b8

    .line 1029
    :cond_a1
    const-wide/32 v0, 0x402000

    and-long v0, p2, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b7

    .line 1031
    move-object v0, p0

    move-object v1, v8

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 1034
    :cond_b7
    return-object v11

    .line 1027
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
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

    .line 5613
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5614
    .local v0, "sharedUserIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getAllSharedUsers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5615
    .local v2, "setting":Lcom/android/server/pm/SharedUserSetting;
    iget v3, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5616
    .end local v2    # "setting":Lcom/android/server/pm/SharedUserSetting;
    goto :goto_f

    .line 5617
    :cond_27
    return-object v0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5796
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5055
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5056
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5057
    .local v1, "callingUid":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1a

    .line 5060
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 5058
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

    .line 5224
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5226
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v0

    return v0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5233
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 5234
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    return v0

    .line 5237
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5238
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 5237
    move-object v2, p0

    move v4, p2

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5242
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    return v0

    .line 5240
    :cond_2b
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .end local p1    # "component":Landroid/content/ComponentName;
    .end local p2    # "callingUid":I
    .end local p3    # "userId":I
    throw v0
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_35} :catch_35

    .line 5243
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "callingUid":I
    .restart local p3    # "userId":I
    :catch_35
    move-exception v0

    .line 5244
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 2

    .line 5831
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object v0
.end method

.method public final getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;
    .registers 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "sourceUserId"    # I
    .param p6, "parentUserId"    # I

    .line 1119
    move-object/from16 v7, p0

    move/from16 v8, p5

    move/from16 v9, p6

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_12

    .line 1121
    return-object v10

    .line 1123
    :cond_12
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 1126
    .local v6, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_81

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_81

    .line 1129
    :cond_2b
    const/4 v0, 0x0

    .line 1130
    .local v0, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 1131
    .local v11, "size":I
    const/4 v1, 0x0

    move-object v12, v0

    move v13, v1

    .end local v0    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v13, "i":I
    :goto_33
    if-ge v13, v11, :cond_79

    .line 1132
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1136
    .local v14, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v14, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v0, :cond_41

    .line 1137
    goto :goto_76

    .line 1139
    :cond_41
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1140
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1141
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v16, :cond_4e

    .line 1142
    goto :goto_76

    .line 1145
    :cond_4e
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1146
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    .line 1148
    .local v0, "approvalLevel":I
    if-nez v12, :cond_6e

    .line 1149
    new-instance v1, Lcom/android/server/pm/CrossProfileDomainInfo;

    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v2}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    invoke-virtual {v7, v2, v8, v9}, Lcom/android/server/pm/ComputerEngine;->createForwardingResolveInfoUnchecked(Lcom/android/server/pm/WatchedIntentFilter;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-direct {v1, v2, v0, v9}, Lcom/android/server/pm/CrossProfileDomainInfo;-><init>(Landroid/content/pm/ResolveInfo;II)V

    move-object v12, v1

    .end local v12    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v1, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    goto :goto_76

    .line 1153
    .end local v1    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v12    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_6e
    iget v1, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1154
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1131
    .end local v0    # "approvalLevel":I
    .end local v14    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_76
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 1157
    .end local v13    # "i":I
    :cond_79
    if-eqz v12, :cond_80

    iget v0, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz v0, :cond_80

    .line 1159
    return-object v10

    .line 1161
    :cond_80
    return-object v12

    .line 1127
    .end local v11    # "size":I
    .end local v12    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_81
    :goto_81
    return-object v10
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

    .line 4024
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v2, "getDeclaredSharedLibraries"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4027
    .local v12, "callingUid":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getDeclaredSharedLibraries"

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4030
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4031
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4032
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_35

    .line 4033
    return-object v13

    .line 4036
    :cond_35
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4037
    return-object v13

    .line 4040
    :cond_3c
    nop

    .line 4041
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    .line 4042
    .local v14, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 4044
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    .line 4045
    .local v15, "libraryCount":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_48
    if-ge v8, v15, :cond_135

    .line 4046
    nop

    .line 4047
    invoke-virtual {v14, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4048
    .local v7, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v7, :cond_58

    .line 4049
    move/from16 v22, v8

    goto/16 :goto_131

    .line 4052
    :cond_58
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4053
    .local v5, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move v6, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "j":I
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_60
    if-ge v6, v5, :cond_127

    .line 4054
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4056
    .local v17, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v18

    .line 4057
    .local v18, "declaringPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 4058
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_10e

    .line 4061
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4063
    .local v19, "identity":J
    nop

    .line 4064
    :try_start_87
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4065
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    const-wide/32 v0, 0x4000000

    or-long v21, p2, v0

    .line 4067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_11a

    .line 4063
    move-object/from16 v1, p0

    move/from16 v23, v5

    move/from16 v24, v6

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .local v23, "versionCount":I
    .local v24, "j":I
    move-wide/from16 v5, v21

    move-object/from16 v21, v7

    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v21, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    move v7, v0

    move/from16 v22, v8

    .end local v8    # "i":I
    .local v22, "i":I
    move/from16 v8, p4

    :try_start_a7
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_ab
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_118

    .line 4068
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_b1

    .line 4072
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4069
    goto :goto_10e

    .line 4072
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_b1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4073
    nop

    .line 4075
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    .line 4076
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 4077
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v29

    .line 4078
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v30

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v32

    .line 4079
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    .line 4080
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v34

    .line 4082
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e9

    .line 4083
    move-object/from16 v35, v13

    goto :goto_f4

    :cond_e9
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v35, v1

    .line 4084
    :goto_f4
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v36

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v36}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 4086
    .local v0, "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_107

    .line 4087
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    goto :goto_109

    .line 4086
    :cond_107
    move-object/from16 v1, v16

    .line 4089
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_109
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    .line 4053
    .end local v0    # "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_10e
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v5, v23

    .end local v24    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_60

    .line 4072
    .end local v6    # "j":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v19    # "identity":J
    .restart local v24    # "j":I
    :catchall_118
    move-exception v0

    goto :goto_123

    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "i":I
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v6    # "j":I
    .restart local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v8    # "i":I
    :catchall_11a
    move-exception v0

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v8    # "i":I
    .restart local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v22    # "i":I
    .restart local v23    # "versionCount":I
    .restart local v24    # "j":I
    :goto_123
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4073
    throw v0

    .line 4053
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "i":I
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v6    # "j":I
    .restart local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v8    # "i":I
    :cond_127
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    .end local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v8    # "i":I
    .restart local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v22    # "i":I
    .restart local v23    # "versionCount":I
    .restart local v24    # "j":I
    move-object/from16 v0, v16

    .line 4045
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_131
    add-int/lit8 v8, v22, 0x1

    .end local v22    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_48

    :cond_135
    move/from16 v22, v8

    .line 4093
    .end local v8    # "i":I
    if-eqz v0, :cond_13e

    new-instance v13, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v13, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_13e
    return-object v13
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    .local v0, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1044
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    .line 1045
    return-object v1

    .line 1049
    :cond_c
    const-string v2, "PackageManager"

    const-string v3, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/high16 v2, -0x80000000

    .line 1054
    .local v2, "lastPriority":I
    const/4 v3, 0x0

    .line 1055
    .local v3, "lastComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1056
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v4, :cond_38

    .line 1057
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1058
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v2, :cond_30

    .line 1059
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1060
    iget v2, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_35

    .line 1061
    :cond_30
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v2, :cond_35

    .line 1063
    const/4 v3, 0x0

    .line 1056
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1066
    .end local v5    # "i":I
    :cond_38
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5837
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

    .line 3572
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4488
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4489
    return v2

    .line 4491
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4492
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4494
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4495
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4496
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4497
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4498
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4499
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4500
    return v2

    .line 4502
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v2

    return v2

    .line 4503
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4504
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4505
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4506
    return v2

    .line 4508
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v2

    return v2

    .line 4510
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

    .line 5849
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 14
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 4806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4807
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4809
    .local v7, "recipientUserId":I
    const-string v1, "com.android.contacts"

    const-wide/16 v2, 0x0

    .line 4810
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4809
    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 4811
    .local v8, "contactsProvider":Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_3d

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3d

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4812
    invoke-static {v0, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4818
    .local v9, "token":J
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v7

    move v5, v6

    :try_start_30
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_38

    .line 4821
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4818
    return-object v0

    .line 4821
    :catchall_38
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4822
    throw v0

    .line 4813
    .end local v9    # "token":J
    :cond_3d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allow to call grantImplicitAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5674
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 5676
    .local v7, "callingAppId":I
    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "getHarmfulAppInfo"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5679
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5680
    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 5681
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5685
    :cond_29
    :goto_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5686
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_38

    .line 5689
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5687
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 22
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

    .line 1071
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1072
    .local v11, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v12

    .line 1074
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1075
    const/4 v13, 0x0

    if-nez v12, :cond_17

    .line 1076
    return-object v13

    .line 1078
    :cond_17
    move-object/from16 v14, p1

    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1080
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move/from16 v9, p2

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v16

    .line 1081
    .local v16, "packageName":Ljava/lang/String;
    if-nez v16, :cond_5a

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1090
    .local v8, "appId":I
    const/16 v0, 0x2710

    if-lt v8, v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    move v10, v0

    .line 1091
    .local v10, "filtered":Z
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

    .line 1092
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v5, v12

    move/from16 v18, v8

    .end local v8    # "appId":I
    .local v18, "appId":I
    move/from16 v8, v17

    move/from16 v9, p2

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->findPreferredActivityInternal(Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    move-result-object v0

    .line 1094
    .local v0, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1095
    .local v1, "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_5a

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5a

    .line 1096
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_5c

    .line 1099
    .end local v0    # "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .end local v1    # "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v10    # "filtered":Z
    .end local v18    # "appId":I
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_5a
    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :goto_5c
    if-nez v2, :cond_5f

    .line 1100
    return-object v13

    .line 1103
    :cond_5f
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 1104
    .local v0, "resolveInfosSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_64
    if-ge v1, v0, :cond_8b

    .line 1105
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1107
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_88

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1109
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1104
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 1113
    .end local v1    # "i":I
    :cond_8b
    return-object v13
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 3

    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5491
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get install reason"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5493
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5494
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_26

    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_26

    .line 5497
    :cond_1d
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v1

    return v1

    .line 5495
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1
.end method

.method public getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .locals 27

    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5103
    move-object/16 v19, p0
    move-object/16 v20, p1
    move/16 v21, p2
    const/16 v22, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v23
    move-object/16 v25, v20
    move/16 v24, v21
    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move/from16 v8, v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5104
    .local v9, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getInstallSourceInfo"

    move-object/from16 v0, v19

    move v1, v9

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5112
    invoke-direct {v6, v7, v9, v8}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    .line 5113
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    if-nez v0, :cond_1e

    .line 5114
    const/4 v1, 0x0

    return-object v1

    .line 5117
    :cond_1e
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5118
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 5119
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5120
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_30

    .line 5121
    invoke-virtual {v6, v2, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5122
    :cond_30
    const/4 v1, 0x0

    .line 5126
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_31
    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 5127
    .local v2, "updateOwnerPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5c

    .line 5128
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5129
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_4a

    .line 5130
    invoke-virtual {v6, v2, v9}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_48

    goto :goto_4a

    :cond_48
    move v10, v3

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v10, v4

    .line 5135
    .local v10, "isCallerSystemOrUpdateOwner":Z
    :goto_4b
    if-eqz v5, :cond_5b

    .line 5136
    invoke-virtual {v6, v5, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-nez v11, :cond_5b

    if-nez v10, :cond_5c

    .line 5137
    invoke-direct {v6, v8}, Lcom/android/server/pm/ComputerEngine;->isCallerFromManagedUserOrProfile(I)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 5138
    :cond_5b
    const/4 v2, 0x0

    .line 5142
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "isCallerSystemOrUpdateOwner":Z
    :cond_5c
    iget-boolean v5, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v5, :cond_74

    .line 5147
    invoke-virtual {v6, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_67

    move v3, v4

    .line 5148
    .local v3, "isInstantApp":Z
    :cond_67
    if-nez v3, :cond_72

    invoke-virtual {v6, v7, v9}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 5149
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .local v4, "initiatingPackageName":Ljava/lang/String;
    goto :goto_73

    .line 5151
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_72
    const/4 v4, 0x0

    .line 5153
    .end local v3    # "isInstantApp":Z
    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    :goto_73
    goto :goto_91

    .line 5154
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_74
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 5158
    move-object v4, v1

    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    goto :goto_91

    .line 5160
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_80
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 5161
    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5162
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_90

    .line 5163
    invoke-virtual {v6, v3, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 5164
    :cond_90
    const/4 v4, 0x0

    .line 5169
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_91
    :goto_91
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 5170
    .local v3, "originatingPackageName":Ljava/lang/String;
    if-eqz v3, :cond_a4

    .line 5171
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5172
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_a3

    .line 5173
    invoke-virtual {v6, v5, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 5174
    :cond_a3
    const/4 v3, 0x0

    .line 5181
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a4
    if-eqz v3, :cond_b1

    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v5, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_b1

    .line 5183
    const/4 v3, 0x0

    .line 5189
    :cond_b1
    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 5190
    .local v5, "signatures":Lcom/android/server/pm/PackageSignatures;
    if-eqz v4, :cond_c7

    if-eqz v5, :cond_c7

    iget-object v10, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v11, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v10, v11, :cond_c7

    .line 5192
    new-instance v10, Landroid/content/pm/SigningInfo;

    iget-object v11, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v10, v11}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    move-object/from16 v17, v10

    .local v10, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    goto :goto_ca

    .line 5194
    .end local v10    # "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :cond_c7
    const/4 v10, 0x0

    move-object/from16 v17, v10

    .line 5197
    .local v17, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :goto_ca
    new-instance v18, Landroid/content/pm/InstallSourceInfo;

    iget v15, v0, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    move-object/from16 v10, v18

    move-object v11, v4

    move-object/from16 v12, v17

    move-object v13, v3

    move-object v14, v1

    move/from16 v16, v15

    move-object v15, v2

    move-object/16 v26, v14
    invoke-static/range {v22 .. v26}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v14
    invoke-direct/range {v10 .. v16}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v18
.end method

.method public getInstalledApplications(JII)Ljava/util/List;
    .registers 24
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 4662
    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4665
    :cond_11
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4666
    :cond_1e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v9

    .line 4667
    .end local p1    # "flags":J
    .local v9, "flags":J
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v9

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v4

    :goto_31
    move v11, v0

    .line 4668
    .local v11, "listUninstalled":Z
    const-wide/32 v12, 0x40000000

    and-long/2addr v12, v9

    cmp-long v0, v12, v2

    if-eqz v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v1, v4

    :goto_3c
    move v12, v1

    .line 4670
    .local v12, "listApex":Z
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed application info"

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4678
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 4679
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move-wide v3, v9

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getApplicationInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v13

    .line 4680
    .local v13, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v13, :cond_5c

    .line 4681
    return-object v13

    .line 4685
    :cond_5c
    nop

    .line 4686
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v14

    .line 4687
    .local v14, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-eqz v11, :cond_100

    .line 4688
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 4689
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4691
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v0, v9

    .line 4692
    .local v0, "effectiveFlags":J
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 4693
    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    move-wide/from16 v17, v0

    goto :goto_92

    .line 4692
    :cond_90
    move-wide/from16 v17, v0

    .line 4695
    .end local v0    # "effectiveFlags":J
    .local v17, "effectiveFlags":J
    :goto_92
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 4696
    if-nez v12, :cond_a5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 4697
    goto :goto_75

    .line 4699
    :cond_a5
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 p1, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local p1, "listUninstalled":Z
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 4700
    move/from16 v11, p1

    goto :goto_75

    .line 4702
    :cond_b9
    invoke-virtual {v6, v11, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 4703
    move/from16 v11, p1

    goto :goto_75

    .line 4705
    :cond_c2
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 4706
    invoke-interface {v11, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4705
    move-wide/from16 v1, v17

    move/from16 v4, p3

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4707
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f3

    .line 4708
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_f3

    .line 4713
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "listUninstalled":Z
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "listUninstalled":Z
    :cond_e0
    move/from16 p1, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p1    # "listUninstalled":Z
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-wide/from16 v2, v17

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4716
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_f3
    :goto_f3
    if-eqz v0, :cond_f8

    .line 4717
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4719
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "effectiveFlags":J
    :cond_f8
    move/from16 v11, p1

    goto/16 :goto_75

    .end local p1    # "listUninstalled":Z
    .local v11, "listUninstalled":Z
    :cond_fc
    move/from16 p1, v11

    .end local v11    # "listUninstalled":Z
    .restart local p1    # "listUninstalled":Z
    goto/16 :goto_176

    .line 4721
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local p1    # "listUninstalled":Z
    .restart local v11    # "listUninstalled":Z
    :cond_100
    move/from16 p1, v11

    .end local v11    # "listUninstalled":Z
    .restart local p1    # "listUninstalled":Z
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 4722
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_116
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_176

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4723
    .local v4, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 4724
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v5, :cond_12a

    .line 4725
    goto :goto_116

    .line 4727
    :cond_12a
    if-nez v12, :cond_133

    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_133

    .line 4728
    goto :goto_116

    .line 4730
    :cond_133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v3, p3

    move-object/from16 v16, v5

    move-object/from16 p2, v11

    move-object v11, v4

    .end local v4    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 4731
    move-object/from16 v11, p2

    goto :goto_116

    .line 4733
    :cond_14b
    invoke-virtual {v6, v11, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_154

    .line 4734
    move-object/from16 v11, p2

    goto :goto_116

    .line 4736
    :cond_154
    nop

    .line 4737
    invoke-interface {v11, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4736
    move-object/from16 v0, v16

    move-wide v1, v9

    move/from16 v4, p3

    move-object v5, v11

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4738
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_171

    .line 4739
    move-object/from16 v1, v16

    .end local v16    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4740
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_173

    .line 4738
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v16    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_171
    move-object/from16 v1, v16

    .line 4742
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_173
    move-object/from16 v11, p2

    goto :goto_116

    .line 4745
    :cond_176
    :goto_176
    return-object v15
.end method

.method public final getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1672
    .local v6, "callingUid":I
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1673
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1675
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    .line 1678
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get installed packages"

    move-object v0, p0

    move v1, v6

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1681
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method protected getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .registers 24
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1687
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 1688
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v1, p4

    move-wide/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getPackageInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v11

    .line 1689
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v11, :cond_22

    .line 1690
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1694
    :cond_22
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_30

    move v0, v1

    goto :goto_31

    :cond_30
    move v0, v4

    :goto_31
    move v12, v0

    .line 1695
    .local v12, "listUninstalled":Z
    const-wide/32 v13, 0x40000000

    and-long/2addr v13, v7

    cmp-long v0, v13, v2

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v4

    :goto_3d
    move v13, v0

    .line 1696
    .local v13, "listApex":Z
    const-wide/32 v14, 0x200000

    and-long/2addr v14, v7

    cmp-long v0, v14, v2

    if-eqz v0, :cond_47

    goto :goto_48

    :cond_47
    move v1, v4

    :goto_48
    move v14, v1

    .line 1699
    .local v14, "listFactory":Z
    if-eqz v12, :cond_cf

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 1701
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_69
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1702
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_8d

    .line 1703
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 1704
    goto :goto_69

    .line 1706
    :cond_7e
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1707
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1708
    .local v1, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_8d

    .line 1709
    move-object v0, v1

    move-object v4, v0

    goto :goto_8e

    .line 1712
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_8d
    move-object v4, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_8e
    if-nez v13, :cond_a1

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1713
    goto :goto_69

    .line 1715
    :cond_a1
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v17, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 1716
    move-object/from16 v11, v17

    goto :goto_69

    .line 1718
    :cond_b6
    invoke-virtual {v6, v11, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1719
    move-object/from16 v11, v17

    goto :goto_69

    .line 1721
    :cond_bf
    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1722
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_c8

    .line 1723
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1725
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_c8
    move-object/from16 v11, v17

    goto :goto_69

    .end local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_cb
    move-object/from16 v17, v11

    .end local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_14d

    .line 1727
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_cf
    move-object/from16 v17, v11

    .end local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v0

    .line 1728
    .restart local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1729
    .local v16, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1730
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_119

    .line 1731
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_106

    .line 1732
    goto :goto_e7

    .line 1735
    :cond_106
    if-nez v0, :cond_10a

    const/4 v1, 0x0

    goto :goto_114

    :cond_10a
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1736
    .restart local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_114
    if-eqz v1, :cond_119

    .line 1737
    move-object v0, v1

    move-object v4, v0

    goto :goto_11a

    .line 1740
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_119
    move-object v4, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_11a
    if-nez v13, :cond_123

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 1741
    goto :goto_e7

    .line 1743
    :cond_123
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v18, v11

    move-object v11, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 1744
    move-object/from16 v11, v18

    goto :goto_e7

    .line 1746
    :cond_138
    invoke-virtual {v6, v11, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 1747
    move-object/from16 v11, v18

    goto :goto_e7

    .line 1749
    :cond_141
    invoke-virtual {v6, v11, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1750
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_14a

    .line 1751
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_14a
    move-object/from16 v11, v18

    goto :goto_e7

    .line 1755
    :cond_14d
    :goto_14d
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v15}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5066
    move-object/16 v5, p0
    move-object/16 v6, p1
    move/16 v7, p2
    const/16 v8, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v9
    move-object/16 v11, v6
    move/16 v10, v7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5067
    .local v0, "callingUid":I
    invoke-direct {v5, v6, v0, v7}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 5068
    .local v1, "installSource":Lcom/android/server/pm/InstallSource;
    if-eqz v1, :cond_22

    .line 5071
    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5072
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 5073
    iget-object v3, v5, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5074
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_20

    .line 5075
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5074
    invoke-virtual {v5, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5076
    :cond_20
    const/4 v2, 0x0

    .line 5079
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_21
    move-object/16 v12, v2
    invoke-static/range {v8 .. v12}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2

    .line 5069
    .end local v2    # "installerPackageName":Ljava/lang/String;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .registers 2

    .line 5862
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6

    .line 5863
    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5862
    :goto_a
    return-object v0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 5843
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I

    .line 1841
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1842
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 1844
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1845
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 1846
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 1847
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1848
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1849
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    .line 1850
    .local v4, "isInstantApp":Z
    if-eqz v4, :cond_32

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_32
    return-object v3

    .line 1852
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "isInstantApp":Z
    :cond_33
    return-object v3
.end method

.method public getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;
    .registers 21
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 4903
    move-object/from16 v6, p0

    move/from16 v14, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 4904
    .local v15, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getInstrumentationInfoAsUser"

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4906
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1e

    return-object v7

    .line 4907
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4908
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 4909
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v13}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4910
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v12, :cond_6c

    if-nez v16, :cond_3d

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    goto :goto_72

    .line 4911
    :cond_3d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 4913
    return-object v7

    .line 4915
    :cond_4d
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 4916
    .local v0, "i":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    invoke-interface {v12, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 4917
    .local v2, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move/from16 v3, p2

    int-to-long v9, v3

    move-object v7, v0

    move-object/from16 v8, v16

    move-object v11, v2

    move-object v4, v12

    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v12, p3

    move-object v5, v13

    .end local v13    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    move-object v13, v4

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v7

    return-object v7

    .line 4910
    .end local v0    # "i":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    .end local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "packageName":Ljava/lang/String;
    .restart local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_6c
    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "packageName":Ljava/lang/String;
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "packageName":Ljava/lang/String;
    :goto_72
    return-object v7
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 5298
    if-eqz p1, :cond_66

    if-nez p2, :cond_5

    goto :goto_66

    .line 5301
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5302
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5303
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5304
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_35

    .line 5305
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5304
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_35

    .line 5309
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5310
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5306
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

    .line 5307
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

    .line 5299
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

    .line 1173
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    .line 1174
    .local v0, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_13

    .line 1175
    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1178
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 4382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4383
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4384
    return-object v2

    .line 4386
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4387
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4389
    :cond_16
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4390
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4391
    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v1

    if-ne p1, v1, :cond_55

    .line 4393
    :try_start_30
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v1
    :try_end_34
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_34} :catch_36

    move p1, v1

    .line 4397
    goto :goto_55

    .line 4394
    :catch_36
    move-exception v1

    .line 4396
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected isolated uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to have an owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4399
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_55
    :goto_55
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4400
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4401
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4402
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_8d

    .line 4403
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4404
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 4405
    return-object v2

    .line 4407
    :cond_71
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

    .line 4408
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_8d
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_a0

    .line 4409
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4410
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 4411
    return-object v2

    .line 4413
    :cond_9b
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4415
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a0
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 13
    .param p1, "uids"    # [I

    .line 4421
    const/4 v0, 0x0

    if-eqz p1, :cond_bb

    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_bb

    .line 4424
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4425
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 4426
    return-object v0

    .line 4428
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4429
    .local v2, "callingUserId":I
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4430
    .local v3, "names":[Ljava/lang/String;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1d
    if-ltz v4, :cond_ba

    .line 4431
    aget v5, p1, v4

    .line 4432
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4433
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4435
    :cond_2b
    invoke-static {v5}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4436
    invoke-interface {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4437
    invoke-interface {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v6

    if-ne v5, v6, :cond_6a

    .line 4439
    :try_start_45
    invoke-direct {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v6
    :try_end_49
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_49} :catch_4b

    move v5, v6

    .line 4443
    goto :goto_6a

    .line 4440
    :catch_4b
    move-exception v6

    .line 4442
    .local v6, "e":Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected isolated uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to have an owner"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4445
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_6a
    :goto_6a
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 4446
    .local v6, "appId":I
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 4447
    .local v7, "obj":Ljava/lang/Object;
    instance-of v8, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_9d

    .line 4448
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 4449
    .local v8, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 4450
    aput-object v0, v3, v4

    goto :goto_9c

    .line 4452
    :cond_84
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

    .line 4454
    .end local v8    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :goto_9c
    goto :goto_b6

    :cond_9d
    instance-of v8, v7, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_b4

    .line 4455
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4456
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_ad

    .line 4457
    aput-object v0, v3, v4

    goto :goto_b3

    .line 4459
    :cond_ad
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4461
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_b3
    goto :goto_b6

    .line 4462
    :cond_b4
    aput-object v0, v3, v4

    .line 4430
    .end local v5    # "uid":I
    .end local v6    # "appId":I
    .end local v7    # "obj":Ljava/lang/Object;
    :goto_b6
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1d

    .line 4465
    .end local v4    # "i":I
    :cond_ba
    return-object v3

    .line 4422
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_bb
    :goto_bb
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

    .line 3591
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3592
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3594
    .local v1, "callingUserId":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3595
    .local v2, "packagesToNotify":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 3596
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3597
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_20

    .line 3598
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3595
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3602
    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 8
    .param p1, "uid"    # I

    .line 928
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 930
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    array-length v2, v0

    .line 931
    .local v2, "numPackages":I
    :goto_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-nez v1, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 932
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 931
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 934
    .end local v3    # "i":I
    :cond_1f
    return-object v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 922
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 924
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;JI)[I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3720
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3721
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3722
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 3723
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "getPackageGids"

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3726
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3727
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_23

    .line 3728
    return-object v1

    .line 3730
    :cond_23
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 3731
    invoke-static {v2, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3732
    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3733
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 3734
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3735
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 3734
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3738
    :cond_4e
    const-wide/32 v3, 0x402000

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_73

    .line 3739
    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 3740
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_73

    .line 3741
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3742
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3741
    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3746
    :cond_73
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1551
    const-wide/16 v2, -0x1

    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1551
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1565
    move-object v8, p0

    move/from16 v9, p7

    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    invoke-interface {v0}, Lmiui/enterprise/IApplicationHelper;->isNeglectUserId()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1566
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 1568
    :cond_17
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 1569
    .end local p4    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get package info"

    move-object v0, p0

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1572
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, v10

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getPackageInfoInternalBody(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;
    .registers 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "flags"    # J
    .param p6, "filterCallingUid"    # I
    .param p7, "userId"    # I

    .line 1580
    move-object/from16 v6, p0

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    .line 1582
    .end local p1    # "packageName":Ljava/lang/String;
    .local v11, "packageName":Ljava/lang/String;
    const-wide/32 v0, 0x200000

    and-long/2addr v0, v7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v4

    :goto_1b
    move v12, v0

    .line 1583
    .local v12, "matchFactoryOnly":Z
    const-wide/32 v13, 0x40000000

    and-long/2addr v13, v7

    cmp-long v0, v13, v2

    if-eqz v0, :cond_25

    goto :goto_26

    :cond_25
    move v1, v4

    :goto_26
    move v13, v1

    .line 1584
    .local v13, "matchApex":Z
    const/4 v14, 0x0

    if-eqz v12, :cond_61

    .line 1586
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 1587
    .local v15, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v15, :cond_61

    .line 1588
    if-nez v13, :cond_45

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1589
    return-object v14

    .line 1591
    :cond_45
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p6

    move/from16 v3, p7

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1592
    return-object v14

    .line 1594
    :cond_55
    invoke-virtual {v6, v15, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1595
    return-object v14

    .line 1597
    :cond_5c
    invoke-virtual {v6, v15, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1601
    .end local v15    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_61
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v11}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1602
    .local v15, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1603
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v12, :cond_7b

    if-eqz v15, :cond_7b

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1604
    return-object v14

    .line 1606
    :cond_7b
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_a1

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_a1
    if-eqz v15, :cond_d6

    .line 1610
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1611
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_b4

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1612
    return-object v14

    .line 1614
    :cond_b4
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v17, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 1615
    return-object v14

    .line 1617
    :cond_c6
    move-object/from16 v0, v17

    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_d1

    invoke-virtual {v6, v0, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 1618
    return-object v14

    .line 1621
    :cond_d1
    invoke-virtual {v6, v0, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 1623
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_d6
    if-nez v12, :cond_109

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_109

    .line 1624
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1625
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_e9

    return-object v14

    .line 1626
    :cond_e9
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v18, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 1627
    return-object v14

    .line 1629
    :cond_fb
    move-object/from16 v0, v18

    .end local v18    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v6, v0, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_104

    .line 1630
    return-object v14

    .line 1632
    :cond_104
    invoke-virtual {v6, v0, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 1636
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_109
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, v14, v11, v7, v8}, Lcom/android/server/pm/PackageManagerServiceStub;->hookPkgInfo(Landroid/content/pm/PackageInfo;Ljava/lang/String;J)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
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

    .line 5802
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5803
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 5804
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5805
    :cond_13
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_1f

    .line 5806
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5808
    :cond_1f
    return-object v2
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 8
    .param p1, "safeMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 3609
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v0

    .line 3610
    .local v0, "userKeyUnlocked":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3611
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_3f

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3612
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3f

    .line 3616
    :cond_1b
    if-eqz p1, :cond_25

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3617
    const/4 v2, 0x2

    return v2

    .line 3620
    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3621
    const/4 v2, 0x3

    return v2

    .line 3624
    :cond_2f
    if-nez v0, :cond_3d

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 3625
    const/4 v2, 0x4

    return v2

    .line 3627
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 3613
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

    .line 1660
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1662
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1663
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1664
    const/4 v1, 0x0

    return-object v1

    .line 1666
    :cond_14
    return-object v0
.end method

.method public getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4183
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4184
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_e

    .line 4185
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    .line 4188
    :cond_d
    return-object v0

    .line 4186
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1647
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

    .line 1652
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1654
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

    .line 3566
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getPackageUid(Ljava/lang/String;JI)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 5454
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 5455
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5456
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 5457
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getPackageUid"

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5459
    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v1

    return v1
.end method

.method public getPackageUidInternal(Ljava/lang/String;JII)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 2634
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2635
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2636
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v1, :cond_39

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2637
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2638
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_39

    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2639
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_39

    .line 2640
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2643
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_39
    const-wide/32 v2, 0x402000

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_60

    .line 2644
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2645
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_60

    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 2646
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_60

    .line 2647
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2651
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_60
    const/4 v2, -0x1

    return v2
.end method

.method public getPackagesForAppId(I)Ljava/util/List;
    .registers 5
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation

    .line 5733
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5734
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_12

    .line 5735
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5736
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5737
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_12
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_22

    .line 5738
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5739
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5741
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public final getPackagesForUid(I)[Ljava/lang/String;
    .registers 3
    .param p1, "uid"    # I

    .line 1963
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

    .line 1979
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 1980
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 1981
    if-eqz p4, :cond_e

    .line 1982
    return-object v2

    .line 1984
    :cond_e
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 1985
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 1986
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 1987
    .local v2, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1988
    .local v3, "n":I
    new-array v4, v3, [Ljava/lang/String;

    .line 1989
    .local v4, "res":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1990
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1e
    if-ge v6, v3, :cond_42

    .line 1991
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1992
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1993
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 1994
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move v5, v8

    .line 1990
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1997
    .end local v6    # "index":I
    :cond_42
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 1998
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v3    # "n":I
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_49
    instance-of v1, v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v1, :cond_69

    .line 1999
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2000
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2001
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2002
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2005
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_69
    return-object v2
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 23
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

    .line 4599
    move-object/from16 v8, p0

    move/from16 v9, p4

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4600
    :cond_11
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 4601
    .end local p2    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4603
    const-wide/32 v0, 0x402000

    and-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    move v12, v0

    .line 4605
    .local v12, "listUninstalled":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 4606
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v14, p1

    array-length v0, v14

    new-array v15, v0, [Z

    .line 4607
    .local v15, "tmpBools":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4608
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_62

    if-nez v12, :cond_62

    .line 4609
    goto :goto_4b

    .line 4611
    :cond_62
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v15

    move-wide v5, v10

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    .line 4612
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_4b

    .line 4614
    :cond_71
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v13}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;
    .registers 24
    .param p1, "libInfo"    # Landroid/content/pm/SharedLibraryInfo;
    .param p2, "flags"    # J
    .param p4, "callingUid"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/SharedLibraryInfo;",
            "JII)",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 3961
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    .line 3962
    .local v3, "versionedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 3963
    .local v4, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 3964
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_10
    if-ge v6, v5, :cond_f2

    .line 3965
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3966
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v7, :cond_1e

    .line 3967
    move-wide/from16 v9, p2

    goto/16 :goto_ea

    .line 3970
    :cond_1e
    invoke-interface {v7, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    move-wide/from16 v9, p2

    invoke-static {v8, v9, v10}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v8

    if-nez v8, :cond_2c

    .line 3971
    goto/16 :goto_ea

    .line 3974
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    .line 3975
    .local v8, "libName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v11

    if-nez v11, :cond_81

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v11

    if-eqz v11, :cond_3d

    goto :goto_81

    .line 4001
    :cond_3d
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    if-eqz v11, :cond_e9

    .line 4002
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibraries()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    .line 4003
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ea

    .line 4004
    :cond_5f
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-eqz v11, :cond_67

    .line 4005
    goto/16 :goto_ea

    .line 4007
    :cond_67
    if-nez v3, :cond_6f

    .line 4008
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v11

    .line 4010
    :cond_6f
    new-instance v11, Landroid/content/pm/VersionedPackage;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 4011
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v13

    invoke-direct {v11, v12, v13, v14}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4010
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ea

    .line 3977
    :cond_81
    :goto_81
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v11

    if-eqz v11, :cond_8c

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v11

    goto :goto_90

    :cond_8c
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v11

    .line 3978
    .local v11, "libs":[Ljava/lang/String;
    :goto_90
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v12

    if-eqz v12, :cond_9b

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v12

    goto :goto_9f

    .line 3979
    :cond_9b
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v12

    :goto_9f
    nop

    .line 3981
    .local v12, "libsVersions":[J
    invoke-static {v11, v8}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 3982
    .local v13, "libIdx":I
    if-gez v13, :cond_a7

    .line 3983
    goto :goto_ea

    .line 3985
    :cond_a7
    aget-wide v14, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b2

    .line 3986
    goto :goto_ea

    .line 3988
    :cond_b2
    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v14

    if-eqz v14, :cond_b9

    .line 3989
    goto :goto_ea

    .line 3991
    :cond_b9
    if-nez v3, :cond_c1

    .line 3992
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v14

    .line 3995
    :cond_c1
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3996
    .local v14, "dependentPackageName":Ljava/lang/String;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    if-eqz v15, :cond_dd

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v15

    if-eqz v15, :cond_dd

    .line 3997
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getManifestPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3999
    :cond_dd
    new-instance v15, Landroid/content/pm/VersionedPackage;

    .line 4000
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v0

    invoke-direct {v15, v14, v0, v1}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 3999
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4001
    .end local v11    # "libs":[Ljava/lang/String;
    .end local v12    # "libsVersions":[J
    .end local v13    # "libIdx":I
    .end local v14    # "dependentPackageName":Ljava/lang/String;
    :cond_e9
    nop

    .line 3964
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "libName":Ljava/lang/String;
    :cond_ea
    :goto_ea
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    goto/16 :goto_10

    :cond_f2
    move-wide/from16 v9, p2

    .line 4016
    .end local v6    # "i":I
    return-object v3
.end method

.method public getPersistentApplications(ZI)Ljava/util/List;
    .registers 21
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

    .line 5574
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5575
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/android/server/pm/UserManagerServiceStub;->isInMaintenanceMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5576
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5577
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceStub;->getPersistentAppsForOtherUser(ZII)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5580
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5582
    .local v3, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    .line 5583
    .local v4, "numPackages":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 5584
    .local v11, "userId":I
    const/4 v5, 0x0

    move v12, v5

    .local v12, "index":I
    :goto_3e
    if-ge v12, v4, :cond_aa

    .line 5585
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v12}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5586
    .local v13, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 5588
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/high16 v5, 0x40000

    and-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_62

    .line 5589
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-nez v5, :cond_62

    move v5, v7

    goto :goto_63

    :cond_62
    move v5, v6

    :goto_63
    move v15, v5

    .line 5590
    .local v15, "matchesUnaware":Z
    const/high16 v5, 0x80000

    and-int/2addr v5, v2

    if-eqz v5, :cond_71

    .line 5591
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-eqz v5, :cond_71

    move v6, v7

    goto :goto_72

    :cond_71
    nop

    :goto_72
    move/from16 v16, v6

    .line 5593
    .local v16, "matchesAware":Z
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_a7

    if-eqz v1, :cond_82

    .line 5594
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_a7

    :cond_82
    if-nez v15, :cond_86

    if-eqz v16, :cond_a7

    .line 5596
    :cond_86
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 5597
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_a5

    .line 5598
    int-to-long v6, v2

    .line 5599
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 5598
    move-object v5, v13

    move v9, v11

    move-object/from16 v17, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 5600
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_a7

    .line 5601
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 5597
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a5
    move-object/from16 v17, v10

    .line 5584
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "matchesUnaware":Z
    .end local v16    # "matchesAware":Z
    :cond_a7
    :goto_a7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    .line 5607
    .end local v12    # "index":I
    :cond_aa
    return-object v3
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3
    .param p1, "userId"    # I

    .line 3560
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4516
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4517
    return v2

    .line 4519
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4520
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4522
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4523
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4524
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4525
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4526
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4527
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4528
    return v2

    .line 4530
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4531
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4532
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4533
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4534
    return v2

    .line 4536
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4538
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

    .line 5778
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5779
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5781
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5782
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5783
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_24

    .line 5784
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5785
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v5, v2, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v3

    return-object v3

    .line 5786
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_24
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    if-eqz v2, :cond_3c

    .line 5787
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5788
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    .line 5789
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

    .line 5791
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3c
    return-object v5
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 2009
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2011
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2013
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2011
    return-object v2

    .line 2013
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2014
    throw v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 4100
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p4

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_10

    return-object v8

    .line 4101
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 4102
    .local v16, "callingUid":I
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1, v15}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v13

    .line 4103
    .end local p2    # "flags":J
    .local v13, "flags":J
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "get provider info"

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4105
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v12

    .line 4106
    .local v12, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProviderInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    :cond_53
    if-nez v12, :cond_56

    .line 4109
    return-object v8

    .line 4112
    :cond_56
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 4113
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_ac

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_6a

    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    goto :goto_af

    .line 4117
    :cond_6a
    invoke-static {v10, v12, v13, v14, v15}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 4118
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4120
    return-object v8

    .line 4122
    :cond_81
    invoke-interface {v10, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v17

    .line 4123
    .local v17, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    nop

    .line 4124
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move-wide v1, v13

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4125
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_97

    .line 4126
    return-object v8

    .line 4128
    :cond_97
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    move-object v9, v12

    move-object v1, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v10, v13

    move-object v2, v12

    .end local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .local v2, "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    move-object/from16 v12, v17

    move-wide v3, v13

    .end local v13    # "flags":J
    .local v3, "flags":J
    move-object v13, v0

    move/from16 v14, p4

    move-object v15, v1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    return-object v5

    .line 4131
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v3    # "flags":J
    .end local v17    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .restart local v13    # "flags":J
    :cond_ab
    return-object v8

    .line 4113
    :cond_ac
    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    .line 4114
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .end local v13    # "flags":J
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "p":Lcom/android/server/pm/pkg/component/ParsedProvider;
    .restart local v3    # "flags":J
    :goto_af
    return-object v8
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3799
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3800
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3801
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 3802
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "get receiver info"

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3805
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v9

    .line 3806
    .local v9, "a":Lcom/android/server/pm/pkg/component/ParsedActivity;
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getReceiverInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    :cond_48
    if-nez v9, :cond_4b

    .line 3810
    return-object v1

    .line 3813
    :cond_4b
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3814
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_81

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_5c

    goto :goto_81

    .line 3818
    :cond_5c
    invoke-static {v10, v9, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3819
    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v10

    move v4, v0

    move-object v5, p1

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3820
    return-object v1

    .line 3822
    :cond_6f
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 3823
    invoke-interface {v10, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 3822
    move-object v3, v9

    move-wide v4, p2

    move v7, p4

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 3825
    :cond_80
    return-object v1

    .line 3815
    :cond_81
    :goto_81
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3578
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

    .line 1796
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1797
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1798
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 1799
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "get service info"

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 1802
    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getServiceInfoBody(Landroid/content/ComponentName;JII)Landroid/content/pm/ServiceInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 1807
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v15

    .line 1808
    .local v15, "s":Lcom/android/server/pm/pkg/component/ParsedService;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_30

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_30
    const/4 v14, 0x0

    if-nez v15, :cond_34

    .line 1813
    return-object v14

    .line 1816
    :cond_34
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v15}, Lcom/android/server/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1817
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v8, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v9, v16

    move-object v10, v15

    move-wide/from16 v11, p2

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1818
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 1819
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_5e

    return-object v14

    .line 1820
    :cond_5e
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1822
    return-object v14

    .line 1824
    :cond_6f
    nop

    .line 1825
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 1824
    move-object/from16 v8, v16

    move-object v9, v15

    move-wide/from16 v10, p2

    move-object v1, v13

    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p4

    move-object v14, v1

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    return-object v2

    .line 1827
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_84
    move/from16 v0, p4

    return-object v14
.end method

.method public getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;
    .registers 45
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

    .line 3832
    move-object/from16 v9, p0

    move/from16 v10, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_e

    return-object v11

    .line 3833
    :cond_e
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3834
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3835
    .local v12, "callingUid":I
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3836
    return-object v11

    .line 3839
    :cond_1f
    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v13

    .line 3841
    .end local p2    # "flags":J
    .local v13, "flags":J
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3842
    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3844
    const-string v1, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_57

    .line 3846
    const/4 v0, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v9, v15, v12, v10, v0}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3848
    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3850
    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_5c

    .line 3844
    :cond_57
    move-object/from16 v15, p1

    goto :goto_5c

    .line 3842
    :cond_5a
    move-object/from16 v15, p1

    .line 3850
    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    :cond_5d
    move/from16 v16, v0

    .line 3853
    .local v16, "canSeeStaticAndSdkLibraries":Z
    nop

    .line 3854
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 3855
    .local v8, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 3856
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 3857
    .local v7, "libCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_6b
    if-ge v5, v7, :cond_178

    .line 3858
    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 3859
    .local v6, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v6, :cond_7e

    .line 3860
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_170

    .line 3863
    :cond_7e
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    .line 3864
    .local v3, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v17, v0

    move v4, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "j":I
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_86
    if-ge v4, v3, :cond_162

    .line 3865
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/SharedLibraryInfo;

    .line 3866
    .local v18, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_ae

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 3867
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3866
    :cond_a6
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3869
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3870
    .local v19, "identity":J
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    .line 3872
    .local v33, "declaringPackage":Landroid/content/pm/VersionedPackage;
    nop

    .line 3873
    :try_start_b7
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3874
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v21

    const-wide/32 v0, 0x4000000

    or-long v23, v13, v0

    .line 3876
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_c8
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_151

    .line 3872
    move-object/from16 v1, p0

    move/from16 v34, v3

    move/from16 v35, v4

    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .local v34, "versionCount":I
    .local v35, "j":I
    move-wide/from16 v3, v21

    move/from16 v36, v5

    move-object/from16 v37, v6

    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v36, "i":I
    .local v37, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    move-wide/from16 v5, v23

    move/from16 v38, v7

    .end local v7    # "libCount":I
    .local v38, "libCount":I
    move v7, v0

    move-object/from16 v39, v8

    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .local v39, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    move/from16 v8, p4

    :try_start_dd
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/pm/ComputerEngine;->getPackageInfoInternal(Ljava/lang/String;JJII)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_14f

    .line 3877
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_e7

    .line 3881
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3878
    goto :goto_141

    .line 3881
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_e7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3882
    nop

    .line 3884
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 3885
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v24

    .line 3886
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v26

    .line 3887
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v28

    .line 3888
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-wide v3, v13

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Ljava/util/List;

    move-result-object v30

    .line 3889
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11a

    .line 3890
    move-object/from16 v31, v11

    goto :goto_125

    .line 3891
    :cond_11a
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v31, v1

    .line 3892
    :goto_125
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v32

    move-object/from16 v21, v0

    move-object/from16 v29, v33

    invoke-direct/range {v21 .. v32}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 3894
    .local v0, "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v17, :cond_13a

    .line 3895
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    goto :goto_13c

    .line 3894
    :cond_13a
    move-object/from16 v1, v17

    .line 3897
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_13c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    .line 3864
    .end local v0    # "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v19    # "identity":J
    .end local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_141
    add-int/lit8 v4, v35, 0x1

    move/from16 v3, v34

    move/from16 v5, v36

    move-object/from16 v6, v37

    move/from16 v7, v38

    move-object/from16 v8, v39

    .end local v35    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_86

    .line 3881
    .end local v4    # "j":I
    .restart local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v19    # "identity":J
    .restart local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v35    # "j":I
    :catchall_14f
    move-exception v0

    goto :goto_15e

    .end local v34    # "versionCount":I
    .end local v35    # "j":I
    .end local v36    # "i":I
    .end local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v3    # "versionCount":I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .restart local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :catchall_151
    move-exception v0

    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v39, v8

    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v34    # "versionCount":I
    .restart local v35    # "j":I
    .restart local v36    # "i":I
    .restart local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :goto_15e
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3882
    throw v0

    .line 3864
    .end local v18    # "libInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v19    # "identity":J
    .end local v33    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v34    # "versionCount":I
    .end local v35    # "j":I
    .end local v36    # "i":I
    .end local v37    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v3    # "versionCount":I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .restart local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :cond_162
    move/from16 v34, v3

    move/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move-object/from16 v39, v8

    .line 3857
    .end local v3    # "versionCount":I
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v6    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v36    # "i":I
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :goto_16e
    move-object/from16 v0, v17

    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_170
    add-int/lit8 v5, v36, 0x1

    move/from16 v7, v38

    move-object/from16 v8, v39

    .end local v36    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_6b

    .end local v38    # "libCount":I
    .end local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v7    # "libCount":I
    .restart local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    :cond_178
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    .line 3901
    .end local v5    # "i":I
    .end local v7    # "libCount":I
    .end local v8    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    .restart local v38    # "libCount":I
    .restart local v39    # "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    if-eqz v0, :cond_185

    new-instance v11, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v11, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_185
    return-object v11
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

    .line 3585
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 1832
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 3
    .param p1, "sharedUserAppId"    # I

    .line 5819
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

    .line 5825
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5624
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5625
    .local v0, "packageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_4f

    .line 5629
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5630
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 5631
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 5632
    .local v2, "numPackages":I
    new-array v3, v2, [Ljava/lang/String;

    .line 5633
    .local v3, "res":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 5634
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_23
    if-ge v5, v2, :cond_41

    .line 5635
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5636
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 5637
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    move v4, v7

    .line 5634
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 5640
    .end local v5    # "index":I
    :cond_41
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 5641
    if-eqz v3, :cond_4c

    move-object v5, v3

    goto :goto_4e

    :cond_4c
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_4e
    return-object v5

    .line 5626
    .end local v1    # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v2    # "numPackages":I
    .end local v3    # "res":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4f
    :goto_4f
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "uid"    # I

    .line 2917
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2918
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 2919
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_24

    .line 2920
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_18

    .line 2921
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 2922
    :cond_18
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_24

    .line 2923
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2924
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    return-object v3

    .line 2927
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_24
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v2
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2909
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2910
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_c

    .line 2911
    const/4 v1, 0x0

    return-object v1

    .line 2913
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5316
    if-nez p1, :cond_4

    .line 5317
    const/4 v0, 0x0

    return-object v0

    .line 5319
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5320
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5321
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5322
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_47

    .line 5323
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5322
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_47

    .line 5328
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    if-eq v3, v0, :cond_37

    const/16 v3, 0x3e8

    if-ne v3, v0, :cond_2f

    goto :goto_37

    .line 5330
    :cond_2f
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "May not access signing KeySet of other apps."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5332
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5333
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5324
    .end local v3    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_47
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

    .line 5326
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

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .registers 16

    .line 4138
    nop

    .line 4139
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4140
    .local v0, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v1, 0x0

    .line 4141
    .local v1, "libs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 4142
    .local v2, "libCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_71

    .line 4143
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4144
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v4, :cond_16

    .line 4145
    goto :goto_6e

    .line 4147
    :cond_16
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4148
    .local v5, "versionCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1b
    if-ge v6, v5, :cond_6e

    .line 4149
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4150
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v8

    if-nez v8, :cond_39

    .line 4151
    if-nez v1, :cond_31

    .line 4152
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v8

    .line 4154
    :cond_31
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4155
    goto :goto_6e

    .line 4157
    :cond_39
    nop

    .line 4158
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 4159
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v8, :cond_6b

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    const-wide/32 v13, 0x4000000

    .line 4159
    move-object v9, p0

    move-object v10, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    if-nez v9, :cond_6b

    .line 4162
    if-nez v1, :cond_63

    .line 4163
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v9

    .line 4165
    :cond_63
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4166
    goto :goto_6e

    .line 4148
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_6b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 4142
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 4171
    .end local v3    # "i":I
    :cond_71
    if-eqz v1, :cond_7d

    .line 4172
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 4173
    .local v3, "libsArray":[Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4174
    return-object v3

    .line 4177
    .end local v3    # "libsArray":[Ljava/lang/String;
    :cond_7d
    const/4 v3, 0x0

    return-object v3
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3751
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3752
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, -0x1

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_26

    .line 3755
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3756
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3755
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3757
    return v1

    .line 3759
    :cond_1d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 3753
    :cond_26
    :goto_26
    return v1
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 6
    .param p1, "sharedUserName"    # Ljava/lang/String;

    .line 4470
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 4471
    return v0

    .line 4473
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4474
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4475
    return v0

    .line 4477
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 4478
    .local v2, "suid":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v2, :cond_24

    .line 4479
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4478
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 4480
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return v0

    .line 4482
    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 11
    .param p1, "uid"    # I

    .line 5747
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5748
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5750
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5751
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5752
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_44

    .line 5753
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5754
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5755
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v3

    .line 5756
    .local v3, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/16 v4, 0x2710

    .line 5757
    .local v4, "vers":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 5758
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_27
    if-ge v6, v5, :cond_43

    .line 5759
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5760
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    if-eqz v8, :cond_40

    .line 5761
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v8

    .line 5762
    .local v8, "v":I
    if-ge v8, v4, :cond_40

    move v4, v8

    .line 5758
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "v":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5765
    .end local v6    # "index":I
    :cond_43
    return v4

    .line 5766
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v3    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v4    # "vers":I
    .end local v5    # "numPackages":I
    :cond_44
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_5a

    .line 5767
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5768
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 5769
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v3

    return v3

    .line 5772
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_5a
    const/16 v2, 0x2710

    return v2
.end method

.method public getUnusedPackages(J)Ljava/util/Set;
    .registers 24
    .param p1, "downgradeTimeThresholdMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5648
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5649
    .local v1, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 5650
    .local v13, "currentTimeInMillis":J
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5651
    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v15

    .line 5652
    .local v15, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v2, 0x0

    move v11, v2

    .local v11, "index":I
    :goto_13
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_66

    .line 5653
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5654
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 5655
    move/from16 v20, v11

    goto :goto_63

    .line 5657
    :cond_2a
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 5658
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v17

    .line 5659
    .local v17, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    nop

    .line 5660
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v2

    .line 5662
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 5663
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v18

    .line 5659
    move-wide v4, v13

    move-wide/from16 v6, p1

    move-object/from16 v8, v17

    move/from16 v20, v11

    .end local v11    # "index":I
    .local v20, "index":I
    move-wide/from16 v11, v18

    invoke-static/range {v2 .. v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 5664
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5652
    .end local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_63
    :goto_63
    add-int/lit8 v11, v20, 0x1

    .end local v20    # "index":I
    .restart local v11    # "index":I
    goto :goto_13

    .line 5667
    .end local v11    # "index":I
    :cond_66
    return-object v1
.end method

.method public final getUsed()I
    .registers 2

    .line 496
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return v0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 2

    .line 5922
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 481
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return v0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5401
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v0

    .line 5403
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

    .line 5390
    nop

    .line 5391
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5392
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_b

    .line 5393
    const/4 v1, 0x0

    return-object v1

    .line 5395
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

    .line 5910
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

    .line 4303
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4304
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4305
    return v1

    .line 4307
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4308
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4309
    .local v3, "callingUserId":I
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4310
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_3b

    .line 4311
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_3b

    .line 4314
    :cond_25
    packed-switch p3, :pswitch_data_3c

    .line 4320
    return v1

    .line 4318
    :pswitch_29
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v1

    return v1

    .line 4316
    :pswitch_32
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v1

    return v1

    .line 4312
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

    .line 4327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4328
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4329
    .local v1, "callingUserId":I
    nop

    .line 4330
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4331
    .local v2, "signingDetails":Landroid/content/pm/SigningDetails;
    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 4332
    return v3

    .line 4334
    :cond_11
    packed-switch p3, :pswitch_data_20

    .line 4340
    return v3

    .line 4338
    :pswitch_15
    invoke-virtual {v2, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v3

    return v3

    .line 4336
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

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3662
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3663
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

    .line 5278
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5279
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5278
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    .line 5280
    .local v1, "appEnabledSetting":I
    if-nez v1, :cond_19

    .line 5281
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 5282
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v2, :cond_14

    .line 5284
    return v0

    .line 5286
    :cond_14
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1e

    return v0

    .line 5288
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    move v0, v2

    :cond_1d
    return v0

    .line 5290
    .end local v1    # "appEnabledSetting":I
    :catch_1e
    move-exception v1

    .line 5291
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 5473
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5474
    return v0

    .line 5476
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5477
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_f

    .line 5478
    return v0

    .line 5481
    :cond_f
    nop

    .line 5482
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5481
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5483
    .local v2, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_28

    .line 5484
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 5483
    :goto_29
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;IZ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "resolveIsolatedUid"    # Z

    .line 2219
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 2220
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2221
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2220
    :goto_18
    return v1

    .line 2223
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2224
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz p3, :cond_2d

    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2225
    invoke-direct {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    .line 2227
    :cond_2d
    if-eqz v0, :cond_3a

    .line 2228
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 2227
    :goto_3b
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z
    .registers 10
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 5252
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5253
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5254
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5255
    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    .line 5256
    .local v3, "appEnabledSetting":I
    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 5257
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1a

    .line 5258
    return v0

    .line 5260
    :cond_17
    if-eq v3, v4, :cond_1a

    .line 5261
    return v0

    .line 5264
    :cond_1a
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5265
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 5264
    invoke-virtual {v5, v6, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v5

    .line 5266
    .local v5, "componentEnabledSetting":I
    if-nez v5, :cond_2b

    .line 5267
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f

    return v0

    .line 5268
    :cond_2b
    if-ne v5, v4, :cond_2e

    move v0, v4

    :cond_2e
    return v0

    .line 5269
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "appEnabledSetting":I
    .end local v5    # "componentEnabledSetting":I
    :catch_2f
    move-exception v1

    .line 5270
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2237
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2238
    return v0

    .line 2240
    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2241
    return v0

    .line 2243
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

    .line 2248
    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2d

    .line 2249
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2250
    .local v4, "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_11

    .line 2251
    return v2

    .line 2253
    :cond_11
    nop

    .line 2254
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 2255
    .local v1, "visibleToInstantApp":Z
    :goto_1c
    nop

    .line 2256
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    .line 2258
    .local v0, "explicitlyVisibleToInstantApp":Z
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    return v2

    .line 2259
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_2d
    const/4 v4, 0x2

    if-ne p2, v4, :cond_55

    .line 2260
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2261
    .restart local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_39

    .line 2262
    return v2

    .line 2264
    :cond_39
    nop

    .line 2265
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    .line 2266
    .restart local v1    # "visibleToInstantApp":Z
    :goto_44
    nop

    .line 2267
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_4e

    move v0, v3

    goto :goto_4f

    :cond_4e
    move v0, v2

    .line 2269
    .restart local v0    # "explicitlyVisibleToInstantApp":Z
    :goto_4f
    if-eqz v1, :cond_54

    if-nez v0, :cond_54

    move v2, v3

    :cond_54
    return v2

    .line 2270
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/server/pm/pkg/component/ParsedActivity;
    :cond_55
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6b

    .line 2271
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v0

    .line 2272
    .local v0, "service":Lcom/android/server/pm/pkg/component/ParsedService;
    if-eqz v0, :cond_69

    .line 2273
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedService;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    nop

    .line 2272
    :goto_6a
    return v2

    .line 2274
    .end local v0    # "service":Lcom/android/server/pm/pkg/component/ParsedService;
    :cond_6b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_81

    .line 2275
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v0

    .line 2276
    .local v0, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    if-eqz v0, :cond_7f

    .line 2277
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    move v2, v3

    goto :goto_80

    :cond_7f
    nop

    .line 2276
    :goto_80
    return v2

    .line 2278
    .end local v0    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_81
    if-nez p2, :cond_88

    .line 2279
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 2281
    :cond_88
    return v2
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2296
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

    .line 3945
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3946
    const-string/jumbo v2, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_27

    .line 3950
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    .line 3951
    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result v0

    .line 3952
    .local v0, "isTrusted":I
    if-eqz v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1

    .line 3954
    .end local v0    # "isTrusted":I
    :cond_26
    return v2

    .line 3948
    :cond_27
    :goto_27
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2302
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "isInstantApp"

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2305
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2313
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2318
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2319
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2321
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2322
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2324
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2325
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2327
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2326
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v1

    .line 2328
    .local v2, "returnAllowed":Z
    :goto_32
    if-eqz v2, :cond_3d

    .line 2329
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    return v1

    .line 2331
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

    .line 2380
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v3, v2

    goto :goto_d

    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 2381
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

    .line 2382
    .local v4, "debug":Z
    :goto_19
    const-string v6, "PackageManager"

    if-eqz v4, :cond_33

    .line 2383
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

    .line 2386
    :cond_33
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_34
    if-ge v7, v3, :cond_c1

    .line 2387
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2388
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2389
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 2390
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_a3

    .line 2392
    iget-boolean v11, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v11, :cond_7c

    .line 2393
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v12, v10

    move-object/from16 v13, p1

    move-wide/from16 v14, p5

    move/from16 v16, p3

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 2395
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_7b

    .line 2396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DENY instant app; pkg: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", approved"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    :cond_7b
    return v2

    .line 2402
    :cond_7c
    move/from16 v11, p3

    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 2403
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_a2

    .line 2404
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DENY instant app installed; pkg: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    :cond_a2
    return v2

    .line 2409
    :cond_a3
    move/from16 v11, p3

    if-eqz v4, :cond_bd

    .line 2410
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not find package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_bd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_34

    :cond_c1
    move/from16 v11, p3

    .line 2414
    .end local v7    # "n":I
    return v5
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3632
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3633
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3634
    .local v0, "callingUid":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "is package available"

    move-object v2, p0

    move v3, v0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3637
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3638
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 3639
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3640
    return v1

    .line 3642
    :cond_2c
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 3643
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v3, :cond_5d

    .line 3646
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3647
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_48

    .line 3648
    return v5

    .line 3650
    :cond_48
    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 3651
    .local v4, "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v4, :cond_55

    invoke-static {v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v1, v5

    :cond_55
    return v1

    .line 3654
    .end local v4    # "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_56
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    return v1

    .line 3657
    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_5d
    return v1
.end method

.method public isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .line 5338
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5339
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5340
    return v2

    .line 5342
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5345
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5346
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5347
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5349
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5348
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5353
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5354
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5355
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5356
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5358
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5350
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

    .line 5351
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

    .line 5343
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

    .line 5363
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5364
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5365
    return v2

    .line 5367
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5370
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5371
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5372
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5374
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5373
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5378
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5379
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5380
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5381
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5383
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5375
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

    .line 5376
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

    .line 5368
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "callingUserId":I
    :cond_75
    :goto_75
    return v2
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5002
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5003
    .local v6, "callingUid":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPackageSuspendedForUser for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5005
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5006
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_37

    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_37

    .line 5009
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isSuspended()Z

    move-result v1

    return v1

    .line 5007
    :cond_37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown target package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isSameProfileGroup(II)Z
    .registers 6
    .param p1, "callerUserId"    # I
    .param p2, "userId"    # I

    .line 2454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2456
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2456
    return v2

    .line 2458
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    throw v2
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5015
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5016
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 5017
    .local v2, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 5018
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 5019
    const/4 v0, 0x1

    return v0

    .line 5021
    .end local v1    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_2e
    goto :goto_c

    .line 5022
    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public isUidPrivileged(I)Z
    .registers 11
    .param p1, "uid"    # I

    .line 4543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4544
    return v1

    .line 4546
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4547
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4549
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4550
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 4551
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_45

    .line 4552
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4553
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 4554
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v4

    .line 4555
    .local v4, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 4556
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_31
    if-ge v6, v5, :cond_44

    .line 4557
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4558
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->isPrivileged()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 4559
    const/4 v1, 0x1

    return v1

    .line 4556
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

    .line 4562
    :cond_45
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_51

    .line 4563
    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4564
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    return v3

    .line 4562
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_51
    :goto_51
    nop

    .line 4566
    return v1
.end method

.method public queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 23
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

    .line 4860
    move-object/from16 v8, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4861
    .local v9, "callingUid":I
    if-eqz p1, :cond_d

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_11

    .line 4862
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :goto_11
    move v10, v0

    .line 4863
    .local v10, "userId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "queryContentProviders"

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4865
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4866
    :cond_2b
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v11

    .line 4867
    .end local p3    # "flags":J
    .local v11, "flags":J
    const/4 v13, 0x0

    .line 4868
    .local v13, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move/from16 v4, p2

    move-wide v5, v11

    move v7, v10

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProviders(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;IJI)Ljava/util/List;

    move-result-object v6

    .line 4870
    .local v6, "matchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-nez v6, :cond_46

    const/4 v0, 0x0

    goto :goto_4a

    :cond_46
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_4a
    move v7, v0

    .line 4871
    .local v7, "listSize":I
    const/4 v0, 0x0

    move-object v14, v13

    move v13, v0

    .local v13, "i":I
    .local v14, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_4e
    if-ge v13, v7, :cond_95

    .line 4872
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ProviderInfo;

    .line 4873
    .local v15, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4874
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4873
    invoke-static {v0, v15, v11, v12, v10}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v0

    if-nez v0, :cond_66

    .line 4876
    goto :goto_92

    .line 4878
    :cond_66
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 4879
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4881
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 4883
    goto :goto_92

    .line 4885
    :cond_85
    if-nez v14, :cond_8f

    .line 4886
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, v7, v13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 4888
    :cond_8f
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4871
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v15    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    .line 4891
    .end local v13    # "i":I
    :cond_95
    if-eqz v14, :cond_a2

    .line 4892
    sget-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4893
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 4896
    :cond_a2
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;
    .registers 23
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

    .line 4924
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 4925
    .local v14, "callingUid":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "queryInstrumentationAsUser"

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4927
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4928
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4930
    .local v0, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 4931
    .local v1, "numInstrumentations":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_30
    if-ge v2, v1, :cond_8d

    .line 4932
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 4933
    .local v3, "p":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    if-eqz v7, :cond_4a

    .line 4934
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_4a

    :cond_47
    move/from16 v18, v14

    goto :goto_88

    .line 4935
    :cond_4a
    :goto_4a
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4936
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4937
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v6, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 4938
    .local v13, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_84

    if-eqz v13, :cond_84

    .line 4939
    invoke-virtual {v6, v13, v14, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 4940
    move/from16 v18, v14

    goto :goto_88

    .line 4942
    :cond_67
    invoke-interface {v13, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 4943
    .local v16, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    move/from16 v12, p2

    int-to-long v10, v12

    move-object v8, v3

    move-object v9, v5

    move-object/from16 v12, v16

    move-object/from16 v17, v13

    .end local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p3

    move/from16 v18, v14

    .end local v14    # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v14, v17

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/server/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v8

    .line 4945
    .local v8, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v8, :cond_88

    .line 4946
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 4938
    .end local v8    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v16    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v17    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "callingUid":I
    .restart local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "callingUid":I
    :cond_84
    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 4931
    .end local v3    # "p":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "callingUid":I
    .restart local v18    # "callingUid":I
    :cond_88
    :goto_88
    add-int/lit8 v2, v2, 0x1

    move/from16 v14, v18

    goto :goto_30

    .line 4951
    .end local v2    # "index":I
    .end local v18    # "callingUid":I
    .restart local v14    # "callingUid":I
    :cond_8d
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;
    .registers 17
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

    .line 633
    const-wide/16 v5, 0x0

    .line 634
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 633
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v8, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;
    .registers 18
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

    .line 626
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIZZ)Ljava/util/List;
    .registers 45
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "privateResolveFlags"    # J
    .param p7, "filterCallingUid"    # I
    .param p8, "userId"    # I
    .param p9, "resolveForStart"    # Z
    .param p10, "allowDynamicSplits"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JJIIZZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 504
    move-object/from16 v11, p0

    move/from16 v12, p7

    move/from16 v13, p8

    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 505
    :cond_13
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v14

    .line 506
    .local v14, "instantAppPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    move-object/from16 v0, p0

    move/from16 v2, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 509
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 510
    .local v15, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 511
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 512
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_48

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 514
    move-object/from16 v0, p1

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 516
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v17, v0

    move-object v10, v1

    move-object/from16 v16, v2

    goto :goto_4d

    .line 521
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_48
    move-object/from16 v16, p1

    move-object/from16 v17, v0

    move-object v10, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v10, "comp":Landroid/content/ComponentName;
    .local v16, "intent":Landroid/content/Intent;
    .local v17, "originalIntent":Landroid/content/Intent;
    :goto_4d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/miui/xspace/XSpaceManagerStub;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 522
    const-wide/32 v0, 0x402000

    or-long v0, p3, v0

    move-wide v8, v0

    .end local p3    # "flags":J
    .local v0, "flags":J
    goto :goto_60

    .line 521
    .end local v0    # "flags":J
    .restart local p3    # "flags":J
    :cond_5e
    move-wide/from16 v8, p3

    .line 525
    .end local p3    # "flags":J
    .local v8, "flags":J
    :goto_60
    const/16 v18, 0x0

    const/4 v7, 0x1

    if-nez v10, :cond_6b

    if-eqz v15, :cond_68

    goto :goto_6b

    :cond_68
    move/from16 v6, v18

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v6, v7

    .line 527
    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p8

    move-object/from16 v3, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v19

    .line 525
    move-wide v1, v8

    move/from16 v3, p8

    move/from16 v4, p7

    move/from16 v5, p9

    move-wide/from16 p3, v8

    move v8, v7

    .end local v8    # "flags":J
    .restart local p3    # "flags":J
    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v6

    .line 529
    .end local p3    # "flags":J
    .local v6, "flags":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 530
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v20, 0x0

    .line 531
    .local v20, "skipPostResolution":Z
    if-eqz v10, :cond_18a

    .line 532
    invoke-virtual {v11, v10, v6, v7, v13}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 533
    .local v9, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v9, :cond_185

    .line 538
    const-wide/32 v0, 0x800000

    and-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a3

    move v0, v8

    goto :goto_a5

    :cond_a3
    move/from16 v0, v18

    :goto_a5
    move/from16 v21, v0

    .line 540
    .local v21, "matchInstantApp":Z
    const-wide/32 v0, 0x1000000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b1

    move v0, v8

    goto :goto_b3

    :cond_b1
    move/from16 v0, v18

    :goto_b3
    move/from16 v22, v0

    .line 542
    .local v22, "matchVisibleToInstantAppOnly":Z
    const-wide/32 v0, 0x2000000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bf

    move v0, v8

    goto :goto_c1

    :cond_bf
    move/from16 v0, v18

    :goto_c1
    move/from16 v23, v0

    .line 544
    .local v23, "matchExplicitlyVisibleOnly":Z
    if-eqz v14, :cond_c7

    move v0, v8

    goto :goto_c9

    :cond_c7
    move/from16 v0, v18

    :goto_c9
    move/from16 v24, v0

    .line 546
    .local v24, "isCallerInstantApp":Z
    nop

    .line 547
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 548
    .local v25, "isTargetSameInstantApp":Z
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_de

    move v0, v8

    goto :goto_e0

    :cond_de
    move/from16 v0, v18

    :goto_e0
    move/from16 v26, v0

    .line 551
    .local v26, "isTargetInstantApp":Z
    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_eb

    move v0, v8

    goto :goto_ed

    :cond_eb
    move/from16 v0, v18

    :goto_ed
    move/from16 v27, v0

    .line 553
    .local v27, "isTargetVisibleToInstantApp":Z
    if-eqz v27, :cond_fa

    iget v0, v9, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-nez v0, :cond_fa

    move v0, v8

    goto :goto_fc

    :cond_fa
    move/from16 v0, v18

    :goto_fc
    move/from16 v28, v0

    .line 557
    .local v28, "isTargetExplicitlyVisibleToInstantApp":Z
    if-eqz v27, :cond_108

    if-eqz v23, :cond_105

    if-nez v28, :cond_105

    goto :goto_108

    :cond_105
    move/from16 v0, v18

    goto :goto_109

    :cond_108
    :goto_108
    move v0, v8

    :goto_109
    move/from16 v29, v0

    .line 561
    .local v29, "isTargetHiddenFromInstantApp":Z
    if-nez v25, :cond_11b

    if-nez v21, :cond_113

    if-nez v24, :cond_113

    if-nez v26, :cond_119

    :cond_113
    if-eqz v22, :cond_11b

    if-eqz v24, :cond_11b

    if-eqz v29, :cond_11b

    :cond_119
    move v0, v8

    goto :goto_11d

    :cond_11b
    move/from16 v0, v18

    :goto_11d
    move/from16 v30, v0

    .line 566
    .local v30, "blockInstantResolution":Z
    if-eqz p9, :cond_12d

    iget-boolean v0, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v0, :cond_12d

    .line 568
    invoke-virtual {v11, v15, v12}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_12d

    move v0, v8

    goto :goto_12f

    :cond_12d
    move/from16 v0, v18

    :goto_12f
    move/from16 v31, v0

    .line 569
    .local v31, "resolveForStartNonExported":Z
    if-eqz p9, :cond_135

    if-eqz v31, :cond_14c

    :cond_135
    if-nez v26, :cond_14c

    if-nez v24, :cond_14c

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 574
    const/16 v1, 0x3e8

    invoke-virtual {v11, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 573
    invoke-virtual {v11, v0, v12, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_14c

    move/from16 v18, v8

    goto :goto_14d

    :cond_14c
    nop

    .line 576
    .local v18, "blockNormalResolution":Z
    :goto_14d
    if-nez v30, :cond_182

    if-nez v18, :cond_182

    .line 577
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v5, v0

    .line 578
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 579
    invoke-static/range {p8 .. p8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v5, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v0

    .line 581
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 583
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 582
    move-object v2, v8

    move-object/from16 v4, v16

    move-object/from16 v19, v5

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v19, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v5, p2

    move-wide/from16 v32, v6

    .end local v6    # "flags":J
    .local v32, "flags":J
    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    move-object/from16 v19, v8

    goto :goto_187

    .line 576
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v32    # "flags":J
    .restart local v6    # "flags":J
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_182
    move-wide/from16 v32, v6

    .end local v6    # "flags":J
    .restart local v32    # "flags":J
    goto :goto_187

    .line 533
    .end local v18    # "blockNormalResolution":Z
    .end local v21    # "matchInstantApp":Z
    .end local v22    # "matchVisibleToInstantAppOnly":Z
    .end local v23    # "matchExplicitlyVisibleOnly":Z
    .end local v24    # "isCallerInstantApp":Z
    .end local v25    # "isTargetSameInstantApp":Z
    .end local v26    # "isTargetInstantApp":Z
    .end local v27    # "isTargetVisibleToInstantApp":Z
    .end local v28    # "isTargetExplicitlyVisibleToInstantApp":Z
    .end local v29    # "isTargetHiddenFromInstantApp":Z
    .end local v30    # "blockInstantResolution":Z
    .end local v31    # "resolveForStartNonExported":Z
    .end local v32    # "flags":J
    .restart local v6    # "flags":J
    :cond_185
    move-wide/from16 v32, v6

    .line 587
    .end local v6    # "flags":J
    .end local v9    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v32    # "flags":J
    :goto_187
    move-object/from16 v18, v10

    goto :goto_1e0

    .line 588
    .end local v32    # "flags":J
    .restart local v6    # "flags":J
    :cond_18a
    move-wide/from16 v32, v6

    .line 589
    .end local v6    # "flags":J
    .restart local v32    # "flags":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-wide/from16 v3, v32

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move-object v9, v15

    move-object/from16 v18, v10

    .end local v10    # "comp":Landroid/content/ComponentName;
    .local v18, "comp":Landroid/content/ComponentName;
    move-object v10, v14

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    .line 592
    .local v9, "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v0, :cond_1af

    .line 593
    const/16 v20, 0x1

    .line 594
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    move-object/from16 v19, v0

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_1e0

    .line 596
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1af
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v0, :cond_1d1

    .line 597
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 598
    .local v10, "callingPkgName":Ljava/lang/String;
    invoke-virtual {v11, v10, v13}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v21

    .line 599
    .local v21, "isRequesterInstantApp":Z
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, v32

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 603
    .end local v10    # "callingPkgName":Ljava/lang/String;
    .end local v21    # "isRequesterInstantApp":Z
    :cond_1d1
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_1dc

    .line 604
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 606
    :cond_1dc
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v19, v0

    .line 610
    .end local v9    # "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    :goto_1e0
    if-eqz v17, :cond_1f6

    .line 612
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 613
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 612
    move-object/from16 v2, v19

    move-object/from16 v4, v17

    move-object/from16 v5, p2

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    .line 617
    :cond_1f6
    if-eqz v20, :cond_1fb

    move-object/from16 v0, v19

    goto :goto_20e

    :cond_1fb
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    move/from16 v3, p10

    move/from16 v4, p7

    move/from16 v5, p9

    move/from16 v6, p8

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    :goto_20e
    return-object v0
.end method

.method public queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;
    .registers 35
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "filterCallingUid"    # I
    .param p6, "userId"    # I
    .param p7, "resolveForStart"    # Z
    .param p8, "allowDynamicSplits"    # Z
    .param p9, "pkgName"    # Ljava/lang/String;
    .param p10, "instantAppPkgName"    # Ljava/lang/String;

    .line 748
    move-object/from16 v15, p0

    move/from16 v13, p6

    move-object/from16 v12, p9

    const/4 v11, 0x0

    .line 749
    .local v11, "sortResult":Z
    const/4 v8, 0x0

    .line 750
    .local v8, "addInstant":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 752
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 753
    .local v16, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    if-nez v12, :cond_ab

    .line 754
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    invoke-virtual {v0, v15, v10, v9, v13}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 763
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_44

    const-wide/32 v0, 0x20000000

    and-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    .line 765
    const-wide/32 v0, -0x402001

    and-long v0, p3, v0

    move-wide/from16 v17, v0

    .end local p3    # "flags":J
    .local v0, "flags":J
    goto :goto_46

    .line 768
    .end local v0    # "flags":J
    .restart local p3    # "flags":J
    :cond_44
    move-wide/from16 v17, p3

    .end local p3    # "flags":J
    .local v17, "flags":J
    :goto_46
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, v17

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0, v13}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_60

    .line 754
    .end local v17    # "flags":J
    .restart local p3    # "flags":J
    :cond_5e
    move-wide/from16 v17, p3

    .line 771
    .end local p3    # "flags":J
    .restart local v17    # "flags":J
    :goto_60
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, p6

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v19

    .line 774
    .end local v8    # "addInstant":Z
    .local v19, "addInstant":Z
    invoke-direct {v15, v14}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v20

    .line 781
    .local v20, "hasNonNegativePriorityResult":Z
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 783
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v8, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 781
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-object/from16 v7, p9

    move-object/from16 v21, v8

    move/from16 v8, v20

    move/from16 v9, p7

    move-object/from16 v10, v21

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 784
    .end local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v0, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v1

    if-nez v1, :cond_a0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a1

    :cond_a0
    const/4 v11, 0x1

    .line 785
    .end local v20    # "hasNonNegativePriorityResult":Z
    :cond_a1
    move-object/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v19

    move-wide/from16 v18, v17

    goto/16 :goto_12f

    .line 786
    .end local v0    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v17    # "flags":J
    .end local v19    # "addInstant":Z
    .restart local v8    # "addInstant":Z
    .restart local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .restart local p3    # "flags":J
    :cond_ab
    nop

    .line 787
    const/16 v0, 0x3e8

    invoke-virtual {v15, v12, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 789
    .local v10, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_e7

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_e7

    if-nez p7, :cond_c5

    .line 790
    move/from16 v9, p5

    invoke-virtual {v15, v10, v9, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_e9

    goto :goto_c7

    .line 789
    :cond_c5
    move/from16 v9, p5

    .line 791
    :goto_c7
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 792
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    .line 791
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0, v13}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e9

    .line 789
    :cond_e7
    move/from16 v9, p5

    .line 795
    :cond_e9
    :goto_e9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_100

    .line 798
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v8

    move/from16 v17, v8

    goto :goto_102

    .line 795
    :cond_100
    move/from16 v17, v8

    .line 806
    .end local v8    # "addInstant":Z
    .local v17, "addInstant":Z
    :goto_102
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    const/4 v8, 0x0

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 808
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 806
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-wide/from16 v5, p3

    move-object/from16 v18, v7

    move-object/from16 v7, p9

    move/from16 v9, p7

    move-object/from16 v19, v10

    .end local v10    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v19, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object/from16 v10, v18

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move-wide/from16 v18, p3

    move-object/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v17

    .line 817
    .end local v11    # "sortResult":Z
    .end local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v17    # "addInstant":Z
    .end local v19    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "flags":J
    .local v18, "flags":J
    .local v20, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v21, "sortResult":Z
    .local v22, "addInstant":Z
    :goto_12f
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 821
    invoke-direct {v15, v13}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v1

    move-object/from16 v23, v14

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v14, v1

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 822
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    move-object/from16 v17, v2

    invoke-direct {v2, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 818
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p10

    move-object/from16 v5, p9

    move/from16 v6, p8

    move-wide/from16 v7, v18

    move/from16 v9, p6

    move/from16 v10, p5

    move/from16 v11, p7

    move-object/from16 v12, v23

    move-object/from16 v13, v20

    move/from16 v15, v22

    move/from16 v16, v21

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->combineFilterAndCreateQueryActivitiesResponse(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJIIZLjava/util/List;Ljava/util/List;ZZZLjava/util/function/Function;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v0

    .line 817
    return-object v0
.end method

.method public final queryIntentServicesInternal(Landroid/content/Intent;Ljava/lang/String;JIIZ)Ljava/util/List;
    .registers 35
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "userId"    # I
    .param p6, "callingUid"    # I
    .param p7, "includeInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "JIIZ)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 641
    move-object/from16 v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 642
    :cond_13
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent receivers"

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 647
    invoke-virtual {v8, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 648
    .local v11, "instantAppPkgName":Ljava/lang/String;
    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v12

    .line 650
    .end local p3    # "flags":J
    .local v12, "flags":J
    const/4 v0, 0x0

    .line 651
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 652
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_4d

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 654
    move-object/from16 v0, p1

    .line 655
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 656
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v15, v0

    move-object v7, v1

    move-object v14, v2

    goto :goto_51

    .line 659
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_4d
    move-object/from16 v14, p1

    move-object v15, v0

    move-object v7, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "comp":Landroid/content/ComponentName;
    .local v14, "intent":Landroid/content/Intent;
    .local v15, "originalIntent":Landroid/content/Intent;
    :goto_51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 660
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_107

    .line 661
    invoke-virtual {v8, v7, v12, v13, v9}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v6

    .line 662
    .local v6, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_102

    .line 667
    const-wide/32 v0, 0x800000

    and-long/2addr v0, v12

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6b

    move v0, v4

    goto :goto_6c

    :cond_6b
    move v0, v1

    :goto_6c
    move/from16 v17, v0

    .line 669
    .local v17, "matchInstantApp":Z
    const-wide/32 v18, 0x1000000

    and-long v18, v12, v18

    cmp-long v0, v18, v2

    if-eqz v0, :cond_79

    move v0, v4

    goto :goto_7a

    :cond_79
    move v0, v1

    :goto_7a
    move/from16 v18, v0

    .line 671
    .local v18, "matchVisibleToInstantAppOnly":Z
    if-eqz v11, :cond_80

    move v0, v4

    goto :goto_81

    :cond_80
    move v0, v1

    :goto_81
    move/from16 v19, v0

    .line 673
    .local v19, "isCallerInstantApp":Z
    nop

    .line 674
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 675
    .local v20, "isTargetSameInstantApp":Z
    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_96

    move v0, v4

    goto :goto_97

    :cond_96
    move v0, v1

    :goto_97
    move/from16 v21, v0

    .line 678
    .local v21, "isTargetInstantApp":Z
    iget v0, v6, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v0, v2

    if-nez v0, :cond_a2

    move v0, v4

    goto :goto_a3

    :cond_a2
    move v0, v1

    :goto_a3
    move/from16 v22, v0

    .line 680
    .local v22, "isTargetHiddenFromInstantApp":Z
    if-nez v20, :cond_b5

    if-nez v17, :cond_ad

    if-nez v19, :cond_ad

    if-nez v21, :cond_b3

    :cond_ad
    if-eqz v18, :cond_b5

    if-eqz v19, :cond_b5

    if-eqz v22, :cond_b5

    :cond_b3
    move v0, v4

    goto :goto_b6

    :cond_b5
    move v0, v1

    :goto_b6
    move/from16 v23, v0

    .line 686
    .local v23, "blockInstantResolution":Z
    if-nez v21, :cond_ce

    if-nez v19, :cond_ce

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 688
    const/16 v2, 0x3e8

    invoke-virtual {v8, v0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 687
    invoke-virtual {v8, v0, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_ce

    move v1, v4

    goto :goto_cf

    :cond_ce
    nop

    :goto_cf
    move/from16 v24, v1

    .line 690
    .local v24, "blockNormalResolution":Z
    if-nez v23, :cond_ff

    if-nez v24, :cond_ff

    .line 691
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v5, v0

    .line 692
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 694
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 696
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 695
    move-object v2, v4

    move-object/from16 v16, v4

    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object v4, v14

    move-object/from16 v25, v5

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v25, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v5, p2

    move-object/from16 v26, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .local v26, "si":Landroid/content/pm/ServiceInfo;
    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_104

    .line 690
    .end local v25    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_ff
    move-object/from16 v26, v6

    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v26    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_104

    .line 662
    .end local v17    # "matchInstantApp":Z
    .end local v18    # "matchVisibleToInstantAppOnly":Z
    .end local v19    # "isCallerInstantApp":Z
    .end local v20    # "isTargetSameInstantApp":Z
    .end local v21    # "isTargetInstantApp":Z
    .end local v22    # "isTargetHiddenFromInstantApp":Z
    .end local v23    # "blockInstantResolution":Z
    .end local v24    # "blockNormalResolution":Z
    .end local v26    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v6    # "si":Landroid/content/pm/ServiceInfo;
    :cond_102
    move-object/from16 v26, v6

    .line 700
    .end local v6    # "si":Landroid/content/pm/ServiceInfo;
    :goto_104
    move-object/from16 v17, v7

    goto :goto_118

    .line 701
    :cond_107
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-wide v3, v12

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v17, v7

    .end local v7    # "comp":Landroid/content/ComponentName;
    .local v17, "comp":Landroid/content/ComponentName;
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 705
    :goto_118
    if-eqz v15, :cond_12d

    .line 707
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 708
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    const/4 v3, 0x0

    .line 707
    move-object/from16 v2, v16

    move-object v4, v15

    move-object/from16 v5, p2

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyEnforceIntentFilterMatching(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/resolution/ComponentResolverApi;Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;I)V

    .line 712
    :cond_12d
    return-object v16
.end method

.method protected queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;
    .registers 22
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

    .line 719
    move-object v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 720
    .local v12, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_27

    .line 721
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 723
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_22

    .line 724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 726
    :cond_22
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 729
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_27
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 730
    .local v13, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v13, :cond_50

    .line 731
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 732
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 731
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 734
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_4b

    .line 735
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 737
    :cond_4b
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 740
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySyncProviders(ZLjava/util/List;Ljava/util/List;)V
    .registers 16
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

    .line 4828
    .local p2, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4829
    return-void

    .line 4831
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4832
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 4833
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 4834
    .local v8, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v5, p1

    move v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4835
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    .local v9, "i":I
    :goto_2b
    if-ltz v9, :cond_5d

    .line 4836
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/pm/ProviderInfo;

    .line 4837
    .local v10, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 4838
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4840
    .local v4, "component":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, v11

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v1

    if-nez v1, :cond_54

    .line 4842
    goto :goto_5a

    .line 4844
    :cond_54
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4845
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4835
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v10    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_5a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2b

    .line 4847
    .end local v9    # "i":I
    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    .line 4848
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4850
    :cond_66
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 4851
    invoke-interface {p3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4853
    :cond_6f
    return-void
.end method

.method protected resolveComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 4753
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4754
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 4755
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 4757
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    const/4 v2, 0x0

    .line 4758
    .local v2, "checkedGrants":Z
    if-eqz v0, :cond_31

    .line 4760
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq p4, v3, :cond_31

    .line 4761
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4762
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4763
    .local v3, "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    nop

    .line 4764
    const/4 v4, 0x1

    invoke-interface {v3, p5, v0, p4, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v2

    .line 4767
    .end local v3    # "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    :cond_31
    if-nez v2, :cond_62

    .line 4768
    const/4 v3, 0x1

    .line 4770
    .local v3, "enforceCrossUser":Z
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 4771
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    .line 4773
    .local v4, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 4774
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_55

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_55

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p4, :cond_55

    .line 4776
    const/4 v3, 0x0

    .line 4780
    .end local v4    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_55
    if-eqz v3, :cond_62

    .line 4781
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "resolveContentProvider"

    move-object v4, p0

    move v5, p5

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4786
    .end local v3    # "enforceCrossUser":Z
    :cond_62
    if-nez v0, :cond_65

    .line 4787
    return-object v1

    .line 4789
    :cond_65
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4791
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {v3, v0, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v4

    if-nez v4, :cond_72

    .line 4792
    return-object v1

    .line 4794
    :cond_72
    new-instance v7, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4796
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, v3

    move v6, p5

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 4797
    return-object v1

    .line 4799
    :cond_87
    return-object v0
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1869
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1870
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1872
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1943
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

    .line 2564
    const/4 v0, 0x1

    .line 2565
    .local v0, "filterApp":Z
    nop

    .line 2566
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 2567
    .local v1, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_c
    if-ltz v2, :cond_25

    if-eqz v0, :cond_25

    .line 2568
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v6, p2

    move v9, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2567
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 2571
    .end local v2    # "index":I
    :cond_25
    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 8
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    if-eqz p1, :cond_kaorios_ps_null
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v7
    if-eqz v7, :cond_kaorios_ps_null
    invoke-static {p2, v7, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v7
    if-eqz v7, :cond_kaorios_ps_null
    const/4 v7, 0x1
    return v7
    :cond_kaorios_ps_null

    .line 2555
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .registers 13
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I

    .line 2546
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z

    .line 2473
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move/from16 v9, p5

    invoke-static/range {p2 .. p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2474
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    .line 2476
    .local v0, "clientAppUid":I
    if-eqz v7, :cond_20

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_20

    .line 2477
    return v1

    .line 2481
    .end local v0    # "clientAppUid":I
    :cond_20
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2482
    move/from16 v0, p2

    invoke-direct {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v0

    move v10, v0

    .end local p2    # "callingUid":I
    .local v0, "callingUid":I
    goto :goto_31

    .line 2481
    .end local v0    # "callingUid":I
    .restart local p2    # "callingUid":I
    :cond_2e
    move/from16 v0, p2

    move v10, v0

    .line 2484
    .end local p2    # "callingUid":I
    .local v10, "callingUid":I
    :goto_31
    invoke-virtual {v6, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 2485
    .local v11, "instantAppPkgName":Ljava/lang/String;
    const/4 v0, 0x1

    if-eqz v11, :cond_3a

    move v2, v0

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    move v12, v2

    .line 2489
    .local v12, "callerIsInstantApp":Z
    if-eqz v7, :cond_dc

    if-eqz p6, :cond_5a

    .line 2491
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2492
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isHiddenUntilInstalled()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 2493
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_5a

    move/from16 v13, p4

    goto/16 :goto_de

    .line 2499
    :cond_5a
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2500
    return v1

    .line 2502
    :cond_65
    if-eqz v12, :cond_9d

    .line 2504
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2505
    return v0

    .line 2509
    :cond_72
    if-eqz v8, :cond_91

    .line 2510
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2511
    invoke-virtual {v2, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;

    .line 2512
    .local v2, "instrumentation":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    if-eqz v2, :cond_89

    .line 2513
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v10}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 2514
    return v1

    .line 2516
    :cond_89
    move/from16 v13, p4

    invoke-virtual {v6, v8, v13}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2519
    .end local v2    # "instrumentation":Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
    :cond_91
    move/from16 v13, p4

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageInternal;->isVisibleToInstantApps()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2521
    :cond_9d
    move/from16 v13, p4

    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 2523
    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2524
    return v1

    .line 2527
    :cond_b0
    if-eqz v8, :cond_b3

    .line 2528
    return v0

    .line 2532
    :cond_b3
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2533
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 2532
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2535
    :cond_c3
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    .line 2536
    .local v14, "appId":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v15

    .line 2537
    .local v15, "callingPs":Lcom/android/server/pm/SettingBase;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v15

    move-object/from16 v4, p1

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    return v0

    .line 2489
    .end local v14    # "appId":I
    .end local v15    # "callingPs":Lcom/android/server/pm/SettingBase;
    :cond_dc
    move/from16 v13, p4

    .line 2496
    :goto_de
    if-nez v12, :cond_e8

    if-nez p6, :cond_e8

    invoke-static {v10}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_e9

    :cond_e8
    move v1, v0

    :cond_e9
    return v1
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 10
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2588
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2589
    return v1

    .line 2591
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2592
    return v2

    .line 2594
    :cond_10
    nop

    .line 2595
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 2596
    .local v0, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 2597
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2598
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

    .line 2596
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2599
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_36
    :goto_36
    return v2

    .line 2603
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

    .line 2579
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    return v0
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2685
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2692
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 14
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2699
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    move v7, v0

    .line 2701
    .local v7, "isCallerSystemUser":Z
    const-wide/32 v3, 0x400000

    and-long v5, p1, v3

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_30

    .line 2704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    const-string v6, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    .line 2704
    move-object v0, p0

    move v1, v2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_44

    .line 2707
    :cond_30
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_44

    if-eqz v7, :cond_44

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2709
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2716
    or-long v0, p1, v3

    .end local p1    # "flags":J
    .local v0, "flags":J
    goto :goto_45

    .line 2718
    .end local v0    # "flags":J
    .restart local p1    # "flags":J
    :cond_44
    :goto_44
    move-wide v0, p1

    .end local p1    # "flags":J
    .restart local v0    # "flags":J
    :goto_45
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method public final updateFlagsForResolve(JIIZZ)J
    .registers 15
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2736
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForResolve(JIIZZZ)J
    .registers 13
    .param p1, "flags"    # J
    .param p3, "userId"    # I
    .param p4, "callingUid"    # I
    .param p5, "wantInstantApps"    # Z
    .param p6, "onlyExposedExplicitly"    # Z
    .param p7, "isImplicitImageCaptureIntentAndNotSetByDpc"    # Z

    .line 2745
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    .line 2746
    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2748
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    if-eqz v0, :cond_21

    .line 2750
    if-eqz p6, :cond_1b

    .line 2751
    const-wide/32 v3, 0x2000000

    or-long/2addr p1, v3

    .line 2753
    :cond_1b
    const-wide/32 v3, 0x1000000

    or-long/2addr p1, v3

    .line 2754
    or-long/2addr p1, v1

    goto :goto_46

    .line 2756
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

    .line 2757
    .local v0, "wantMatchInstant":Z
    :goto_2e
    if-nez p5, :cond_3b

    if-eqz v0, :cond_39

    .line 2758
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

    .line 2759
    .local v1, "allowMatchInstant":Z
    :goto_3c
    const-wide/32 v2, -0x3000001

    and-long/2addr p1, v2

    .line 2761
    if-nez v1, :cond_46

    .line 2762
    const-wide/32 v2, -0x800001

    and-long/2addr p1, v2

    .line 2765
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

    .line 488
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 489
    return-object p0
.end method
