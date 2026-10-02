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
            "Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;",
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

    .line 376
    new-instance v0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService$Snapshot;I)V
    .registers 8
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$Snapshot;
    .param p2, "version"    # I

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 442
    iput p2, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    .line 443
    new-instance v0, Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->settings:Lcom/android/server/pm/Settings;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;-><init>(Lcom/android/server/pm/ComputerEngine;Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 444
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->isolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 445
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->packages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 446
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->sharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 447
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instrumentation:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 448
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->webInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    .line 449
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    .line 450
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->resolveActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    .line 451
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 452
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    .line 453
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->instantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 454
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->androidApplication:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalAndroidApplication:Landroid/content/pm/ApplicationInfo;

    .line 455
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 456
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->frozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 457
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->componentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 459
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->appPredictionServicePackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 463
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 464
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 465
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 466
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 467
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 468
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    .line 469
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    .line 470
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 471
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 472
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 473
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 474
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 475
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/DefaultAppProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 480
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerService$Snapshot;->service:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 481
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

    .line 4692
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .line 4693
    .local v0, "numMatch":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_21

    .line 4694
    aget-object v2, p3, v1

    .line 4695
    .local v2, "permission":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default:0"

    invoke-interface {v3, v4, v2, v5, p7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1b

    .line 4698
    const/4 v3, 0x1

    aput-boolean v3, p4, v1

    .line 4699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 4701
    :cond_1b
    const/4 v3, 0x0

    aput-boolean v3, p4, v1

    .line 4693
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4704
    .end local v1    # "i":I
    :cond_21
    if-nez v0, :cond_24

    .line 4705
    return-void

    .line 4707
    :cond_24
    invoke-virtual {p0, p2, p5, p6, p7}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4711
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_54

    .line 4712
    const-wide/16 v2, 0x1000

    and-long/2addr v2, p5

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_51

    .line 4713
    array-length v2, p3

    if-ne v0, v2, :cond_39

    .line 4714
    iput-object p3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    goto :goto_51

    .line 4716
    :cond_39
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 4717
    const/4 v0, 0x0

    .line 4718
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3f
    array-length v3, p3

    if-ge v2, v3, :cond_51

    .line 4719
    aget-boolean v3, p4, v2

    if-eqz v3, :cond_4e

    .line 4720
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v4, p3, v2

    aput-object v4, v3, v0

    .line 4721
    add-int/lit8 v0, v0, 0x1

    .line 4718
    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 4726
    .end local v2    # "i":I
    :cond_51
    :goto_51
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4728
    :cond_54
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

    .line 1314
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_be

    .line 1315
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1316
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-nez p2, :cond_32

    .line 1317
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1318
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 1319
    .local v2, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1320
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1321
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

    .line 1323
    goto/16 :goto_ba

    .line 1326
    .end local v2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v3    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_32
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    .line 1328
    .local v2, "isEphemeralApp":Z
    if-eqz v2, :cond_ab

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1329
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    if-eqz v3, :cond_ba

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 1330
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ba

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-string v4, "PackageManager"

    if-nez v3, :cond_71

    .line 1333
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_6d

    .line 1334
    const-string v3, "No installer - not adding it to the ResolveInfolist"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_6d
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1338
    goto :goto_ba

    .line 1342
    :cond_71
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_7a

    .line 1343
    const-string v3, "Adding ephemeral installer to the ResolveInfo list"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_7a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1347
    .local v3, "installerInfo":Landroid/content/pm/ResolveInfo;
    new-instance v10, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v7, v4, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    iput-object v10, v3, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1353
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1355
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1356
    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1357
    .end local v3    # "installerInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_ba

    .line 1361
    :cond_ab
    if-nez v2, :cond_b7

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v3, v3, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_b7

    .line 1364
    goto :goto_ba

    .line 1366
    :cond_b7
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1314
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "isEphemeralApp":Z
    :cond_ba
    :goto_ba
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 1368
    .end local v0    # "i":I
    :cond_be
    return-object p1
.end method

.method private areWebInstantAppsDisabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 2075
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mWebInstantAppsDisabled:Lcom/android/server/utils/WatchedSparseBooleanArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method private bestDomainVerificationStatus(II)I
    .registers 4
    .param p1, "status1"    # I
    .param p2, "status2"    # I

    .line 2724
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 2725
    return p2

    .line 2727
    :cond_4
    if-ne p2, v0, :cond_7

    .line 2728
    return p1

    .line 2730
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

    .line 2930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2931
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 2932
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2933
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2937
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2939
    if-nez p3, :cond_37

    .line 2940
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2942
    if-eqz p4, :cond_37

    .line 2943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    const-string v1, "android.permission.INTERACT_ACROSS_PROFILES"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    :cond_37
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2948
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2949
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
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

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3003
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_f

    .line 3004
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3005
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    :cond_f
    const-string v1, "UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3009
    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3010
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    if-nez p3, :cond_2d

    .line 3012
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    :cond_2d
    const-string v1, " to access user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3017
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkIsolatedOwnerHasPermission(IZ)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "requireFullPermission"    # Z

    .line 2283
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v0

    .line 2284
    .local v0, "ownerUid":I
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p2, :cond_d

    .line 2285
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 2287
    :cond_d
    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 2288
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

    .line 2287
    :goto_1f
    return v1
.end method

.method private checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I
    .registers 8
    .param p1, "p1SigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p2, "p2SigningDetails"    # Landroid/content/pm/SigningDetails;

    .line 4347
    const/4 v0, 0x1

    if-nez p1, :cond_8

    .line 4348
    if-nez p2, :cond_6

    .line 4349
    goto :goto_7

    .line 4350
    :cond_6
    const/4 v0, -0x1

    .line 4348
    :goto_7
    return v0

    .line 4352
    :cond_8
    if-nez p2, :cond_c

    .line 4353
    const/4 v0, -0x2

    return v0

    .line 4355
    :cond_c
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v1

    .line 4356
    .local v1, "result":I
    if-nez v1, :cond_13

    .line 4357
    return v1

    .line 4362
    :cond_13
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4363
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 4364
    :cond_1f
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    .line 4365
    new-array v2, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    goto :goto_35

    .line 4366
    :cond_31
    invoke-virtual {p1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    :goto_35
    nop

    .line 4367
    .local v2, "p1Signatures":[Landroid/content/pm/Signature;
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->hasPastSigningCertificates()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 4368
    new-array v0, v0, [Landroid/content/pm/Signature;

    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getPastSigningCertificates()[Landroid/content/pm/Signature;

    move-result-object v4

    aget-object v4, v4, v3

    aput-object v4, v0, v3

    goto :goto_4b

    .line 4369
    :cond_47
    invoke-virtual {p2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    :goto_4b
    nop

    .line 4370
    .local v0, "p2Signatures":[Landroid/content/pm/Signature;
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatureArrays([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result v1

    .line 4372
    .end local v0    # "p2Signatures":[Landroid/content/pm/Signature;
    .end local v2    # "p1Signatures":[Landroid/content/pm/Signature;
    :cond_50
    return v1
.end method

.method private dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3281
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3282
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3283
    .local v1, "activePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3284
    .local v2, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3285
    .local v3, "factoryActivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3286
    .local v4, "factoryInactivePackages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/pm/ComputerEngine;->generateApexPackageInfo(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 3288
    const-string v5, "Active APEX packages:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3289
    const/4 v5, 0x1

    invoke-static {v1, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3290
    const-string v6, "Inactive APEX packages:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3291
    const/4 v6, 0x0

    invoke-static {v2, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3292
    const-string v7, "Factory APEX packages:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3293
    invoke-static {v3, v5, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3294
    invoke-static {v4, v6, p2, v0}, Lcom/android/server/pm/ComputerEngine;->dumpApexPackageStates(Ljava/util/List;ZLjava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3295
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

    .line 3307
    .local p0, "packageStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3308
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3309
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_b
    if-ge v0, v1, :cond_b5

    .line 3310
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3311
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 3312
    .local v3, "pkg":Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    if-eqz p2, :cond_25

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 3313
    goto/16 :goto_b1

    .line 3315
    :cond_25
    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3317
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

    .line 3318
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

    .line 3319
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

    .line 3320
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

    .line 3321
    const-string v4, "ApplicationInfo: "

    invoke-virtual {p3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3322
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3324
    invoke-static {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    new-instance v5, Landroid/util/PrintWriterPrinter;

    invoke-direct {v5, p3}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 3325
    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3326
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3327
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3309
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "pkg":Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    .line 3329
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_b5
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3330
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3331
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

    .line 1378
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez p2, :cond_3

    .line 1379
    return-object p1

    .line 1382
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 1383
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1384
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1d

    .line 1385
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1382
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1388
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

    .line 2175
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2177
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2178
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2179
    return v2

    .line 2182
    :cond_19
    nop

    .line 2183
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2184
    return v2

    .line 2175
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2189
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

    .line 2193
    :cond_3c
    nop

    .line 2194
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getSdkLibVersionMajor()I

    move-result v3

    int-to-long v5, v3

    .line 2193
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2195
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_55

    .line 2196
    return v2

    .line 2199
    :cond_55
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2200
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2201
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_67

    .line 2202
    return v7

    .line 2205
    :cond_67
    array-length v8, v6

    move v9, v2

    :goto_69
    if-ge v9, v8, :cond_a5

    aget-object v10, v6, v9

    .line 2206
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 2207
    return v2

    .line 2209
    :cond_78
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2210
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a2

    .line 2211
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2212
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2211
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2213
    .local v12, "index":I
    if-gez v12, :cond_8f

    .line 2214
    goto :goto_a2

    .line 2216
    :cond_8f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2217
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a2

    .line 2218
    return v2

    .line 2205
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a2
    :goto_a2
    add-int/lit8 v9, v9, 0x1

    goto :goto_69

    .line 2222
    :cond_a5
    return v7

    .line 2189
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a6
    move/from16 v5, p3

    .line 2190
    :goto_a8
    return v2
.end method

.method private filterStaticSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z
    .registers 23
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "flags"    # J

    .line 2119
    move-object/from16 v0, p0

    const-wide/32 v1, 0x4000000

    and-long v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 2121
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2122
    .local v1, "appId":I
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2123
    return v2

    .line 2126
    :cond_19
    nop

    .line 2127
    const-string v3, "android.permission.INSTALL_PACKAGES"

    move/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_27

    .line 2128
    return v2

    .line 2119
    .end local v1    # "appId":I
    :cond_25
    move/from16 v4, p2

    .line 2133
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

    .line 2137
    :cond_3c
    nop

    .line 2138
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v1

    .line 2139
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getStaticSharedLibraryVersion()J

    move-result-wide v5

    .line 2137
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v1

    .line 2140
    .local v1, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v1, :cond_54

    .line 2141
    return v2

    .line 2144
    :cond_54
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    move/from16 v5, p3

    invoke-static {v5, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2145
    .local v3, "resolvedUid":I
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 2146
    .local v6, "uidPackageNames":[Ljava/lang/String;
    const/4 v7, 0x1

    if-nez v6, :cond_66

    .line 2147
    return v7

    .line 2150
    :cond_66
    array-length v8, v6

    move v9, v2

    :goto_68
    if-ge v9, v8, :cond_a4

    aget-object v10, v6, v9

    .line 2151
    .local v10, "uidPackageName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 2152
    return v2

    .line 2154
    :cond_77
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 2155
    .local v11, "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v11, :cond_a1

    .line 2156
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v12

    .line 2157
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2156
    invoke-static {v12, v13}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    .line 2158
    .local v12, "index":I
    if-gez v12, :cond_8e

    .line 2159
    goto :goto_a1

    .line 2161
    :cond_8e
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    aget-wide v13, v13, v12

    .line 2162
    invoke-virtual {v1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-nez v13, :cond_a1

    .line 2163
    return v2

    .line 2150
    .end local v10    # "uidPackageName":Ljava/lang/String;
    .end local v11    # "uidPs":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "index":I
    :cond_a1
    :goto_a1
    add-int/lit8 v9, v9, 0x1

    goto :goto_68

    .line 2167
    :cond_a4
    return v7

    .line 2133
    .end local v1    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v3    # "resolvedUid":I
    .end local v6    # "uidPackageNames":[Ljava/lang/String;
    :cond_a5
    move/from16 v5, p3

    .line 2134
    :goto_a7
    return v2
.end method

.method private findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterCallingUid"    # I
    .param p3, "userId"    # I

    .line 862
    move-object/from16 v0, p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSTALL_FAILURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .local v1, "failureActivityIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, -0x1

    move-object v3, p0

    move-object v4, v1

    move/from16 v10, p2

    move/from16 v12, p3

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JJIIIZZ)Ljava/util/List;

    move-result-object v2

    .line 869
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 870
    .local v3, "numResults":I
    if-lez v3, :cond_41

    .line 871
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v3, :cond_41

    .line 872
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 873
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    if-eqz v6, :cond_37

    .line 874
    nop

    .line 871
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 876
    .restart local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_37
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v0, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 879
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_41
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

    .line 3263
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

    .line 3264
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3265
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 3266
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v3, :cond_29

    .line 3267
    goto :goto_a

    .line 3269
    :cond_29
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3270
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->isUpdatedSystemApp()Z

    move-result v4

    if-nez v4, :cond_36

    .line 3271
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 3273
    :cond_36
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 3274
    .local v4, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3275
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3277
    .end local v1    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_42
    goto :goto_a

    .line 3278
    :cond_43
    return-void
.end method

.method private getBaseSdkSandboxUid()I
    .registers 2

    .line 5920
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

    .line 5186
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5189
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 5190
    sget-object v1, Lcom/android/server/pm/InstallSource;->EMPTY:Lcom/android/server/pm/InstallSource;

    return-object v1

    .line 5193
    :cond_f
    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1d

    .line 5198
    :cond_18
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    return-object v1

    .line 5195
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIsolatedOwner(I)I
    .registers 6
    .param p1, "isolatedUid"    # I

    .line 1914
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mIsolatedOwners:Lcom/android/server/utils/WatchedSparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->get(II)I

    move-result v0

    .line 1915
    .local v0, "ownerUid":I
    if-eq v0, v1, :cond_a

    .line 1919
    return v0

    .line 1916
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

    .line 2021
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2022
    .local v0, "isCallerInstantApp":Z
    :goto_9
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2023
    .local v1, "userId":I
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2024
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 2026
    :cond_17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 2027
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

    .line 4324
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4325
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 4326
    .local v1, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 4327
    return-object v2

    .line 4329
    :cond_e
    instance-of v3, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_21

    .line 4330
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4331
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4332
    return-object v2

    .line 4334
    :cond_1c
    iget-object v2, v3, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 4335
    .end local v3    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_21
    instance-of v3, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_34

    .line 4336
    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 4337
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v3, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4338
    return-object v2

    .line 4340
    :cond_2f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    return-object v2

    .line 4342
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_34
    return-object v2
.end method

.method private getUserStateOrDefaultForUser(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 5083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5084
    .local v6, "callingUid":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "when asking about packages for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5086
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5087
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_33

    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_33

    .line 5090
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    return-object v1

    .line 5088
    :cond_33
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hasCrossUserPermission(IIIZZ)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "callingUserId"    # I
    .param p3, "userId"    # I
    .param p4, "requireFullPermission"    # Z
    .param p5, "requirePermissionWhenSameUser"    # Z

    .line 2235
    const/4 v0, 0x1

    if-nez p5, :cond_6

    if-ne p3, p2, :cond_6

    .line 2236
    return v0

    .line 2238
    :cond_6
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2239
    return v0

    .line 2243
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/miui/xspace/XSpaceManagerStub;->canCrossUser(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2244
    return v0

    .line 2247
    :cond_18
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p4, :cond_21

    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    goto :goto_33

    .line 2249
    :cond_21
    invoke-direct {p0, v1}, Lcom/android/server/pm/ComputerEngine;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2251
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

    :goto_33
    nop

    .line 2252
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_47

    .line 2253
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 2254
    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/ComputerEngine;->checkIsolatedOwnerHasPermission(IZ)Z

    move-result v1

    return v1

    .line 2257
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

    .line 2265
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

    .line 2269
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

    .line 2274
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

    .line 2310
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 2311
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

    .line 3557
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3558
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3559
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 3557
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

    .line 2415
    .local p2, "resolvedActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2416
    return v1

    .line 2418
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-nez v0, :cond_d

    .line 2419
    return v1

    .line 2421
    :cond_d
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2422
    return v1

    .line 2424
    :cond_14
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1e

    .line 2425
    return v1

    .line 2427
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_27

    .line 2428
    return v1

    .line 2430
    :cond_27
    if-nez p4, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2431
    return v1

    .line 2433
    :cond_30
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_47

    .line 2436
    if-eqz p2, :cond_3e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_46

    .line 2437
    :cond_3e
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_63

    .line 2438
    :cond_46
    return v1

    .line 2441
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

    .line 2443
    :cond_5c
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2444
    return v1

    .line 2449
    :cond_63
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowedBody(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v0

    return v0

    .line 2442
    :cond_68
    :goto_68
    return v1
.end method

.method private isKnownIsolatedComputeApp(I)Z
    .registers 7
    .param p1, "uid"    # I

    .line 5925
    invoke-static {p1}, Landroid/os/Process;->isIsolatedUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5926
    return v1

    .line 5928
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5929
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 5931
    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;->getUid()I

    move-result v0

    if-ne p1, v0, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    .line 5932
    .local v0, "isHotword":Z
    :goto_20
    if-eqz v0, :cond_23

    .line 5933
    return v2

    .line 5935
    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerInternal;

    .line 5936
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerInternal;

    .line 5937
    .local v3, "onDeviceIntelligenceManagerInternal":Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerInternal;
    if-eqz v3, :cond_37

    .line 5938
    invoke-interface {v3}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerInternal;->getInferenceServiceUid()I

    move-result v4

    if-ne p1, v4, :cond_37

    move v1, v2

    goto :goto_38

    :cond_37
    nop

    .line 5937
    :goto_38
    return v1
.end method

.method private isPersistentPreferredActivitySetByDpm(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2497
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 2498
    invoke-virtual {v0, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v0

    .line 2500
    .local v0, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_21

    .line 2501
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

    .line 2504
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    nop

    .line 2505
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

    .line 2506
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    iget-boolean v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mIsSetByDpm:Z

    if-eqz v4, :cond_3c

    .line 2507
    return v7

    .line 2509
    .end local v3    # "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    :cond_3c
    goto :goto_2b

    .line 2510
    :cond_3d
    return v8
.end method

.method private isRecentsAccessingChildProfiles(II)Z
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "targetUserId"    # I

    .line 2514
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2515
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2516
    return v1

    .line 2518
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2520
    .local v2, "token":J
    :try_start_16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2521
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_2f

    if-eq v4, v0, :cond_25

    .line 2522
    nop

    .line 2526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2522
    return v1

    .line 2524
    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v1
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2f

    .line 2526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2524
    return v1

    .line 2526
    .end local v0    # "callingUserId":I
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2527
    throw v0
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 5
    .param p0, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p1, "p2"    # Landroid/content/pm/ProviderInfo;

    .line 377
    iget v0, p0, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 378
    .local v0, "v1":I
    iget v1, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 379
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

    .line 1395
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

    .line 1396
    .local v21, "alreadyResolvedLocally":Z
    const/4 v9, 0x0

    .line 1397
    .local v9, "localInstantApp":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 1398
    .local v10, "blockResolution":Z
    const-string v6, "PackageManager"

    if-nez v21, :cond_b5

    .line 1399
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

    .line 1407
    .local v6, "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_3e
    if-ltz v13, :cond_b6

    .line 1408
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1409
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1410
    .local v3, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1411
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v4, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1412
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

    .line 1414
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_89

    .line 1415
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

    .line 1418
    :cond_89
    move-object/from16 v9, v20

    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1420
    :cond_8e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_a8

    .line 1421
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

    .line 1424
    :cond_a8
    const/4 v10, 0x1

    .line 1426
    move-object v0, v9

    move v1, v10

    goto :goto_b8

    .line 1411
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

    .line 1407
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v13, v13, -0x1

    const/4 v11, 0x1

    goto :goto_3e

    .line 1398
    .end local v6    # "instantApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "i":I
    :cond_b5
    move-object v14, v6

    .line 1431
    :cond_b6
    move-object v0, v9

    move v1, v10

    .end local v9    # "localInstantApp":Landroid/content/pm/ResolveInfo;
    .end local v10    # "blockResolution":Z
    .local v0, "localInstantApp":Landroid/content/pm/ResolveInfo;
    .local v1, "blockResolution":Z
    :goto_b8
    const/4 v2, 0x0

    .line 1432
    .local v2, "auxiliaryResponse":Landroid/content/pm/AuxiliaryResolveInfo;
    if-nez v1, :cond_116

    .line 1433
    if-nez v0, :cond_102

    .line 1435
    const-string/jumbo v3, "resolveEphemeral"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1436
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1437
    .local v3, "token":Ljava/lang/String;
    nop

    .line 1438
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->parseDigest(Landroid/content/Intent;)Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    move-result-object v6

    .line 1439
    .local v6, "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    new-instance v22, Landroid/content/pm/InstantAppRequest;

    .line 1444
    invoke-virtual {v6}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v19

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v9, v22

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v24, v14

    move-object/from16 v14, v20

    move/from16 v15, p8

    move/from16 v16, p6

    move-object/from16 v17, v23

    move/from16 v18, p7

    move-object/from16 v20, v3

    invoke-direct/range {v9 .. v20}, Landroid/content/pm/InstantAppRequest;-><init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V

    .line 1445
    .local v9, "requestObject":Landroid/content/pm/InstantAppRequest;
    iget-object v10, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    iget-object v11, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    invoke-static {v7, v10, v11, v9}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseOne(Lcom/android/server/pm/Computer;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v2

    .line 1447
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1448
    .end local v3    # "token":Ljava/lang/String;
    .end local v6    # "digest":Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    .end local v9    # "requestObject":Landroid/content/pm/InstantAppRequest;
    goto :goto_118

    .line 1454
    :cond_102
    move-object/from16 v24, v14

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1455
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v12, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object v9, v4

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V

    move-object v2, v4

    goto :goto_118

    .line 1432
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_116
    move-object/from16 v24, v14

    .line 1460
    :goto_118
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_121

    if-nez v2, :cond_121

    .line 1461
    return-object v8

    .line 1463
    :cond_121
    iget-object v3, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 1465
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_1a7

    move/from16 v4, p6

    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 1466
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1465
    const-wide/16 v9, 0x0

    invoke-static {v5, v6, v9, v10}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z

    move-result v5

    if-nez v5, :cond_142

    goto :goto_1a9

    .line 1469
    :cond_142
    new-instance v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v5, v6}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1470
    .local v5, "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    nop

    .line 1471
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1472
    invoke-interface {v3, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 1470
    invoke-static {v6, v9, v10, v11, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1473
    const v6, 0x588000

    iput v6, v5, Landroid/content/pm/ResolveInfo;->match:I

    .line 1476
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    iput-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1477
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_173

    .line 1478
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    :cond_173
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_191

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_191

    .line 1481
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1482
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1481
    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 1484
    :cond_191
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1486
    iput-boolean v6, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1487
    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    .line 1488
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_1a3

    .line 1489
    const-string v6, "Adding ephemeral installer to the ResolveInfo list"

    move-object/from16 v9, v24

    invoke-static {v9, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_1a3
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1493
    return-object v8

    .line 1465
    .end local v5    # "ephemeralInstaller":Landroid/content/pm/ResolveInfo;
    :cond_1a7
    move/from16 v4, p6

    .line 1467
    :goto_1a9
    return-object v8
.end method

.method private resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J
    .param p4, "callingUid"    # I

    .line 1932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1933
    .local v1, "normalizedPackageName":Ljava/lang/String;
    if-eqz v1, :cond_e

    move-object v3, v1

    goto :goto_f

    :cond_e
    move-object v3, v2

    :goto_f
    move-object v2, v3

    .line 1936
    .end local p1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    .line 1937
    invoke-interface {v3, v2}, Lcom/android/server/pm/SharedLibrariesRead;->getStaticLibraryInfos(Ljava/lang/String;)Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object v3

    .line 1938
    .local v3, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz v3, :cond_c1

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v4

    if-gtz v4, :cond_22

    move/from16 v8, p4

    goto/16 :goto_c3

    .line 1943
    :cond_22
    const/4 v4, 0x0

    .line 1944
    .local v4, "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 1945
    .local v5, "callingAppId":I
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v6

    if-nez v6, :cond_67

    .line 1946
    new-instance v6, Landroid/util/LongSparseLongArray;

    invoke-direct {v6}, Landroid/util/LongSparseLongArray;-><init>()V

    move-object v4, v6

    .line 1947
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1948
    .local v7, "libName":Ljava/lang/String;
    move/from16 v8, p4

    invoke-direct {v0, v8, v8}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v9

    .line 1949
    .local v9, "uidPackages":[Ljava/lang/String;
    if-eqz v9, :cond_69

    .line 1950
    array-length v10, v9

    :goto_47
    if-ge v6, v10, :cond_69

    aget-object v11, v9, v6

    .line 1951
    .local v11, "uidPackage":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v12, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1952
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v13

    .line 1953
    .local v13, "libIdx":I
    if-ltz v13, :cond_64

    .line 1954
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v14

    aget-wide v14, v14, v13

    .line 1955
    .local v14, "libVersion":J
    invoke-virtual {v4, v14, v15, v14, v15}, Landroid/util/LongSparseLongArray;->append(JJ)V

    .line 1950
    .end local v11    # "uidPackage":Ljava/lang/String;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "libIdx":I
    .end local v14    # "libVersion":J
    :cond_64
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 1945
    .end local v7    # "libName":Ljava/lang/String;
    .end local v9    # "uidPackages":[Ljava/lang/String;
    :cond_67
    move/from16 v8, p4

    .line 1962
    :cond_69
    if-eqz v4, :cond_72

    invoke-virtual {v4}, Landroid/util/LongSparseLongArray;->size()I

    move-result v6

    if-gtz v6, :cond_72

    .line 1963
    return-object v2

    .line 1967
    :cond_72
    const/4 v6, 0x0

    .line 1968
    .local v6, "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v7

    .line 1969
    .local v7, "versionCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_78
    if-ge v9, v7, :cond_b9

    .line 1970
    invoke-virtual {v3, v9}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/SharedLibraryInfo;

    .line 1971
    .local v10, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-eqz v4, :cond_8d

    .line 1972
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v11

    .line 1971
    invoke-virtual {v4, v11, v12}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v11

    if-gez v11, :cond_8d

    .line 1973
    goto :goto_b6

    .line 1975
    :cond_8d
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v11

    .line 1976
    .local v11, "libVersionCode":J
    const-wide/16 v13, -0x1

    cmp-long v13, p2, v13

    if-eqz v13, :cond_a4

    .line 1977
    cmp-long v13, v11, p2

    if-nez v13, :cond_b6

    .line 1978
    invoke-virtual {v10}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 1980
    :cond_a4
    if-nez v6, :cond_a8

    .line 1981
    move-object v6, v10

    goto :goto_b6

    .line 1982
    :cond_a8
    nop

    .line 1983
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v13

    cmp-long v13, v11, v13

    if-lez v13, :cond_b6

    .line 1984
    move-object v6, v10

    .line 1969
    .end local v10    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v11    # "libVersionCode":J
    :cond_b6
    :goto_b6
    add-int/lit8 v9, v9, 0x1

    goto :goto_78

    .line 1988
    .end local v9    # "i":I
    :cond_b9
    if-eqz v6, :cond_c0

    .line 1989
    invoke-virtual {v6}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 1992
    :cond_c0
    return-object v2

    .line 1938
    .end local v4    # "versionsCallerCanSee":Landroid/util/LongSparseLongArray;
    .end local v5    # "callingAppId":I
    .end local v6    # "highestVersion":Landroid/content/pm/SharedLibraryInfo;
    .end local v7    # "versionCount":I
    :cond_c1
    move/from16 v8, p4

    .line 1939
    :goto_c3
    return-object v2
.end method

.method private safeMode()Z
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSafeMode()Z

    move-result v0

    return v0
.end method

.method private updateFlags(JI)J
    .registers 10
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2771
    const-wide/32 v0, 0xc0000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    goto :goto_1e

    .line 2777
    :cond_c
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v2

    .line 2779
    .local v2, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 2780
    or-long/2addr p1, v0

    goto :goto_1e

    .line 2782
    :cond_1a
    const-wide/32 v0, 0x80000

    or-long/2addr p1, v0

    .line 2787
    .end local v2    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    :goto_1e
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2788
    const-wide/32 v0, 0x402000

    or-long/2addr p1, v0

    .line 2791
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

    .line 3848
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3849
    .local v9, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "activitySupportsIntentAsUser"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3851
    move-object/from16 v10, p1

    invoke-virtual {v8, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1e

    .line 3853
    return v11

    .line 3855
    :cond_1e
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v8}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v12

    .line 3856
    .local v12, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const/4 v13, 0x0

    if-nez v12, :cond_28

    .line 3857
    return v13

    .line 3859
    :cond_28
    invoke-virtual/range {p2 .. p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 3860
    .local v14, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v14, :cond_33

    .line 3861
    return v13

    .line 3863
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

    .line 3865
    return v13

    .line 3867
    :cond_44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 3868
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v1}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v15

    .line 3869
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v18

    .line 3870
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v20

    .line 3869
    const-string v21, "PackageManager"

    move-object/from16 v17, p4

    invoke-virtual/range {v15 .. v21}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_78

    .line 3871
    return v11

    .line 3867
    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 3874
    .end local v0    # "i":I
    :cond_7b
    return v13
.end method

.method protected androidApplication()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 438
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

    .line 1227
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

    .line 1228
    .local v12, "blockInstant":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    move v13, v0

    .local v13, "i":I
    :goto_1f
    if-ltz v13, :cond_15a

    .line 1229
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1231
    .local v14, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v14, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    if-eqz v0, :cond_37

    if-eqz v12, :cond_37

    .line 1232
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1233
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1236
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

    .line 1239
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->instantAppInstallerActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_6d

    .line 1242
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_64

    .line 1243
    const-string v0, "No installer - not adding it to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :cond_64
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1246
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1248
    :cond_6d
    if-eqz v12, :cond_84

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x3e8

    invoke-virtual {v6, v0, v9, v2}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1250
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1251
    move/from16 v15, p4

    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1255
    :cond_84
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_8d

    .line 1256
    const-string v0, "Adding installer to the ResolveInfo list"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_8d
    new-instance v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo;-><init>(Landroid/content/pm/ResolveInfo;)V

    .line 1260
    .local v0, "installerInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v15, p4

    invoke-direct {v6, v1, v15, v9}, Lcom/android/server/pm/ComputerEngine;->findInstallFailureActivity(Ljava/lang/String;II)Landroid/content/ComponentName;

    move-result-object v1

    .line 1262
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

    .line 1268
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1273
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 1274
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveLabelResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1275
    invoke-virtual {v14}, Landroid/content/pm/ResolveInfo;->resolveIconResId()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1276
    iput-boolean v11, v0, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1277
    invoke-interface {v7, v13, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1278
    const/16 v17, 0x0

    goto/16 :goto_156

    .line 1239
    .end local v0    # "installerInfo":Landroid/content/pm/ResolveInfo;
    .end local v1    # "installFailureActivity":Landroid/content/ComponentName;
    :cond_e1
    move/from16 v15, p4

    goto :goto_e6

    .line 1236
    :cond_e4
    move/from16 v15, p4

    .line 1280
    :goto_e6
    if-nez v8, :cond_115

    .line 1282
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1283
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v10

    .line 1284
    .local v10, "callingSetting":Lcom/android/server/pm/SettingBase;
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1285
    const/4 v5, 0x0

    invoke-virtual {v6, v0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1286
    .local v16, "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez p5, :cond_112

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    .line 1287
    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object v3, v10

    move-object/from16 v4, v16

    move/from16 v17, v5

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    if-nez v0, :cond_111

    .line 1289
    goto :goto_156

    .line 1291
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_111
    goto :goto_153

    .line 1286
    .restart local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_112
    move/from16 v17, v5

    goto :goto_156

    .line 1291
    .end local v10    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local v16    # "resolvedSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_115
    const/16 v17, 0x0

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 1293
    goto :goto_156

    .line 1294
    :cond_122
    if-eqz p5, :cond_13f

    .line 1295
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_132

    .line 1296
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_13f

    .line 1297
    :cond_132
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1298
    invoke-virtual/range {p7 .. p7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_13f

    .line 1300
    goto :goto_156

    .line 1301
    :cond_13f
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-eqz v0, :cond_153

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1303
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_153

    .line 1305
    goto :goto_156

    .line 1307
    :cond_153
    :goto_153
    invoke-interface {v7, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1228
    .end local v14    # "info":Landroid/content/pm/ResolveInfo;
    :goto_156
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1f

    :cond_15a
    move/from16 v15, p4

    .line 1309
    .end local v13    # "i":I
    return-object v7
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .line 5567
    nop

    .line 5568
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5569
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
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "sourceUserId"    # I
    .param p4, "targetUserId"    # I

    .line 5647
    move-object v7, p0

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5649
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->canReachTo(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1c

    .line 5651
    return v8

    .line 5653
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_61

    .line 5655
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 5656
    .local v10, "callingUid":I
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Lcom/android/server/pm/ComputerEngine;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    .line 5657
    .local v12, "parent":Landroid/content/pm/UserInfo;
    if-nez v12, :cond_30

    .line 5658
    return v9

    .line 5660
    :cond_30
    iget v6, v12, Landroid/content/pm/UserInfo;->id:I

    iget v2, v12, Landroid/content/pm/UserInfo;->id:I

    .line 5662
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v13

    .line 5660
    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move v3, v6

    move v4, v10

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v0

    .line 5664
    .local v0, "flags":J
    const-wide/32 v2, 0x10000

    or-long v13, v0, v2

    .line 5665
    .end local v0    # "flags":J
    .local v13, "flags":J
    iget v6, v12, Landroid/content/pm/UserInfo;->id:I

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v3, v13

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->getCrossProfileDomainPreferredLpr(Landroid/content/Intent;Ljava/lang/String;JII)Lcom/android/server/pm/CrossProfileDomainInfo;

    move-result-object v0

    .line 5667
    .local v0, "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    if-eqz v0, :cond_5f

    goto :goto_60

    :cond_5f
    move v8, v9

    :goto_60
    return v8

    .line 5669
    .end local v0    # "xpDomainInfo":Lcom/android/server/pm/CrossProfileDomainInfo;
    .end local v10    # "callingUid":I
    .end local v12    # "parent":Landroid/content/pm/UserInfo;
    .end local v13    # "flags":J
    :cond_61
    move/from16 v11, p3

    return v9
.end method

.method public canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z
    .registers 14
    .param p1, "sourcePackageName"    # Ljava/lang/String;
    .param p2, "targetPackageNames"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 5606
    array-length v0, p2

    .line 5607
    .local v0, "targetSize":I
    new-array v1, v0, [Z

    .line 5608
    .local v1, "results":[Z
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 5609
    return-object v1

    .line 5611
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5612
    .local v2, "callingUid":I
    const/4 v7, 0x0

    const-string v8, "can package query"

    const/4 v6, 0x0

    move-object v3, p0

    move v4, v2

    move v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5615
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5616
    .local v3, "sourceSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-array v4, v0, [Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5618
    .local v4, "targetSettings":[Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2d

    .line 5619
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

    .line 5621
    .local v7, "throwException":Z
    :goto_2e
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2f
    if-nez v7, :cond_4f

    if-ge v8, v0, :cond_4f

    .line 5622
    aget-object v9, p2, v8

    invoke-virtual {p0, v9}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v9

    aput-object v9, v4, v8

    .line 5624
    aget-object v9, v4, v8

    if-eqz v9, :cond_4a

    aget-object v9, v4, v8

    .line 5625
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

    .line 5621
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f

    .line 5628
    .end local v8    # "i":I
    :cond_4f
    if-nez v7, :cond_69

    .line 5634
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v5

    invoke-static {p3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 5635
    .local v5, "sourcePackageUid":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_5a
    if-ge v8, v0, :cond_68

    .line 5636
    aget-object v9, v4, v8

    invoke-virtual {p0, v9, v5, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    xor-int/2addr v9, v6

    aput-boolean v9, v1, v8

    .line 5635
    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    .line 5638
    .end local v8    # "i":I
    :cond_68
    return-object v1

    .line 5629
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

    .line 5630
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

    .line 5511
    const/4 v0, 0x1

    if-eqz p1, :cond_82

    if-nez p2, :cond_7

    goto/16 :goto_82

    .line 5514
    :cond_7
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5515
    .local v1, "setting":Ljava/lang/Object;
    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 5516
    return v2

    .line 5519
    :cond_15
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5520
    .local v3, "userId":I
    nop

    .line 5521
    const-wide/16 v4, 0x0

    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageUid(Ljava/lang/String;JI)I

    move-result v4

    .line 5520
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 5523
    .local v4, "targetAppId":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_43

    .line 5524
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 5525
    .local v2, "targetSetting":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_3a

    .line 5526
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5529
    :cond_3a
    move-object v5, v2

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v5, p1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v5

    xor-int/2addr v0, v5

    return v0

    .line 5536
    .end local v2    # "targetSetting":Ljava/lang/Object;
    :cond_43
    instance-of v5, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_5b

    .line 5537
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 5538
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

    .line 5540
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_5b
    move-object v5, v1

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 5542
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5543
    .local v5, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .local v6, "i":I
    :goto_67
    if-ltz v6, :cond_81

    .line 5544
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 5545
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v7, :cond_7e

    iget-object v8, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    invoke-interface {v8, v7, p2}, Lcom/android/server/pm/AppsFilterSnapshot;->canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 5546
    return v0

    .line 5543
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_7e
    add-int/lit8 v6, v6, -0x1

    goto :goto_67

    .line 5549
    .end local v6    # "i":I
    :cond_81
    return v2

    .line 5512
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

    .line 3987
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result v0

    .line 3988
    .local v0, "uid":I
    if-eq p2, v0, :cond_36

    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 3989
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

    .line 3992
    :cond_36
    :goto_36
    const/16 v1, 0x3e8

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 3993
    return v2

    .line 3995
    :cond_40
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3996
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v1, :cond_4b

    .line 3997
    return v2

    .line 3999
    :cond_4b
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_54

    .line 4000
    return v2

    .line 4002
    :cond_54
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 4004
    const-string v3, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    .line 4007
    .local v3, "message":Ljava/lang/String;
    const-string v4, "Need to declare android.permission.REQUEST_INSTALL_PACKAGES to call this api"

    if-nez p4, :cond_6c

    .line 4010
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    return v2

    .line 4008
    :cond_6c
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4015
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

    .line 2093
    const/16 v0, 0x2710

    const/4 v1, 0x1

    if-ge p1, v0, :cond_6

    .line 2094
    return v1

    .line 2096
    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 2098
    return v1

    .line 2100
    :cond_11
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIEW_INSTANT_APPS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    .line 2102
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getDefaultHomeActivity(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2103
    .local v0, "homeComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_2d

    .line 2104
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2105
    return v1

    .line 2108
    :cond_2d
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mAppPredictionServicePackage:Ljava/lang/String;

    .line 2109
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 2108
    :goto_3b
    return v1

    .line 2111
    .end local v0    # "homeComponent":Landroid/content/ComponentName;
    :cond_3c
    return v2
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .param p1, "names"    # [Ljava/lang/String;

    .line 3775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3776
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3777
    return-object p1

    .line 3779
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3780
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3781
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3782
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_5b

    .line 3783
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3784
    .local v6, "cur":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3785
    .local v7, "translateName":Z
    if-eqz v6, :cond_50

    .line 3786
    aget-object v8, p1, v4

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 3787
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v9, 0x0

    if-eqz v8, :cond_39

    .line 3788
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_39

    move v10, v5

    goto :goto_3a

    :cond_39
    move v10, v9

    .line 3789
    .local v10, "targetIsInstantApp":Z
    :goto_3a
    if-eqz v10, :cond_4e

    if-nez v3, :cond_4e

    iget-object v11, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3792
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    .line 3791
    invoke-virtual {v11, v2, v12, v13}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v11

    if-eqz v11, :cond_4f

    :cond_4e
    move v9, v5

    :cond_4f
    move v7, v9

    .line 3794
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

    .line 3782
    .end local v6    # "cur":Ljava/lang/String;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3796
    .end local v4    # "i":I
    :cond_5b
    return-object v1
.end method

.method public checkPackageFrozen(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5979
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5980
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

    .line 5982
    :cond_2b
    return-void
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 11
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4269
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4270
    .local v6, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "checkSignatures"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4273
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4274
    .local v0, "p1":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4276
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

    .line 4278
    .local v3, "ps1":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_2b
    if-nez v1, :cond_2e

    goto :goto_36

    :cond_2e
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 4279
    .local v2, "ps2":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_36
    const/4 v4, -0x4

    if-eqz v0, :cond_5b

    if-eqz v3, :cond_5b

    if-eqz v1, :cond_5b

    if-nez v2, :cond_40

    goto :goto_5b

    .line 4282
    :cond_40
    invoke-virtual {p0, v3, v6, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 4283
    invoke-virtual {p0, v2, v6, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_4d

    goto :goto_5a

    .line 4286
    :cond_4d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4284
    :cond_5a
    :goto_5a
    return v4

    .line 4280
    :cond_5b
    :goto_5b
    return v4
.end method

.method public final checkUidPermission(Ljava/lang/String;I)I
    .registers 5
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2736
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    .line 2737
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2736
    invoke-interface {v0, v1, p1}, Lmiui/enterprise/IApplicationHelper;->isGrantSystemPermission([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2738
    return v1

    .line 2741
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

    .line 4291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4292
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4293
    .local v1, "callingUserId":I
    nop

    .line 4294
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4295
    .local v2, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4296
    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v3

    .line 4297
    .local v3, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v2, :cond_1c

    if-nez v3, :cond_17

    goto :goto_1c

    .line 4300
    :cond_17
    invoke-direct {p0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v4

    return v4

    .line 4298
    :cond_1c
    :goto_1c
    const/4 v4, -0x4

    return v4
.end method

.method public checkUidSignaturesForAllUsers(II)I
    .registers 12
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .line 4305
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4306
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4307
    .local v7, "userId1":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4308
    .local v8, "userId2":I
    const/4 v4, 0x0

    const-string v5, "checkUidSignaturesForAllUsers"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4310
    const-string v5, "checkUidSignaturesForAllUsers"

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4312
    nop

    .line 4313
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v0

    .line 4314
    .local v0, "p1SigningDetails":Landroid/content/pm/SigningDetails;
    nop

    .line 4315
    invoke-direct {p0, p2, v6, v8}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v1

    .line 4316
    .local v1, "p2SigningDetails":Landroid/content/pm/SigningDetails;
    if-eqz v0, :cond_30

    if-nez v1, :cond_2b

    goto :goto_30

    .line 4319
    :cond_2b
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->checkSignaturesInternal(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)I

    move-result v2

    return v2

    .line 4317
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

    .line 1814
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1815
    .local v0, "forwardingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1818
    .local v1, "ident":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p3}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_56

    .line 1820
    .local v3, "targetIsProfile":Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1821
    nop

    .line 1823
    if-eqz v3, :cond_1c

    .line 1824
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .local v4, "className":Ljava/lang/String;
    goto :goto_1e

    .line 1826
    .end local v4    # "className":Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 1828
    .restart local v4    # "className":Ljava/lang/String;
    :goto_1e
    new-instance v5, Landroid/content/ComponentName;

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->androidApplication()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    .local v5, "forwardingActivityComponentName":Landroid/content/ComponentName;
    nop

    .line 1831
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/pm/ComputerEngine;->getActivityInfoCrossProfile(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 1833
    .local v6, "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x1

    if-nez v3, :cond_37

    .line 1834
    iput p3, v6, Landroid/content/pm/ActivityInfo;->showUserIcon:I

    .line 1835
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 1837
    :cond_37
    iput-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1838
    const/4 v8, 0x0

    iput v8, v0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1839
    iput v8, v0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1840
    iput v8, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 1841
    iput-boolean v7, v0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1842
    new-instance v7, Landroid/content/IntentFilter;

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1843
    iput p3, v0, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 1844
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    iput-object v7, v0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 1845
    return-object v0

    .line 1820
    .end local v3    # "targetIsProfile":Z
    .end local v4    # "className":Ljava/lang/String;
    .end local v5    # "forwardingActivityComponentName":Landroid/content/ComponentName;
    .end local v6    # "forwardingActivityInfo":Landroid/content/pm/ActivityInfo;
    :catchall_56
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1821
    throw v3
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 14
    .param p1, "names"    # [Ljava/lang/String;

    .line 3750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3751
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3752
    return-object p1

    .line 3754
    :cond_b
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 3755
    .local v1, "out":[Ljava/lang/String;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3756
    .local v2, "callingUserId":I
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v3

    .line 3757
    .local v3, "canViewInstantApps":Z
    array-length v4, p1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_19
    if-ltz v4, :cond_59

    .line 3758
    aget-object v6, p1, v4

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3759
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v7, 0x0

    .line 3760
    .local v7, "translateName":Z
    if-eqz v6, :cond_4b

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getRealName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4b

    .line 3761
    invoke-interface {v6, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 3762
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v8

    .line 3763
    .local v8, "targetIsInstantApp":Z
    if-eqz v8, :cond_49

    if-nez v3, :cond_49

    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 3766
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 3765
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

    .line 3768
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

    .line 3757
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "translateName":Z
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 3770
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

    .line 3086
    const-string v0, "Failed writing: "

    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->getTargetPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3087
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3088
    .local v2, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isCheckIn()Z

    move-result v3

    .line 3091
    .local v3, "checkin":Z
    if-eqz v1, :cond_1b

    if-nez v2, :cond_1b

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 3092
    return-void

    .line 3095
    :cond_1b
    const/4 v4, 0x0

    const-string v5, "  "

    sparse-switch p1, :sswitch_data_224

    goto/16 :goto_223

    .line 3141
    :sswitch_23
    if-nez v2, :cond_26

    goto :goto_2e

    :cond_26
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2e
    move-object v7, v4

    .line 3142
    .local v7, "filteringAppId":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 3143
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v9

    new-instance v10, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/ComputerEngine;)V

    .line 3142
    move-object v6, p3

    move-object v8, p4

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/AppsFilterSnapshot;->dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 3145
    goto/16 :goto_223

    .line 3250
    .end local v7    # "filteringAppId":Ljava/lang/Integer;
    :sswitch_43
    if-eqz v1, :cond_4b

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->isApexPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_223

    .line 3251
    :cond_4b
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ApexManager;->dump(Ljava/io/PrintWriter;)V

    .line 3252
    invoke-direct {p0, p3, v1}, Lcom/android/server/pm/ComputerEngine;->dumpApex(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_223

    .line 3186
    :sswitch_55
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v0, p3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3187
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 3188
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3190
    :cond_63
    const-string v4, "Compiler stats:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3191
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3193
    if-eqz v2, :cond_72

    .line 3194
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .local v4, "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_7c

    .line 3196
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_72
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 3199
    .restart local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_7c
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3200
    .local v6, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    .line 3201
    .local v7, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v7, :cond_93

    .line 3202
    goto :goto_80

    .line 3204
    :cond_93
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 3205
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3208
    iget-object v9, p0, Lcom/android/server/pm/ComputerEngine;->mCompilerStats:Lcom/android/server/pm/CompilerStats;

    .line 3209
    invoke-virtual {v9, v8}, Lcom/android/server/pm/CompilerStats;->getPackageStats(Ljava/lang/String;)Lcom/android/server/pm/CompilerStats$PackageStats;

    move-result-object v9

    .line 3210
    .local v9, "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    if-nez v9, :cond_c4

    .line 3211
    const-string v10, "(No recorded stats)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c7

    .line 3213
    :cond_c4
    invoke-virtual {v9, v0}, Lcom/android/server/pm/CompilerStats$PackageStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3215
    :goto_c7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3216
    .end local v6    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "stats":Lcom/android/server/pm/CompilerStats$PackageStats;
    goto :goto_80

    .line 3217
    :cond_cb
    goto/16 :goto_223

    .line 3170
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v4    # "pkgSettings":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :sswitch_cd
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v0, p3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3171
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_db

    .line 3172
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3174
    :cond_db
    const-string v4, "Dexopt state:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3175
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3176
    invoke-static {v0, v1}, Lcom/android/server/pm/DexOptHelper;->dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 3178
    invoke-static {}, Lcom/android/server/pm/DexOptHelperStub;->get()Lcom/android/server/pm/DexOptHelperStub;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v1}, Lcom/android/server/pm/DexOptHelperStub;->dumpSingleDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3181
    goto/16 :goto_223

    .line 3228
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :sswitch_f2
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 3229
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3231
    :cond_fb
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const/16 v4, 0x78

    invoke-direct {v0, p3, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 3232
    .restart local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3233
    const-string v4, "Frozen packages:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3234
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3235
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_11b

    .line 3236
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_146

    .line 3238
    :cond_11b
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11c
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_146

    .line 3239
    const-string/jumbo v5, "package="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3240
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3241
    const-string v5, ", refCounts="

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3242
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3238
    add-int/lit8 v4, v4, 0x1

    goto :goto_11c

    .line 3245
    .end local v4    # "i":I
    :cond_146
    :goto_146
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3246
    goto/16 :goto_223

    .line 3150
    .end local v0    # "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :sswitch_14b
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3152
    .local v0, "writer":Landroid/util/IndentingPrintWriter;
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v4

    if-eqz v4, :cond_159

    .line 3153
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3155
    :cond_159
    const-string v4, "Domain verification status:"

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3156
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3158
    :try_start_161
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 3159
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3158
    invoke-interface {v4, p0, v0, v1, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->printState(Lcom/android/server/pm/Computer;Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_16b} :catch_16c

    .line 3163
    goto :goto_177

    .line 3160
    :catch_16c
    move-exception v4

    .line 3161
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Failure printing domain verification information"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3162
    const-string v6, "PackageManager"

    invoke-static {v6, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3164
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_177
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3165
    goto/16 :goto_223

    .line 3098
    .end local v0    # "writer":Landroid/util/IndentingPrintWriter;
    :sswitch_17c
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v0

    if-eqz v0, :cond_185

    .line 3099
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 3101
    :cond_185
    const-string v0, "Database versions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3102
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, p3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3103
    goto/16 :goto_223

    .line 3116
    :sswitch_196
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 3117
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3118
    .local v5, "fout":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3119
    .local v6, "str":Ljava/io/BufferedOutputStream;
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v7

    .line 3121
    .local v7, "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :try_start_1a7
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3122
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3123
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v4, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3125
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3126
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->isFullPreferred()Z

    move-result v8

    .line 3125
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 3127
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 3128
    invoke-interface {v7}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V
    :try_end_1ce
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a7 .. :try_end_1ce} :catch_1fb
    .catch Ljava/lang/IllegalStateException; {:try_start_1a7 .. :try_end_1ce} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1ce} :catch_1cf

    goto :goto_210

    .line 3133
    :catch_1cf
    move-exception v4

    .line 3134
    .local v4, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3136
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_223

    .line 3131
    :catch_1e5
    move-exception v4

    .line 3132
    .local v4, "e":Ljava/lang/IllegalStateException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/IllegalStateException;
    goto :goto_210

    .line 3129
    :catch_1fb
    move-exception v4

    .line 3130
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3135
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_210
    goto :goto_223

    .line 3111
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v6    # "str":Ljava/io/BufferedOutputStream;
    .end local v7    # "serializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :sswitch_211
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V

    .line 3112
    goto :goto_223

    .line 3221
    :sswitch_217
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3222
    goto :goto_223

    .line 3107
    :sswitch_21d
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p3, p4}, Lcom/android/server/pm/SharedLibrariesRead;->dump(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V

    .line 3108
    nop

    .line 3257
    :cond_223
    :goto_223
    return-void

    :sswitch_data_224
    .sparse-switch
        0x1 -> :sswitch_21d
        0x200 -> :sswitch_217
        0x1000 -> :sswitch_211
        0x2000 -> :sswitch_196
        0x8000 -> :sswitch_17c
        0x40000 -> :sswitch_14b
        0x80000 -> :sswitch_f2
        0x100000 -> :sswitch_cd
        0x200000 -> :sswitch_55
        0x2000000 -> :sswitch_43
        0x4000000 -> :sswitch_23
    .end sparse-switch
.end method

.method public dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 6007
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpKeySet(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V

    .line 6008
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

    .line 6001
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackages(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 6002
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6024
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6025
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

    .line 5994
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V

    .line 5995
    return-void
.end method

.method public dumpSharedLibrariesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6029
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1}, Lcom/android/server/pm/SharedLibrariesRead;->dumpProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6030
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

    .line 6014
    .local p3, "permissionNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsers(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V

    .line 6015
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 6019
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 6020
    return-void
.end method

.method public final enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "requireFullPermission"    # Z
    .param p4, "checkShell"    # Z
    .param p5, "message"    # Ljava/lang/String;

    .line 2898
    if-ltz p2, :cond_4a

    .line 2901
    if-eqz p4, :cond_10

    .line 2902
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2903
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2902
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2906
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2907
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

    .line 2909
    return-void

    .line 2911
    :cond_21
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/ComputerEngine;->isSameProfileGroup(II)Z

    move-result v1

    .line 2912
    .local v1, "isSameProfileGroup":Z
    if-eqz v1, :cond_3b

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 2917
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2912
    const-string v4, "android.permission.INTERACT_ACROSS_PROFILES"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5, p1, v3}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3b

    .line 2919
    return-void

    .line 2921
    :cond_3b
    invoke-static {p1, p2, p5, p3, v1}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserOrProfilePermissionMessage(IILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 2923
    .local v2, "errorMessage":Ljava/lang/String;
    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2899
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

    .line 2962
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2964
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

    .line 2980
    if-ltz p2, :cond_30

    .line 2983
    if-eqz p4, :cond_10

    .line 2984
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 2985
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 2984
    const-string/jumbo v1, "no_debugging_features"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Lcom/android/server/pm/UserManagerInternal;Ljava/lang/String;II)V

    .line 2988
    :cond_10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2989
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

    .line 2992
    return-void

    .line 2994
    :cond_21
    invoke-static {p1, p2, p6, p3}, Lcom/android/server/pm/ComputerEngine;->buildInvalidCrossUserPermissionMessage(IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2996
    .local v1, "errorMessage":Ljava/lang/String;
    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2981
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

    .line 3056
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 3058
    const/4 v0, 0x0

    if-ne p2, p1, :cond_b

    .line 3059
    return v0

    .line 3061
    :cond_b
    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v2

    .line 3063
    .local v2, "clientAppUid":I
    if-ne v2, p1, :cond_12

    .line 3064
    return v0

    .line 3067
    :cond_12
    return v1

    .line 3069
    .end local v2    # "clientAppUid":I
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3070
    .local v0, "userId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3071
    .local v2, "appId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v3

    .line 3072
    .local v3, "setting":Ljava/lang/Object;
    if-nez v3, :cond_24

    .line 3073
    return v1

    .line 3075
    :cond_24
    instance-of v4, v3, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v4, :cond_30

    .line 3076
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v1

    return v1

    .line 3078
    :cond_30
    instance-of v4, v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v4, :cond_3c

    .line 3079
    move-object v1, v3

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    return v1

    .line 3082
    :cond_3c
    return v1
.end method

.method public filterAppAccess(Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 3044
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3045
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

    .line 3050
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v7

    .line 3051
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

    .line 5804
    if-nez p1, :cond_b

    .line 5805
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 5808
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5810
    .local v0, "systemPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_65

    aget-object v4, p1, v3

    .line 5811
    .local v4, "pkgName":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 5812
    goto :goto_62

    .line 5815
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5816
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v6, "PackageManager"

    if-eqz v5, :cond_4b

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_2a

    goto :goto_4b

    .line 5821
    :cond_2a
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v7

    if-nez v7, :cond_47

    .line 5822
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

    .line 5823
    goto :goto_62

    .line 5826
    :cond_47
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 5817
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

    .line 5818
    nop

    .line 5810
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5829
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

    .line 2228
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

    .line 3582
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    .line 3583
    .local v8, "n":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 3584
    invoke-virtual {v0, v7}, Lcom/android/server/pm/ComputerEngine$Settings;->getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v9

    .line 3586
    .local v9, "ppir":Lcom/android/server/pm/PersistentPreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v10, "PackageManager"

    if-nez v0, :cond_16

    if-eqz p6, :cond_1b

    .line 3587
    :cond_16
    const-string v0, "Looking for persistent preferred activities..."

    invoke-static {v10, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    :cond_1b
    const/4 v11, 0x0

    if-eqz v9, :cond_3b

    .line 3590
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

    .line 3593
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    nop

    .line 3594
    .local v0, "pprefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersistentPreferredActivity;>;"
    if-eqz v0, :cond_122

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 3595
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3596
    .local v1, "m":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_11f

    .line 3597
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 3598
    .local v3, "ppa":Lcom/android/server/pm/PersistentPreferredActivity;
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v5, "  "

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-nez v4, :cond_5c

    if-eqz p6, :cond_93

    .line 3599
    :cond_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Checking PersistentPreferredActivity ds="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3600
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

    .line 3599
    invoke-static {v10, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3602
    new-instance v4, Landroid/util/LogPrinter;

    invoke-direct {v4, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PersistentPreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3604
    :cond_93
    iget-object v4, v3, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    const-wide/16 v15, 0x200

    or-long v11, p3, v15

    invoke-virtual {v6, v4, v11, v12, v7}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 3606
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v11, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v11, :cond_a3

    if-eqz p6, :cond_b8

    .line 3607
    :cond_a3
    const-string v11, "Found persistent preferred activity:"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3608
    if-eqz v4, :cond_b3

    .line 3609
    new-instance v11, Landroid/util/LogPrinter;

    invoke-direct {v11, v14, v10, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v4, v11, v5}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_b8

    .line 3611
    :cond_b3
    const-string v5, "  null"

    invoke-static {v10, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_b8
    :goto_b8
    if-nez v4, :cond_bd

    .line 3617
    move-object/from16 v11, p5

    goto :goto_11a

    .line 3619
    :cond_bd
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_be
    if-ge v5, v8, :cond_118

    .line 3620
    move-object/from16 v11, p5

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 3621
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3622
    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d9

    .line 3623
    goto :goto_e6

    .line 3625
    :cond_d9
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e9

    .line 3626
    nop

    .line 3619
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_e6
    add-int/lit8 v5, v5, 0x1

    goto :goto_be

    .line 3629
    .restart local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_e9
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v13, :cond_ef

    if-eqz p6, :cond_117

    .line 3630
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

    .line 3633
    :cond_117
    return-object v12

    .line 3619
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_118
    move-object/from16 v11, p5

    .line 3596
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

    .line 3594
    .end local v1    # "m":I
    .end local v2    # "i":I
    :cond_122
    move-object/from16 v11, p5

    .line 3637
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

    .line 3340
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move/from16 v11, p9

    new-instance v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;-><init>()V

    move-object v12, v0

    .line 3342
    .local v12, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    nop

    .line 3344
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p9

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v6

    .line 3342
    const/4 v5, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p9

    move/from16 v4, p11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v13

    .line 3346
    .end local p3    # "flags":J
    .local v13, "flags":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->updateIntentForResolve(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v15

    .line 3349
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

    .line 3353
    iget-object v0, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_41

    .line 3354
    return-object v12

    .line 3357
    :cond_41
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v6

    .line 3359
    .local v6, "pir":Lcom/android/server/pm/PreferredIntentResolver;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v7, "PackageManager"

    if-nez v0, :cond_4f

    if-eqz p8, :cond_54

    :cond_4f
    const-string v0, "Looking for preferred activities..."

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    :cond_54
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v6, :cond_7b

    .line 3361
    const-wide/32 v0, 0x10000

    and-long/2addr v0, v13

    const-wide/16 v16, 0x0

    cmp-long v0, v0, v16

    if-eqz v0, :cond_66

    move/from16 v16, v3

    goto :goto_68

    :cond_66
    move/from16 v16, v4

    :goto_68
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

    goto :goto_80

    .line 3364
    .end local p3    # "flags":J
    .restart local v13    # "flags":J
    :cond_7b
    move-wide/from16 p3, v13

    move v13, v3

    move v14, v4

    .end local v13    # "flags":J
    .restart local p3    # "flags":J
    const/4 v5, 0x0

    :goto_80
    move-object v0, v5

    .line 3365
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-eqz v0, :cond_430

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_430

    .line 3370
    const/4 v1, 0x0

    .line 3372
    .local v1, "match":I
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v2, :cond_90

    if-eqz p8, :cond_95

    .line 3373
    :cond_90
    const-string v2, "Figuring out best match..."

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3376
    :cond_95
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    .line 3377
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_9a
    if-ge v3, v2, :cond_da

    .line 3378
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 3379
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v5, :cond_a8

    if-eqz p8, :cond_d0

    .line 3380
    :cond_a8
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

    .line 3381
    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3380
    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    :cond_d0
    iget v5, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-le v5, v1, :cond_d6

    .line 3384
    iget v1, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 3377
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d6
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x1

    goto :goto_9a

    .line 3388
    .end local v3    # "j":I
    :cond_da
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_e0

    if-eqz p8, :cond_fa

    .line 3389
    :cond_e0
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

    .line 3391
    :cond_fa
    const/high16 v3, 0xfff0000

    and-int/2addr v1, v3

    .line 3392
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 3393
    .local v3, "m":I
    const/4 v4, 0x0

    move-wide/from16 v18, p3

    .end local p3    # "flags":J
    .local v4, "i":I
    .local v18, "flags":J
    :goto_104
    if-ge v4, v3, :cond_423

    .line 3394
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredActivity;

    .line 3395
    .local v5, "pa":Lcom/android/server/pm/PreferredActivity;
    sget-boolean v13, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v14, "  "

    move-object/from16 p1, v0

    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    if-nez v13, :cond_11a

    if-eqz p8, :cond_117

    goto :goto_11a

    :cond_117
    move/from16 v26, v3

    goto :goto_15a

    .line 3396
    :cond_11a
    :goto_11a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Checking PreferredActivity ds="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3397
    invoke-virtual {v5}, Lcom/android/server/pm/PreferredActivity;->countDataSchemes()I

    move-result v13

    if-lez v13, :cond_131

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lcom/android/server/pm/PreferredActivity;->getDataScheme(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_133

    :cond_131
    const-string v20, "<none>"

    :goto_133
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

    .line 3396
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    new-instance v0, Landroid/util/LogPrinter;

    move/from16 v26, v3

    const/4 v3, 0x2

    const/4 v13, 0x3

    .end local v3    # "m":I
    .local v26, "m":I
    invoke-direct {v0, v3, v7, v13}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v5, v0, v14}, Lcom/android/server/pm/PreferredActivity;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3401
    :goto_15a
    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v0, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eq v0, v1, :cond_185

    .line 3402
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_166

    if-eqz p8, :cond_198

    .line 3403
    :cond_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping bad match "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v3, v3, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 3404
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3403
    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    .line 3410
    :cond_185
    if-eqz p6, :cond_1a3

    iget-object v0, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v0, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-nez v0, :cond_1a3

    .line 3411
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_193

    if-eqz p8, :cond_198

    :cond_193
    const-string v0, "Skipping mAlways=false entry"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_198
    :goto_198
    move/from16 v27, v1

    move/from16 v28, v2

    move/from16 p3, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_416

    .line 3416
    .restart local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    :cond_1a3
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 3417
    const-wide/32 v20, 0x402000

    or-long v18, v18, v20

    .line 3420
    :cond_1b2
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

    .line 3424
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v3, :cond_1d3

    if-eqz p8, :cond_1d0

    goto :goto_1d3

    :cond_1d0
    move/from16 v27, v1

    goto :goto_1ee

    .line 3425
    :cond_1d3
    :goto_1d3
    const-string v3, "Found preferred activity:"

    invoke-static {v7, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    if-eqz v0, :cond_1e7

    .line 3427
    new-instance v3, Landroid/util/LogPrinter;

    move/from16 v27, v1

    const/4 v1, 0x2

    const/4 v4, 0x3

    .end local v1    # "match":I
    .local v27, "match":I
    invoke-direct {v3, v1, v7, v4}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v3, v14}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_1ee

    .line 3429
    .end local v27    # "match":I
    .restart local v1    # "match":I
    :cond_1e7
    move/from16 v27, v1

    .end local v1    # "match":I
    .restart local v27    # "match":I
    const-string v1, "  null"

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    :goto_1ee
    invoke-static {v15}, Lcom/android/server/pm/ComputerEngine;->isHomeIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    if-nez p12, :cond_1f8

    const/4 v4, 0x1

    goto :goto_1f9

    :cond_1f8
    const/4 v4, 0x0

    :goto_1f9
    move v1, v4

    .line 3434
    .local v1, "excludeSetupWizardHomeActivity":Z
    if-nez v1, :cond_200

    if-nez p10, :cond_200

    const/4 v4, 0x1

    goto :goto_201

    :cond_200
    const/4 v4, 0x0

    :goto_201
    move v3, v4

    .line 3436
    .local v3, "allowSetMutation":Z
    if-nez v0, :cond_238

    .line 3439
    if-nez v3, :cond_20f

    .line 3440
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_416

    .line 3448
    :cond_20f
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

    .line 3450
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3451
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3452
    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_416

    .line 3454
    :cond_238
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_239
    if-ge v4, v2, :cond_40b

    .line 3455
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 3456
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

    .line 3457
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_256

    .line 3458
    goto :goto_263

    .line 3460
    :cond_256
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26a

    .line 3461
    nop

    .line 3454
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_263
    add-int/lit8 v4, v4, 0x1

    move/from16 v13, p3

    move/from16 v2, v28

    goto :goto_239

    .line 3464
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_26a
    if-eqz p7, :cond_29c

    if-eqz v3, :cond_29c

    .line 3465
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3466
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3467
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_297

    .line 3468
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_416

    .line 3467
    :cond_297
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    goto/16 :goto_416

    .line 3479
    :cond_29c
    if-eqz p6, :cond_3d6

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3480
    invoke-virtual {v2, v10, v1, v11}, Lcom/android/server/pm/PreferredComponent;->sameSet(Ljava/util/List;ZI)Z

    move-result v2

    if-nez v2, :cond_3d1

    .line 3481
    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v2, v10, v1}, Lcom/android/server/pm/PreferredComponent;->isSuperset(Ljava/util/List;Z)Z

    move-result v2

    const-string v13, " type "

    if-eqz v2, :cond_316

    .line 3482
    if-eqz v3, :cond_307

    .line 3485
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_2d7

    .line 3486
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

    goto :goto_2d9

    .line 3485
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_2d7
    move-object/from16 p4, v0

    .line 3493
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_2d9
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v2, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3495
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

    .line 3498
    .local v0, "freshPa":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3499
    invoke-virtual {v6, v8, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3500
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3501
    .end local v0    # "freshPa":Lcom/android/server/pm/PreferredActivity;
    goto/16 :goto_3da

    .line 3502
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_307
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_3da

    .line 3503
    const-string v0, "Do not remove preferred activity"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3da

    .line 3507
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_316
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_330

    .line 3508
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_330

    const/4 v0, 0x1

    goto :goto_331

    :cond_330
    const/4 v0, 0x0

    .line 3509
    .local v0, "isHomeActivity":Z
    :goto_331
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->improveHomeAppBehavior()Z

    move-result v1

    if-eqz v1, :cond_339

    if-nez v0, :cond_3da

    .line 3513
    :cond_339
    if-eqz v3, :cond_3cd

    .line 3514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result set changed, dropping preferred activity for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_377

    .line 3519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing preferred activity since set changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_377
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PreferredIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3525
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    iget-object v2, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget v2, v2, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v1

    move-object/from16 v21, v5

    move/from16 v22, v2

    move-object/from16 v24, v13

    invoke-direct/range {v20 .. v25}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    .line 3528
    .local v1, "lastChosen":Lcom/android/server/pm/PreferredActivity;
    invoke-virtual {v6, v8, v1}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 3529
    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mChanged:Z

    .line 3531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "preferred:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v13, v5, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v13, v13, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 3532
    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", while query:"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/content/pm/ResolveInfo;

    .line 3534
    invoke-interface {v10, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3531
    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3537
    .end local v1    # "lastChosen":Lcom/android/server/pm/PreferredActivity;
    :cond_3cd
    const/4 v1, 0x0

    iput-object v1, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3538
    return-object v12

    .line 3480
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "excludeSetupWizardHomeActivity":Z
    :cond_3d1
    move-object/from16 p4, v0

    move/from16 v29, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_3da

    .line 3479
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    :cond_3d6
    move-object/from16 p4, v0

    move/from16 v29, v1

    .line 3544
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v29    # "excludeSetupWizardHomeActivity":Z
    .restart local p4    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_3da
    :goto_3da
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-nez v0, :cond_3e0

    if-eqz p8, :cond_408

    .line 3545
    :cond_3e0
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

    .line 3548
    :cond_408
    iput-object v14, v12, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3549
    return-object v12

    .line 3454
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v28    # "n":I
    .end local v29    # "excludeSetupWizardHomeActivity":Z
    .end local p3    # "i":I
    .end local p4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "excludeSetupWizardHomeActivity":Z
    .restart local v2    # "n":I
    .restart local v13    # "i":I
    :cond_40b
    move-object/from16 p4, v0

    move/from16 v29, v1

    move/from16 v28, v2

    move/from16 p3, v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 3393
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "excludeSetupWizardHomeActivity":Z
    .end local v2    # "n":I
    .end local v3    # "allowSetMutation":Z
    .end local v4    # "j":I
    .end local v5    # "pa":Lcom/android/server/pm/PreferredActivity;
    .end local v13    # "i":I
    .restart local v28    # "n":I
    .restart local p3    # "i":I
    :goto_416
    add-int/lit8 v4, p3, 0x1

    move-object/from16 v0, p1

    move v14, v13

    move/from16 v3, v26

    move/from16 v1, v27

    move/from16 v2, v28

    .end local p3    # "i":I
    .local v4, "i":I
    goto/16 :goto_104

    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v0, "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local v1, "match":I
    .restart local v2    # "n":I
    .local v3, "m":I
    :cond_423
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

    goto :goto_434

    .line 3365
    .end local v18    # "flags":J
    .end local v26    # "m":I
    .end local v27    # "match":I
    .end local v28    # "n":I
    .end local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .local p3, "flags":J
    :cond_430
    move-object/from16 p1, v0

    .line 3553
    .end local v0    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    .restart local p1    # "prefs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PreferredActivity;>;"
    move-wide/from16 v13, p3

    .end local p3    # "flags":J
    .local v13, "flags":J
    :goto_434
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

    .line 3567
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 3570
    .local v13, "callingUid":I
    move-object v14, p0

    iget-object v0, v14, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3571
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

    .line 3574
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

    .line 5039
    invoke-static {p1}, Lcom/android/server/pm/SharedLibraryUtils;->findSharedLibraries(Lcom/android/server/pm/pkg/PackageStateInternal;)Ljava/util/List;

    move-result-object v0

    .line 5040
    .local v0, "deps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 5041
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5042
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

    .line 5043
    .local v3, "info":Landroid/content/pm/SharedLibraryInfo;
    nop

    .line 5044
    invoke-virtual {v3}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5045
    .local v4, "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_33

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 5046
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5048
    .end local v3    # "info":Landroid/content/pm/SharedLibraryInfo;
    .end local v4    # "depPackageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    goto :goto_13

    .line 5049
    :cond_34
    return-object v1

    .line 5051
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

    .line 970
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 971
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 972
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_51

    .line 973
    move-object v2, p0

    move-object v3, v0

    move v4, p4

    move v5, p5

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 974
    return-object v1

    .line 976
    :cond_1e
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 977
    return-object v1

    .line 979
    :cond_25
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_35

    .line 980
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 981
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_34

    .line 982
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 984
    :cond_34
    return-object v1

    .line 986
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_35
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 987
    invoke-interface {v0, p5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    .line 986
    move-wide v3, p2

    move v6, p5

    move-object v7, v0

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 988
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_50

    .line 989
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 991
    :cond_50
    return-object v1

    .line 993
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_51
    return-object v1
.end method

.method public final generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .registers 26
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1500
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

    .line 1501
    invoke-virtual {v1, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v16

    .line 1503
    :cond_1b
    if-nez v14, :cond_1e

    .line 1504
    return-object v16

    .line 1506
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1513
    .local v13, "callingUid":I
    invoke-virtual {v0, v14, v13, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1514
    return-object v16

    .line 1517
    :cond_29
    const-wide/16 v1, 0x2000

    and-long v1, p2, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_40

    .line 1518
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1519
    const-wide/32 v1, 0x400000

    or-long v1, p2, v1

    move-wide v11, v1

    .end local p2    # "flags":J
    .local v1, "flags":J
    goto :goto_42

    .line 1522
    .end local v1    # "flags":J
    .restart local p2    # "flags":J
    :cond_40
    move-wide/from16 v11, p2

    .end local p2    # "flags":J
    .local v11, "flags":J
    :goto_42
    invoke-interface {v14, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    .line 1523
    .local v7, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 1524
    .local v8, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v8, :cond_ef

    .line 1526
    const-wide/16 v1, 0x100

    and-long/2addr v1, v11

    cmp-long v1, v1, v3

    if-nez v1, :cond_57

    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    move-object v2, v1

    goto :goto_66

    .line 1527
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

    .line 1529
    .local v2, "gids":[I
    const-wide/16 v5, 0x1000

    and-long v9, v11, v5

    cmp-long v1, v9, v3

    if-eqz v1, :cond_86

    .line 1530
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7a

    goto :goto_86

    .line 1531
    :cond_7a
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    goto :goto_8b

    .line 1530
    :cond_86
    :goto_86
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v9, v1

    .line 1531
    :goto_8b
    nop

    .line 1533
    .local v9, "installedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    and-long/2addr v5, v11

    cmp-long v1, v5, v3

    if-eqz v1, :cond_a8

    .line 1534
    invoke-interface {v8}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9c

    goto :goto_a8

    .line 1535
    :cond_9c
    iget-object v1, v0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v15}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    goto :goto_ad

    .line 1534
    :cond_a8
    :goto_a8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    move-object v10, v1

    .line 1535
    :goto_ad
    nop

    .line 1537
    .local v10, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 1538
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v5

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v17

    .line 1537
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

    .line 1541
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_cf

    .line 1542
    return-object v16

    .line 1545
    :cond_cf
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1546
    invoke-virtual {v0, v14}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1548
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->provideInfoOfApkInApex()Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1549
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getApexModuleName()Ljava/lang/String;

    move-result-object v3

    .line 1550
    .local v3, "apexModuleName":Ljava/lang/String;
    if-eqz v3, :cond_ee

    .line 1551
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 1552
    invoke-virtual {v4, v3}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1551
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageInfo;->setApexPackageName(Ljava/lang/String;)V

    .line 1555
    .end local v3    # "apexModuleName":Ljava/lang/String;
    :cond_ee
    return-object v1

    .line 1556
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
    :cond_ef
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
    const-wide v1, 0x100002000L    # 2.1219998384E-314

    move-wide/from16 v5, v19

    .end local v19    # "flags":J
    .local v5, "flags":J
    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1d3

    .line 1557
    move-object/from16 v1, p2

    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .local v1, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-static {v1, v5, v6}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 1558
    new-instance v2, Landroid/content/pm/PackageInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1559
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1560
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInfo;->setLongVersionCode(J)V

    .line 1561
    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v3

    .line 1562
    .local v3, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v3, :cond_12a

    invoke-interface {v3}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v16

    :cond_12a
    move-object/from16 v4, v16

    iput-object v4, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 1563
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getFirstInstallTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1564
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLastUpdateTime()J

    move-result-wide v7

    iput-wide v7, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 1566
    new-instance v4, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 1567
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1568
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v15, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    iput v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1569
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 1570
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 1571
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    .line 1572
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    iput-object v7, v4, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 1573
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 1574
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTargetSdkVersion()I

    move-result v7

    iput v7, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1575
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v7

    iput v7, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1576
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrivateFlags()I

    move-result v7

    iput v7, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1577
    invoke-static {v4, v5, v6, v1, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateApplicationInfo(Landroid/content/pm/ApplicationInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1579
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningInfo()Landroid/content/pm/SigningInfo;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 1580
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v7}, Landroid/content/pm/SigningInfo;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v7

    invoke-static {v7, v5, v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDeprecatedSignatures(Landroid/content/pm/SigningDetails;J)[Landroid/content/pm/Signature;

    move-result-object v7

    iput-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1581
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    if-eqz v7, :cond_1ab

    .line 1582
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageInfo;->setArchiveTimeMillis(J)V

    .line 1585
    :cond_1ab
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v7, :cond_1d2

    .line 1586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ps.pkg is n/a for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1587
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]. Provides a minimum info."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1586
    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_1d2
    return-object v2

    .line 1556
    .end local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_1d3
    move-object/from16 v1, p2

    .line 1591
    .end local p2    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v1    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_1d5
    return-object v16
.end method

.method public final getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 11
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 884
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

    .line 899
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 900
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 902
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

    .line 913
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 914
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "get activity info"

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 922
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

    .line 927
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p5

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v14

    .line 930
    .local v14, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    const-wide v0, 0x200000000L

    or-long v12, p2, v0

    .line 932
    .end local p2    # "flags":J
    .local v12, "flags":J
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_39

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

    .line 934
    :cond_39
    const/4 v8, 0x0

    if-nez v14, :cond_3e

    move-object v0, v8

    goto :goto_4a

    :cond_3e
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v14}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    :goto_4a
    move-object/from16 v16, v0

    .line 935
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v16, :cond_8f

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v1, v16

    move-object v2, v14

    move-wide v3, v12

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 936
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 937
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v10, :cond_69

    return-object v8

    .line 938
    :cond_69
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, p4

    move-object/from16 v3, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 940
    return-object v8

    .line 942
    :cond_7a
    nop

    .line 943
    invoke-interface {v10, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v0

    .line 942
    move-object/from16 v8, v16

    move-object v9, v14

    move-object v1, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v10, v12

    move-wide v2, v12

    .end local v12    # "flags":J
    .local v2, "flags":J
    move-object v12, v0

    move/from16 v13, p5

    move-object v0, v14

    .end local v14    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .local v0, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    move-object v14, v1

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    return-object v4

    .line 935
    .end local v0    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "flags":J
    .restart local v12    # "flags":J
    .restart local v14    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_8f
    move-wide v2, v12

    move-object v0, v14

    .line 945
    .end local v12    # "flags":J
    .end local v14    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v0    # "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .restart local v2    # "flags":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->resolveComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 946
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    sget-object v4, Lcom/android/server/pm/pkg/PackageUserStateInternal;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserStateInternal;

    invoke-static {v1, v2, v3, v4, v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateDelegateActivityInfo(Landroid/content/pm/ActivityInfo;JLcom/android/server/pm/pkg/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 949
    :cond_a4
    return-object v8
.end method

.method public getAllAvailablePackageNames()[Ljava/lang/String;
    .registers 3

    .line 1688
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

    .line 5129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5130
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5132
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5133
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5134
    .local v1, "callingUserId":I
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5135
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_1b

    const/4 v3, 0x0

    goto :goto_1f

    :cond_1b
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 5136
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_1f
    if-eqz v3, :cond_7a

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_7a

    .line 5139
    :cond_2c
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5140
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    return-object v4

    .line 5142
    :cond_37
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    .line 5143
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5144
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_45
    if-ge v6, v4, :cond_74

    .line 5145
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedActivity;

    .line 5146
    .local v7, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v8

    .line 5147
    .local v8, "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_56
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_71

    .line 5148
    new-instance v10, Landroid/content/IntentFilter;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v11}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5147
    add-int/lit8 v9, v9, 0x1

    goto :goto_56

    .line 5144
    .end local v7    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    .end local v8    # "intentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;>;"
    .end local v9    # "index":I
    :cond_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 5151
    .end local v6    # "n":I
    :cond_74
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v6

    .line 5137
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

    .line 4421
    const-string v0, "getAllPackages is limited to privileged callers"

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceSystemOrRootOrShell(Ljava/lang/String;)V

    .line 4423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4424
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4425
    .local v1, "callingUserId":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4426
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    .line 4428
    :cond_1f
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    .line 4429
    .local v2, "instantAppPkgName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4430
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_50

    .line 4432
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

    .line 4433
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isVisibleToInstantApps()Z

    move-result v6

    if-nez v6, :cond_47

    .line 4434
    goto :goto_34

    .line 4436
    :cond_47
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4437
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    goto :goto_34

    :cond_4f
    goto :goto_93

    .line 4440
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

    .line 4441
    .restart local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 4442
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v6, :cond_8b

    .line 4443
    invoke-interface {v6, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v7

    if-eqz v7, :cond_8b

    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 4445
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    .line 4444
    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v7

    if-nez v7, :cond_8b

    .line 4446
    goto :goto_5a

    .line 4448
    :cond_8b
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4449
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_5a

    .line 4451
    :cond_93
    :goto_93
    return-object v3
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 10
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4645
    .local v6, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getAppOpPermissionPackages"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4647
    if-eqz p1, :cond_58

    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4648
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_58

    .line 4652
    :cond_1f
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 4653
    invoke-interface {v1, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 4654
    .local v0, "packageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_30
    if-ltz v1, :cond_4b

    .line 4655
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4656
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 4657
    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4656
    invoke-virtual {p0, v3, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_45

    .line 4658
    goto :goto_48

    .line 4660
    :cond_45
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 4654
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_48
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 4662
    .end local v1    # "i":I
    :cond_4b
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 4649
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

    .line 5307
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    return v0

    .line 5308
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5309
    .local v0, "callingUid":I
    const/4 v5, 0x0

    const-string v6, "get enabled"

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5312
    :try_start_18
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5313
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5312
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 5316
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 5314
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

    .line 5317
    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_31
    move-exception v1

    .line 5318
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

    .line 5062
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5064
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationHidden for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v0

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5066
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5068
    .local v1, "callingId":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_50

    .line 5069
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v4, 0x1

    if-nez v3, :cond_39

    .line 5070
    nop

    .line 5077
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5070
    return v4

    .line 5072
    :cond_39
    :try_start_39
    invoke-virtual {p0, v3, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_50

    if-eqz v5, :cond_44

    .line 5073
    nop

    .line 5077
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5073
    return v4

    .line 5075
    :cond_44
    :try_start_44
    invoke-interface {v3, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isHidden()Z

    move-result v4
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 5077
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5075
    return v4

    .line 5077
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :catchall_50
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5078
    throw v3
.end method

.method public final getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 998
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

    .line 1010
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1011
    :cond_a
    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide p2

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p5}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1014
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "get application info"

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1019
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

    .line 1027
    move-object v6, p0

    move/from16 v7, p5

    const-wide/16 v0, -0x1

    move-object v2, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    .line 1030
    .end local p1    # "packageName":Ljava/lang/String;
    .local v8, "packageName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1031
    .local v9, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_39

    .line 1032
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

    .line 1036
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

    .line 1037
    .local v10, "matchApex":Z
    const/4 v11, 0x0

    if-eqz v9, :cond_8d

    .line 1038
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 1039
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v12, :cond_54

    return-object v11

    .line 1040
    :cond_54
    if-nez v10, :cond_5d

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1041
    return-object v11

    .line 1043
    :cond_5d
    move-object v0, p0

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 1044
    return-object v11

    .line 1046
    :cond_6c
    move/from16 v13, p4

    invoke-virtual {p0, v12, v13, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1047
    return-object v11

    .line 1050
    :cond_75
    nop

    .line 1051
    invoke-interface {v12, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 1050
    move-object v0, v9

    move-wide/from16 v1, p2

    move/from16 v4, p5

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1052
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_8c

    .line 1053
    invoke-virtual {p0, v9}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1055
    :cond_8c
    return-object v0

    .line 1057
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_8d
    move/from16 v13, p4

    const-string v0, "android"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    const-string/jumbo v0, "system"

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    goto :goto_ba

    .line 1060
    :cond_a1
    const-wide v0, 0x100402000L

    and-long v0, p2, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b9

    .line 1062
    move-object v0, p0

    move-object v1, v8

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0

    .line 1065
    :cond_b9
    return-object v11

    .line 1058
    :cond_ba
    :goto_ba
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

    .line 5715
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5716
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

    .line 5717
    .local v2, "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getAppId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v2}, Lcom/android/server/pm/pkg/SharedUserApi;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5718
    .end local v2    # "sharedUser":Lcom/android/server/pm/pkg/SharedUserApi;
    goto :goto_13

    .line 5719
    :cond_2f
    return-object v0
.end method

.method public getBlockUninstall(ILjava/lang/String;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5903
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBlockUninstallForUser(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5156
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5157
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5158
    .local v1, "callingUid":I
    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1a

    .line 5161
    :cond_13
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v2

    return v2

    .line 5159
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

    .line 5326
    const/4 v4, 0x0

    const-string v5, "getComponentEnabled"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5328
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I

    move-result v0

    return v0
.end method

.method public getComponentEnabledSettingInternal(Landroid/content/ComponentName;II)I
    .registers 13
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5335
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 5336
    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    return v0

    .line 5339
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5340
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5339
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5344
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    return v0

    .line 5342
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

    .line 5345
    .restart local p0    # "this":Lcom/android/server/pm/ComputerEngine;
    .restart local p1    # "component":Landroid/content/ComponentName;
    .restart local p2    # "callingUid":I
    .restart local p3    # "userId":I
    :catch_35
    move-exception v0

    .line 5346
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

    .line 5956
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

    .line 1150
    move-object/from16 v7, p0

    move/from16 v8, p5

    move/from16 v9, p6

    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_12

    .line 1152
    return-object v10

    .line 1154
    :cond_12
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v6

    .line 1157
    .local v6, "resultTargetUser":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_81

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_81

    .line 1160
    :cond_2b
    const/4 v0, 0x0

    .line 1161
    .local v0, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    .line 1162
    .local v11, "size":I
    const/4 v1, 0x0

    move-object v12, v0

    move v13, v1

    .end local v0    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v12, "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .local v13, "i":I
    :goto_33
    if-ge v13, v11, :cond_79

    .line 1163
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1167
    .local v14, "riTargetUser":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v14, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v0, :cond_41

    .line 1168
    goto :goto_76

    .line 1170
    :cond_41
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1171
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1172
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v16, :cond_4e

    .line 1173
    goto :goto_76

    .line 1176
    :cond_4e
    iget-object v0, v7, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 1177
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move/from16 v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->approvalLevelForDomain(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)I

    move-result v0

    .line 1179
    .local v0, "approvalLevel":I
    if-nez v12, :cond_6e

    .line 1180
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

    .line 1184
    .end local v1    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    .restart local v12    # "result":Lcom/android/server/pm/CrossProfileDomainInfo;
    :cond_6e
    iget v1, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1185
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    .line 1162
    .end local v0    # "approvalLevel":I
    .end local v14    # "riTargetUser":Landroid/content/pm/ResolveInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_76
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    .line 1188
    .end local v13    # "i":I
    :cond_79
    if-eqz v12, :cond_80

    iget v0, v12, Lcom/android/server/pm/CrossProfileDomainInfo;->mHighestApprovalLevel:I

    if-gtz v0, :cond_80

    .line 1190
    return-object v10

    .line 1192
    :cond_80
    return-object v12

    .line 1158
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

    .line 4113
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_SHARED_LIBRARIES"

    const-string v2, "getDeclaredSharedLibraries"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4116
    .local v12, "callingUid":I
    const/4 v5, 0x0

    const-string v6, "getDeclaredSharedLibraries"

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move v2, v12

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4119
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v11, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 4121
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_35

    .line 4122
    return-object v13

    .line 4125
    :cond_35
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 4126
    return-object v13

    .line 4129
    :cond_3c
    nop

    .line 4130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    .line 4131
    .local v14, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 4133
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v14}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    .line 4134
    .local v15, "libraryCount":I
    const/4 v1, 0x0

    move v8, v1

    .local v8, "i":I
    :goto_48
    if-ge v8, v15, :cond_13c

    .line 4135
    nop

    .line 4136
    invoke-virtual {v14, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4137
    .local v7, "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v7, :cond_58

    .line 4138
    move/from16 v22, v8

    goto/16 :goto_138

    .line 4141
    :cond_58
    invoke-virtual {v7}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4142
    .local v5, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v16, v0

    move v6, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v6, "j":I
    .local v16, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_60
    if-ge v6, v5, :cond_12e

    .line 4143
    invoke-virtual {v7, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/pm/SharedLibraryInfo;

    .line 4145
    .local v17, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v18

    .line 4146
    .local v18, "declaringPackage":Landroid/content/pm/VersionedPackage;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    .line 4147
    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_115

    .line 4150
    :cond_82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 4152
    .local v19, "identity":J
    nop

    .line 4153
    :try_start_87
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4154
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v3

    const-wide/32 v0, 0x4000000

    or-long v21, p2, v0

    .line 4156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_121

    .line 4152
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
    .catchall {:try_start_a7 .. :try_end_ab} :catchall_11f

    .line 4157
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_b1

    .line 4161
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4158
    goto :goto_115

    .line 4161
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_b1
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4162
    nop

    .line 4164
    nop

    .line 4165
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v0

    .line 4166
    .local v0, "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    new-instance v1, Landroid/content/pm/SharedLibraryInfo;

    .line 4167
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v27

    .line 4168
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v29

    .line 4169
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v30

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v32

    .line 4170
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v34, v2

    check-cast v34, Ljava/util/List;

    .line 4172
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f0

    .line 4173
    move-object/from16 v35, v13

    goto :goto_fb

    :cond_f0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v35, v2

    .line 4174
    :goto_fb
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v36

    move-object/from16 v25, v1

    invoke-direct/range {v25 .. v36}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V

    .line 4176
    .local v1, "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_10e

    .line 4177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v2

    goto :goto_110

    .line 4176
    :cond_10e
    move-object/from16 v2, v16

    .line 4179
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_110
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v2

    .line 4142
    .end local v0    # "usingSharedLibraryPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/content/pm/VersionedPackage;>;Ljava/util/List<Ljava/lang/Boolean;>;>;"
    .end local v1    # "resultLibraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .end local v19    # "identity":J
    .restart local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_115
    add-int/lit8 v6, v24, 0x1

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v5, v23

    .end local v24    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_60

    .line 4161
    .end local v6    # "j":I
    .restart local v17    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .restart local v18    # "declaringPackage":Landroid/content/pm/VersionedPackage;
    .restart local v19    # "identity":J
    .restart local v24    # "j":I
    :catchall_11f
    move-exception v0

    goto :goto_12a

    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v22    # "i":I
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .restart local v5    # "versionCount":I
    .restart local v6    # "j":I
    .restart local v7    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v8    # "i":I
    :catchall_121
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
    :goto_12a
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4162
    throw v0

    .line 4142
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
    :cond_12e
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

    .line 4134
    .end local v16    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v21    # "versionedLibrary":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v23    # "versionCount":I
    .end local v24    # "j":I
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_138
    add-int/lit8 v8, v22, 0x1

    .end local v22    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_48

    :cond_13c
    move/from16 v22, v8

    .line 4183
    .end local v8    # "i":I
    if-eqz v0, :cond_145

    new-instance v13, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v13, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :cond_145
    return-object v13
.end method

.method public final getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I

    .line 1073
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1074
    .local v0, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/ComputerEngine;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 1075
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_c

    .line 1076
    return-object v1

    .line 1080
    :cond_c
    const-string v2, "PackageManager"

    const-string v3, "Default package for ROLE_HOME is not set in RoleManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    const/high16 v2, -0x80000000

    .line 1085
    .local v2, "lastPriority":I
    const/4 v3, 0x0

    .line 1086
    .local v3, "lastComponent":Landroid/content/ComponentName;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1087
    .local v4, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1b
    if-ge v5, v4, :cond_38

    .line 1088
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1089
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v7, v2, :cond_30

    .line 1090
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 1091
    iget v2, v6, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_35

    .line 1092
    :cond_30
    iget v7, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v2, :cond_35

    .line 1094
    const/4 v3, 0x0

    .line 1087
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_35
    :goto_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 1097
    .end local v5    # "i":I
    :cond_38
    return-object v3
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5962
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

    .line 3654
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPackages()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4559
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4560
    return v2

    .line 4562
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4563
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4565
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4566
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4567
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4568
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4569
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4570
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4571
    return v2

    .line 4573
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getFlags()I

    move-result v2

    return v2

    .line 4574
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4575
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4576
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4577
    return v2

    .line 4579
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getFlags()I

    move-result v2

    return v2

    .line 4581
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

    .line 5974
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object v0
.end method

.method public getGrantImplicitAccessProviderInfo(ILjava/lang/String;)Landroid/content/pm/ProviderInfo;
    .registers 14
    .param p1, "recipientUid"    # I
    .param p2, "visibleAuthority"    # Ljava/lang/String;

    .line 4887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4888
    .local v6, "callingUid":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4890
    .local v7, "recipientUserId":I
    nop

    .line 4891
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4890
    const-string v1, "com.android.contacts"

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 4892
    .local v8, "contactsProvider":Landroid/content/pm/ProviderInfo;
    if-eqz v8, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3e

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4893
    invoke-static {v0, v6}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4899
    .local v9, "token":J
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v7

    move v5, v6

    :try_start_31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_39

    .line 4902
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4899
    return-object v0

    .line 4902
    :catchall_39
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4903
    throw v0

    .line 4894
    .end local v9    # "token":J
    :cond_3e
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

    .line 5775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5776
    .local v6, "callingUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 5778
    .local v7, "callingAppId":I
    const/4 v4, 0x1

    const-string v5, "getHarmfulAppInfo"

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5781
    invoke-static {v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRoot(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5782
    const-string v0, "android.permission.SET_HARMFUL_APP_WARNINGS"

    invoke-virtual {p0, v0, v6}, Lcom/android/server/pm/ComputerEngine;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 5783
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must have the android.permission.SET_HARMFUL_APP_WARNINGS permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5787
    :cond_29
    :goto_29
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5788
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_38

    .line 5791
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5789
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

    .line 1102
    .local p1, "allHomeCandidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getHomeIntent()Landroid/content/Intent;

    move-result-object v11

    .line 1103
    .local v11, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    const-wide/16 v3, 0x80

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v12

    .line 1105
    .local v12, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1106
    const/4 v13, 0x0

    if-nez v12, :cond_17

    .line 1107
    return-object v13

    .line 1109
    :cond_17
    move-object/from16 v14, p1

    invoke-interface {v14, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1111
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move/from16 v9, p2

    invoke-virtual {v0, v9}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v16

    .line 1112
    .local v16, "packageName":Ljava/lang/String;
    if-nez v16, :cond_5b

    .line 1120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 1121
    .local v8, "appId":I
    const/16 v0, 0x2710

    if-lt v8, v0, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    move v10, v0

    .line 1122
    .local v10, "filtered":Z
    nop

    .line 1123
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v17, 0x0

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

    .line 1125
    .local v0, "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;->mPreferredResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1126
    .local v1, "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_5b

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5b

    .line 1127
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .end local v16    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    goto :goto_5d

    .line 1130
    .end local v0    # "result":Lcom/android/server/pm/PackageManagerService$FindPreferredActivityBodyResult;
    .end local v1    # "preferredResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v10    # "filtered":Z
    .end local v18    # "appId":I
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_5b
    move-object/from16 v2, v16

    .end local v16    # "packageName":Ljava/lang/String;
    .restart local v2    # "packageName":Ljava/lang/String;
    :goto_5d
    if-nez v2, :cond_60

    .line 1131
    return-object v13

    .line 1134
    :cond_60
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 1135
    .local v0, "resolveInfosSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_65
    if-ge v1, v0, :cond_8c

    .line 1136
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 1138
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_89

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 1140
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 1135
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 1144
    .end local v1    # "i":I
    :cond_8c
    return-object v13
.end method

.method public final getHomeIntent()Landroid/content/Intent;
    .registers 3

    .line 1196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1199
    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;I)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 5593
    .local v6, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "get install reason"

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5595
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5596
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_26

    invoke-virtual {p0, v0, v6, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_26

    .line 5599
    :cond_1d
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getInstallReason()I

    move-result v1

    return v1

    .line 5597
    :cond_26
    :goto_26
    const/4 v1, 0x0

    return v1
.end method

.method public getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
    .locals 27

    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5205
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

    .line 5206
    .local v9, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getInstallSourceInfo"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v9

    move/from16 v2, v21

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5214
    invoke-direct {v6, v7, v9, v8}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    .line 5215
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    if-nez v0, :cond_1e

    .line 5216
    const/4 v1, 0x0

    return-object v1

    .line 5219
    :cond_1e
    iget-object v1, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5220
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 5221
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5222
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_30

    .line 5223
    invoke-virtual {v6, v2, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 5224
    :cond_30
    const/4 v1, 0x0

    .line 5228
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_31
    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 5229
    .local v2, "updateOwnerPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_5c

    .line 5230
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5231
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_4a

    .line 5232
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

    .line 5237
    .local v10, "isCallerSystemOrUpdateOwner":Z
    :goto_4b
    if-eqz v5, :cond_5b

    .line 5238
    invoke-virtual {v6, v5, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v11

    if-nez v11, :cond_5b

    if-nez v10, :cond_5c

    .line 5239
    invoke-direct {v6, v8}, Lcom/android/server/pm/ComputerEngine;->isCallerFromManagedUserOrProfile(I)Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 5240
    :cond_5b
    const/4 v2, 0x0

    .line 5244
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v10    # "isCallerSystemOrUpdateOwner":Z
    :cond_5c
    iget-boolean v5, v0, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v5, :cond_74

    .line 5249
    invoke-virtual {v6, v9}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_67

    move v3, v4

    .line 5250
    .local v3, "isInstantApp":Z
    :cond_67
    if-nez v3, :cond_72

    invoke-virtual {v6, v7, v9}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 5251
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .local v4, "initiatingPackageName":Ljava/lang/String;
    goto :goto_73

    .line 5253
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_72
    const/4 v4, 0x0

    .line 5255
    .end local v3    # "isInstantApp":Z
    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    :goto_73
    goto :goto_91

    .line 5256
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_74
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 5260
    move-object v4, v1

    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    goto :goto_91

    .line 5262
    .end local v4    # "initiatingPackageName":Ljava/lang/String;
    :cond_80
    iget-object v4, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    .line 5263
    .restart local v4    # "initiatingPackageName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5264
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_90

    .line 5265
    invoke-virtual {v6, v3, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 5266
    :cond_90
    const/4 v4, 0x0

    .line 5271
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_91
    :goto_91
    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    .line 5272
    .local v3, "originatingPackageName":Ljava/lang/String;
    if-eqz v3, :cond_a4

    .line 5273
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 5274
    .restart local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_a3

    .line 5275
    invoke-virtual {v6, v5, v9, v8}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v10

    if-eqz v10, :cond_a4

    .line 5276
    :cond_a3
    const/4 v3, 0x0

    .line 5283
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a4
    if-eqz v3, :cond_b1

    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v5, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_b1

    .line 5285
    const/4 v3, 0x0

    .line 5291
    :cond_b1
    iget-object v5, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    .line 5292
    .local v5, "signatures":Lcom/android/server/pm/PackageSignatures;
    if-eqz v4, :cond_c7

    if-eqz v5, :cond_c7

    iget-object v10, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v11, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-eq v10, v11, :cond_c7

    .line 5294
    new-instance v10, Landroid/content/pm/SigningInfo;

    iget-object v11, v5, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-direct {v10, v11}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/SigningDetails;)V

    move-object/from16 v17, v10

    .local v10, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    goto :goto_ca

    .line 5296
    .end local v10    # "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    :cond_c7
    const/4 v10, 0x0

    move-object/from16 v17, v10

    .line 5299
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

.method public getInstalledApplications(JIIZ)Ljava/util/List;
    .registers 26
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

    .line 4735
    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual {v6, v8}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4736
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4738
    :cond_11
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4739
    :cond_1e
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForApplication(JI)J

    move-result-wide v9

    .line 4740
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

    .line 4741
    .local v11, "listUninstalled":Z
    const-wide/32 v12, 0x40000000

    and-long/2addr v12, v9

    cmp-long v0, v12, v2

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v4

    :goto_3d
    move v12, v0

    .line 4742
    .local v12, "listApex":Z
    if-nez v11, :cond_4b

    const-wide v13, 0x100000000L

    and-long/2addr v13, v9

    cmp-long v0, v13, v2

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v4

    :goto_4c
    move v13, v1

    .line 4744
    .local v13, "listArchivedOnly":Z
    if-nez p5, :cond_5c

    .line 4745
    const/4 v4, 0x0

    const-string v5, "get installed application info"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4753
    :cond_5c
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 4754
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v1, p4

    move-wide v3, v9

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getApplicationInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v14

    .line 4755
    .local v14, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v14, :cond_70

    .line 4756
    return-object v14

    .line 4761
    :cond_70
    nop

    .line 4762
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v15

    .line 4763
    .local v15, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    if-nez v11, :cond_108

    if-eqz v13, :cond_7f

    move/from16 p2, v11

    move-object/from16 v17, v14

    goto/16 :goto_10c

    .line 4802
    :cond_7f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 4803
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_93
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ff

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4804
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 4805
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v3, :cond_a7

    .line 4806
    goto :goto_93

    .line 4808
    :cond_a7
    if-nez v12, :cond_b0

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 4809
    goto :goto_93

    .line 4811
    :cond_b0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 p1, v3

    .end local v3    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local p1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    move/from16 v3, p3

    move/from16 p2, v11

    move-object/from16 v17, v14

    move-object v11, v4

    move-object v14, v5

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local p2, "listUninstalled":Z
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 4812
    move-object v4, v11

    move-object/from16 v14, v17

    move/from16 v11, p2

    goto :goto_93

    .line 4814
    :cond_ce
    invoke-virtual {v6, v14, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 4815
    move-object v4, v11

    move-object/from16 v14, v17

    move/from16 v11, p2

    goto :goto_93

    .line 4817
    :cond_da
    nop

    .line 4818
    invoke-interface {v14, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4817
    move-object/from16 v0, p1

    move-wide v1, v9

    move/from16 v4, p3

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4819
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_f7

    .line 4820
    move-object/from16 v1, p1

    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4821
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f9

    .line 4819
    .end local v1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_f7
    move-object/from16 v1, p1

    .line 4823
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p1    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_f9
    move-object v4, v11

    move-object/from16 v14, v17

    move/from16 v11, p2

    goto :goto_93

    .line 4803
    .end local v17    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local p2    # "listUninstalled":Z
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .local v11, "listUninstalled":Z
    .local v14, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_ff
    move/from16 p2, v11

    move-object/from16 v17, v14

    move-object v11, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local p2    # "listUninstalled":Z
    move/from16 p1, v12

    goto/16 :goto_1bb

    .line 4763
    .end local v17    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local p2    # "listUninstalled":Z
    .local v11, "listUninstalled":Z
    .restart local v14    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_108
    move/from16 p2, v11

    move-object/from16 v17, v14

    .line 4764
    .end local v11    # "listUninstalled":Z
    .end local v14    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v17    # "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local p2    # "listUninstalled":Z
    :goto_10c
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 4765
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4767
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v0, v9

    .line 4768
    .local v0, "effectiveFlags":J
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 4769
    const-wide/32 v2, 0x400000

    or-long/2addr v0, v2

    move-wide/from16 v18, v0

    goto :goto_13b

    .line 4768
    :cond_139
    move-wide/from16 v18, v0

    .line 4771
    .end local v0    # "effectiveFlags":J
    .local v18, "effectiveFlags":J
    :goto_13b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_19c

    .line 4772
    if-nez v12, :cond_14e

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 4773
    goto :goto_11e

    .line 4775
    :cond_14e
    invoke-interface {v4, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 4776
    .local v16, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v13, :cond_161

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_161

    .line 4777
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_161

    .line 4778
    goto :goto_11e

    .line 4780
    :cond_161
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move/from16 p1, v12

    move-object v12, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local p1, "listApex":Z
    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 4781
    move/from16 v12, p1

    goto :goto_11e

    .line 4783
    :cond_175
    invoke-virtual {v6, v12, v8, v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 4784
    move/from16 v12, p1

    goto :goto_11e

    .line 4786
    :cond_17e
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    .line 4787
    invoke-interface {v12, v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 4786
    move-wide/from16 v1, v18

    move/from16 v4, p3

    move-object v5, v12

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4788
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_19b

    .line 4789
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/android/server/pm/ComputerEngine;->resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4791
    .end local v16    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_19b
    goto :goto_1af

    .line 4794
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "listApex":Z
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "listApex":Z
    :cond_19c
    move/from16 p1, v12

    move-object v12, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p1    # "listApex":Z
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    move-wide/from16 v2, v18

    move/from16 v4, p4

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->generateApplicationInfoFromSettings(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4797
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1af
    if-eqz v0, :cond_1b4

    .line 4798
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4800
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "effectiveFlags":J
    :cond_1b4
    move/from16 v12, p1

    goto/16 :goto_11e

    .end local p1    # "listApex":Z
    .local v12, "listApex":Z
    :cond_1b8
    move/from16 p1, v12

    .end local v12    # "listApex":Z
    .restart local p1    # "listApex":Z
    move-object v4, v11

    .line 4826
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    :goto_1bb
    return-object v4
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

    .line 1717
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1718
    .local v6, "callingUid":I
    invoke-virtual {p0, v6}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1719
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1721
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 1722
    :cond_1c
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p1

    .line 1724
    const/4 v4, 0x0

    const-string v5, "get installed packages"

    const/4 v3, 0x0

    move-object v0, p0

    move v1, v6

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1727
    invoke-virtual {p0, p1, p2, p3, v6}, Lcom/android/server/pm/ComputerEngine;->getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method protected getInstalledPackagesBody(JII)Landroid/content/pm/ParceledListSlice;
    .registers 25
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

    .line 1733
    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    .line 1734
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v1, p4

    move-wide/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerServiceStub;->getPackageInfoBySelf(IIJI)Ljava/util/List;

    move-result-object v11

    .line 1735
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v11, :cond_22

    .line 1736
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 1740
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

    .line 1741
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

    .line 1742
    .local v13, "listApex":Z
    const-wide/32 v14, 0x200000

    and-long/2addr v14, v7

    cmp-long v0, v14, v2

    if-eqz v0, :cond_48

    move v0, v1

    goto :goto_49

    :cond_48
    move v0, v4

    :goto_49
    move v14, v0

    .line 1744
    .local v14, "listFactory":Z
    if-nez v12, :cond_57

    const-wide v15, 0x100000000L

    and-long/2addr v15, v7

    cmp-long v0, v15, v2

    if-eqz v0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v4

    :goto_58
    move v15, v1

    .line 1747
    .local v15, "listArchivedOnly":Z
    if-nez v12, :cond_f2

    if-eqz v15, :cond_63

    move-object/from16 v18, v11

    move/from16 v19, v12

    goto/16 :goto_f6

    .line 1780
    :cond_63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v0

    .line 1781
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_79
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1782
    .local v17, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1783
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_ab

    .line 1784
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_98

    .line 1785
    goto :goto_79

    .line 1788
    :cond_98
    if-nez v0, :cond_9c

    const/4 v1, 0x0

    goto :goto_a6

    :cond_9c
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1789
    .local v1, "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_a6
    if-eqz v1, :cond_ab

    .line 1790
    move-object v0, v1

    move-object v5, v0

    goto :goto_ac

    .line 1793
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_ab
    move-object v5, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v5, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_ac
    if-nez v13, :cond_b5

    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1794
    goto :goto_79

    .line 1796
    :cond_b5
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object v11, v4

    move-object v12, v5

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v19, "listUninstalled":Z
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 1797
    move-object v4, v11

    move-object/from16 v11, v18

    move/from16 v12, v19

    goto :goto_79

    .line 1799
    :cond_d0
    invoke-virtual {v6, v12, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 1800
    move-object v4, v11

    move-object/from16 v11, v18

    move/from16 v12, v19

    goto :goto_79

    .line 1802
    :cond_dc
    invoke-virtual {v6, v12, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1803
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_e5

    .line 1804
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_e5
    move-object v4, v11

    move-object/from16 v11, v18

    move/from16 v12, v19

    goto :goto_79

    .line 1781
    .end local v18    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "listUninstalled":Z
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "listUninstalled":Z
    :cond_eb
    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object v11, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "listUninstalled":Z
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v18    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "listUninstalled":Z
    goto/16 :goto_18a

    .line 1747
    .end local v18    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "listUninstalled":Z
    .local v11, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v12    # "listUninstalled":Z
    :cond_f2
    move-object/from16 v18, v11

    move/from16 v19, v12

    .line 1748
    .end local v11    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v12    # "listUninstalled":Z
    .restart local v18    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "listUninstalled":Z
    :goto_f6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v0

    .line 1749
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_114
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1750
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v14, :cond_138

    .line 1751
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v1

    if-nez v1, :cond_129

    .line 1752
    goto :goto_114

    .line 1754
    :cond_129
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 1755
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 1756
    .restart local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_138

    .line 1757
    move-object v0, v1

    move-object v4, v0

    goto :goto_139

    .line 1760
    .end local v1    # "psDisabled":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_138
    move-object v4, v0

    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_139
    if-nez v13, :cond_14c

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_14c

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1761
    goto :goto_114

    .line 1763
    :cond_14c
    invoke-interface {v4, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 1764
    .local v16, "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v15, :cond_15f

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_15f

    .line 1765
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v0

    if-nez v0, :cond_15f

    .line 1766
    goto :goto_114

    .line 1768
    :cond_15f
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, p4

    move/from16 v3, p3

    move-object/from16 v17, v12

    move-object v12, v4

    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 1769
    move-object/from16 v12, v17

    goto :goto_114

    .line 1771
    :cond_174
    invoke-virtual {v6, v12, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 1772
    move-object/from16 v12, v17

    goto :goto_114

    .line 1774
    :cond_17d
    invoke-virtual {v6, v12, v7, v8, v9}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1775
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_186

    .line 1776
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v16    # "userState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_186
    move-object/from16 v12, v17

    goto :goto_114

    :cond_189
    move-object v4, v11

    .line 1809
    .end local v11    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_18a
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 13

    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5167
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

    .line 5168
    .local v0, "callingUid":I
    invoke-direct {v5, v6, v0, v7}, Lcom/android/server/pm/ComputerEngine;->getInstallSource(Ljava/lang/String;II)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 5169
    .local v1, "installSource":Lcom/android/server/pm/InstallSource;
    if-eqz v1, :cond_22

    .line 5172
    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5173
    .local v2, "installerPackageName":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 5174
    iget-object v3, v5, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5175
    .local v3, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v3, :cond_20

    .line 5176
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5175
    invoke-virtual {v5, v3, v0, v4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 5177
    :cond_20
    const/4 v2, 0x0

    .line 5180
    .end local v3    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_21
    move-object/16 v12, v2
    invoke-static/range {v8 .. v12}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2

    .line 5170
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

    .line 5987
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_6

    .line 5988
    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 5987
    :goto_c
    return-object v0
.end method

.method public getInstantAppInstallerInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 5968
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppInstallerInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 7
    .param p1, "callingUid"    # I

    .line 1895
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1896
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p1

    .line 1898
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1899
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 1900
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    .line 1901
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1902
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 1903
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v4

    .line 1904
    .local v4, "isInstantApp":Z
    if-eqz v4, :cond_32

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_32
    return-object v3

    .line 1906
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

    .line 4984
    move-object/from16 v6, p0

    move/from16 v14, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 4985
    .local v15, "callingUid":I
    const/4 v4, 0x0

    const-string v5, "getInstrumentationInfoAsUser"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4987
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1e

    return-object v7

    .line 4988
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4989
    .local v13, "packageName":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    .line 4990
    .local v12, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v13}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4991
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v12, :cond_6c

    if-nez v16, :cond_3d

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-object v4, v12

    move-object v5, v13

    goto :goto_72

    .line 4992
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

    .line 4994
    return-object v7

    .line 4996
    :cond_4d
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 4997
    .local v0, "i":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    invoke-interface {v12, v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 4998
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

    invoke-static/range {v7 .. v13}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v7

    return-object v7

    .line 4991
    .end local v0    # "i":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
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

    .line 5400
    if-eqz p1, :cond_66

    if-nez p2, :cond_5

    goto :goto_66

    .line 5403
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5404
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5405
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5406
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_35

    .line 5407
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5406
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_35

    .line 5411
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5412
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/KeySetManagerService;->getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5408
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

    .line 5409
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

    .line 5401
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

    .line 1204
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v0

    .line 1205
    .local v0, "resolver":Lcom/android/server/pm/CrossProfileIntentResolver;
    if-eqz v0, :cond_13

    .line 1206
    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1209
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 9
    .param p1, "uid"    # I

    .line 4457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4458
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4459
    return-object v2

    .line 4461
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4462
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4464
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4465
    .local v1, "callingUserId":I
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 4467
    :try_start_20
    invoke-direct {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v3
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_24} :catch_26

    move p1, v3

    .line 4471
    goto :goto_45

    .line 4468
    :catch_26
    move-exception v3

    .line 4470
    .local v3, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected isolated uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to have an owner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4473
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_45
    :goto_45
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4474
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4475
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_79

    .line 4476
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4477
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 4478
    return-object v2

    .line 4480
    :cond_5d
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

    .line 4481
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_79
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_8c

    .line 4482
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4483
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_87

    .line 4484
    return-object v2

    .line 4486
    :cond_87
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4488
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_8c
    return-object v2
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 13
    .param p1, "uids"    # [I

    .line 4494
    const/4 v0, 0x0

    if-eqz p1, :cond_a7

    array-length v1, p1

    if-nez v1, :cond_8

    goto/16 :goto_a7

    .line 4497
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4498
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 4499
    return-object v0

    .line 4501
    :cond_13
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4502
    .local v2, "callingUserId":I
    array-length v3, p1

    new-array v3, v3, [Ljava/lang/String;

    .line 4503
    .local v3, "names":[Ljava/lang/String;
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1d
    if-ltz v4, :cond_a6

    .line 4504
    aget v5, p1, v4

    .line 4505
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4506
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result v5

    .line 4508
    :cond_2b
    invoke-direct {p0, v5}, Lcom/android/server/pm/ComputerEngine;->isKnownIsolatedComputeApp(I)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 4510
    :try_start_31
    invoke-direct {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v6
    :try_end_35
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_35} :catch_37

    move v5, v6

    .line 4514
    goto :goto_56

    .line 4511
    :catch_37
    move-exception v6

    .line 4513
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

    .line 4516
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_56
    :goto_56
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 4517
    .local v6, "appId":I
    iget-object v7, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v7, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v7

    .line 4518
    .local v7, "obj":Ljava/lang/Object;
    instance-of v8, v7, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v8, :cond_89

    .line 4519
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    .line 4520
    .local v8, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 4521
    aput-object v0, v3, v4

    goto :goto_88

    .line 4523
    :cond_70
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

    .line 4525
    .end local v8    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :goto_88
    goto :goto_a2

    :cond_89
    instance-of v8, v7, Lcom/android/server/pm/PackageSetting;

    if-eqz v8, :cond_a0

    .line 4526
    move-object v8, v7

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4527
    .local v8, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 4528
    aput-object v0, v3, v4

    goto :goto_9f

    .line 4530
    :cond_99
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    .line 4532
    .end local v8    # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_9f
    goto :goto_a2

    .line 4533
    :cond_a0
    aput-object v0, v3, v4

    .line 4503
    .end local v5    # "uid":I
    .end local v6    # "appId":I
    .end local v7    # "obj":Ljava/lang/Object;
    :goto_a2
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1d

    .line 4536
    .end local v4    # "i":I
    :cond_a6
    return-object v3

    .line 4495
    .end local v1    # "callingUid":I
    .end local v2    # "callingUserId":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_a7
    :goto_a7
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

    .line 3673
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3674
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3676
    .local v1, "callingUserId":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3677
    .local v2, "packagesToNotify":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_23

    aget-object v5, p1, v4

    .line 3678
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v6

    .line 3679
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v6, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v7

    if-nez v7, :cond_20

    .line 3680
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3677
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 3684
    :cond_23
    return-object v2
.end method

.method public getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 8
    .param p1, "uid"    # I

    .line 959
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackagesForUidInternal(II)[Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "packageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 961
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    :cond_b
    array-length v2, v0

    .line 962
    .local v2, "numPackages":I
    :goto_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-nez v1, :cond_1f

    if-ge v3, v2, :cond_1f

    .line 963
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 962
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 965
    .end local v3    # "i":I
    :cond_1f
    return-object v1
.end method

.method public getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 953
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 955
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

    .line 3802
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3803
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3804
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 3805
    const/4 v6, 0x0

    const-string v7, "getPackageGids"

    const/4 v5, 0x0

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3808
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3809
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_23

    .line 3810
    return-object v1

    .line 3812
    :cond_23
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 3813
    invoke-static {v2, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3814
    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3815
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 3816
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3817
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 3816
    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3820
    :cond_4e
    const-wide v3, 0x100402000L

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_75

    .line 3821
    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 3822
    invoke-virtual {p0, v2, v0, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_75

    .line 3823
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 3824
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3823
    invoke-interface {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getGidsForUid(I)[I

    move-result-object v1

    return-object v1

    .line 3828
    :cond_75
    return-object v1
.end method

.method public final getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 1597
    nop

    .line 1598
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1597
    const-wide/16 v2, -0x1

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

    .line 1611
    move-object v8, p0

    move/from16 v9, p7

    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v0

    invoke-interface {v0}, Lmiui/enterprise/IApplicationHelper;->isNeglectUserId()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1612
    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x0

    return-object v0

    .line 1614
    :cond_17
    move-wide/from16 v0, p4

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 1615
    .end local p4    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get package info"

    const/4 v3, 0x0

    move-object v0, p0

    move/from16 v2, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1618
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

    .line 1626
    move-object/from16 v6, p0

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v11

    .line 1628
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

    .line 1629
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

    .line 1630
    .local v13, "matchApex":Z
    const/4 v14, 0x0

    if-eqz v12, :cond_61

    .line 1632
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getDisabledSystemPkg(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 1633
    .local v15, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v15, :cond_61

    .line 1634
    if-nez v13, :cond_45

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1635
    return-object v14

    .line 1637
    :cond_45
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p6

    move/from16 v3, p7

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1638
    return-object v14

    .line 1640
    :cond_55
    invoke-virtual {v6, v15, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1641
    return-object v14

    .line 1643
    :cond_5c
    invoke-virtual {v6, v15, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0

    .line 1647
    .end local v15    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_61
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v11}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1648
    .local v15, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 1649
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v12, :cond_7b

    if-eqz v15, :cond_7b

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1650
    return-object v14

    .line 1652
    :cond_7b
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_a1

    .line 1653
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

    .line 1655
    :cond_a1
    if-eqz v15, :cond_d6

    .line 1656
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1657
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_b4

    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 1658
    return-object v14

    .line 1660
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

    .line 1661
    return-object v14

    .line 1663
    :cond_c6
    move-object/from16 v0, v17

    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_d1

    invoke-virtual {v6, v0, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 1664
    return-object v14

    .line 1667
    :cond_d1
    invoke-virtual {v6, v0, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 1669
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_d6
    if-nez v12, :cond_10b

    const-wide v0, 0x100402000L

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10b

    .line 1670
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 1671
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_eb

    return-object v14

    .line 1672
    :cond_eb
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

    if-eqz v0, :cond_fd

    .line 1673
    return-object v14

    .line 1675
    :cond_fd
    move-object/from16 v0, v18

    .end local v18    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {v6, v0, v9, v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 1676
    return-object v14

    .line 1678
    :cond_106
    invoke-virtual {v6, v0, v7, v8, v10}, Lcom/android/server/pm/ComputerEngine;->generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    return-object v1

    .line 1682
    .end local v0    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_10b
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

    .line 5909
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5910
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 5911
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/SharedUserApi;

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5912
    :cond_13
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_1f

    .line 5913
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1

    .line 5915
    :cond_1f
    return-object v2
.end method

.method public getPackageStartability(ZLjava/lang/String;II)I
    .registers 8
    .param p1, "safeMode"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 3691
    invoke-static {p4}, Landroid/os/storage/StorageManager;->isCeStorageUnlocked(I)Z

    move-result v0

    .line 3692
    .local v0, "ceStorageUnlocked":Z
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 3693
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v1, :cond_3f

    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3694
    invoke-interface {v1, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_3f

    .line 3698
    :cond_1b
    if-eqz p1, :cond_25

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3699
    const/4 v2, 0x2

    return v2

    .line 3702
    :cond_25
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mFrozenPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3703
    const/4 v2, 0x3

    return v2

    .line 3706
    :cond_2f
    if-nez v0, :cond_3d

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isEncryptionAware(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 3707
    const/4 v2, 0x4

    return v2

    .line 3709
    :cond_3d
    const/4 v2, 0x0

    return v2

    .line 3695
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

    .line 1706
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1708
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 1709
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1710
    const/4 v1, 0x0

    return-object v1

    .line 1712
    :cond_14
    return-object v0
.end method

.method public getPackageStateForInstalledAndFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4259
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4260
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_e

    .line 4261
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_e

    .line 4264
    :cond_d
    return-object v0

    .line 4262
    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1693
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

    .line 1698
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/ComputerEngine;->resolveInternalPackageNameInternalLocked(Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object p1

    .line 1700
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

    .line 3648
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

    .line 5556
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    return v0

    .line 5557
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5558
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide p2

    .line 5559
    const/4 v5, 0x0

    const-string v6, "getPackageUid"

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5561
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

    .line 2747
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2748
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2749
    .local v1, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v1, :cond_39

    invoke-static {v0, p2, p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2750
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2751
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_39

    invoke-interface {v2, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2752
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_39

    .line 2753
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2756
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_39
    const-wide v2, 0x100402000L

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_62

    .line 2757
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 2758
    .restart local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_62

    invoke-static {v2, p2, p3}, Lcom/android/server/pm/pkg/PackageStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageState;J)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 2759
    invoke-virtual {p0, v2, p5, p4}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_62

    .line 2760
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {p4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    return v3

    .line 2764
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_62
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

    .line 5835
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 5836
    .local v0, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_12

    .line 5837
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 5838
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 5839
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_12
    instance-of v1, v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_29

    .line 5840
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 5841
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 5842
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_24

    .line 5843
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5845
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5848
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

    .line 2017
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

    .line 2033
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 2034
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    .line 2035
    if-eqz p4, :cond_e

    .line 2036
    return-object v2

    .line 2038
    :cond_e
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/SharedUserSetting;

    .line 2039
    .local v1, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 2040
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 2041
    .local v2, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 2042
    .local v3, "n":I
    new-array v4, v3, [Ljava/lang/String;

    .line 2043
    .local v4, "res":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2044
    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_1e
    if-ge v6, v3, :cond_42

    .line 2045
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2046
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 2047
    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-nez v8, :cond_3f

    .line 2048
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move v5, v8

    .line 2044
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 2051
    .end local v6    # "index":I
    :cond_42
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 2052
    .end local v1    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v2    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v3    # "n":I
    .end local v4    # "res":[Ljava/lang/String;
    .end local v5    # "i":I
    :cond_49
    instance-of v1, v0, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v1, :cond_69

    .line 2053
    move-object v1, v0

    check-cast v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2054
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v1, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 2055
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_69

    .line 2056
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2059
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

    .line 4670
    move-object/from16 v8, p0

    move/from16 v9, p4

    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4671
    :cond_11
    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1, v9}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v10

    .line 4672
    .end local p2    # "flags":J
    .local v10, "flags":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string v5, "get packages holding permissions"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4674
    const-wide v0, 0x100402000L

    and-long/2addr v0, v10

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    move v12, v0

    .line 4677
    .local v12, "listUninstalled":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 4678
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v14, p1

    array-length v0, v14

    new-array v15, v0, [Z

    .line 4679
    .local v15, "tmpBools":[Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4680
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v17 .. v17}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_64

    if-nez v12, :cond_64

    .line 4681
    goto :goto_4d

    .line 4683
    :cond_64
    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v15

    move-wide v5, v10

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->addPackageHoldingPermissions(Ljava/util/ArrayList;Lcom/android/server/pm/pkg/PackageStateInternal;[Ljava/lang/String;[ZJI)V

    .line 4684
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_4d

    .line 4686
    :cond_73
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v13}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
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

    .line 4042
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    .line 4043
    .local v3, "versionedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4044
    .local v4, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 4045
    .local v5, "packageCount":I
    const/4 v6, 0x0

    .line 4046
    .local v6, "usesLibsOptional":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_11
    if-ge v7, v5, :cond_12e

    .line 4047
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4048
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v8, :cond_1f

    .line 4049
    move-wide/from16 v10, p2

    goto/16 :goto_c9

    .line 4052
    :cond_1f
    invoke-interface {v8, v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    move-wide/from16 v10, p2

    invoke-static {v9, v10, v11}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 4053
    goto/16 :goto_c9

    .line 4056
    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 4057
    .local v9, "libName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v12

    if-nez v12, :cond_85

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v12

    if-eqz v12, :cond_3e

    goto :goto_85

    .line 4090
    :cond_3e
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    if-eqz v12, :cond_c9

    .line 4091
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibraries()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_60

    .line 4092
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c9

    .line 4093
    :cond_60
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v12

    if-eqz v12, :cond_67

    .line 4094
    goto :goto_c9

    .line 4096
    :cond_67
    if-nez v3, :cond_6f

    .line 4097
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v12

    .line 4099
    :cond_6f
    new-instance v12, Landroid/content/pm/VersionedPackage;

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4100
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v14

    invoke-direct {v12, v13, v14, v15}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4099
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_122

    .line 4059
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

    .line 4060
    .local v12, "libs":[Ljava/lang/String;
    :goto_94
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_9f

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesStaticLibrariesVersions()[J

    move-result-object v13

    goto :goto_a3

    .line 4061
    :cond_9f
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v13

    :goto_a3
    nop

    .line 4062
    .local v13, "libsVersions":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v14

    if-eqz v14, :cond_af

    .line 4063
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUsesSdkLibrariesOptional()[Z

    move-result-object v14

    goto :goto_b0

    :cond_af
    const/4 v14, 0x0

    .line 4065
    .local v14, "libsOptional":[Z
    :goto_b0
    invoke-static {v12, v9}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v15

    .line 4066
    .local v15, "libIdx":I
    if-gez v15, :cond_b7

    .line 4067
    goto :goto_c9

    .line 4069
    :cond_b7
    aget-wide v16, v13, v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-eqz v16, :cond_c2

    .line 4071
    goto :goto_c9

    .line 4073
    :cond_c2
    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_ce

    .line 4074
    nop

    .line 4046
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

    .line 4076
    .restart local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v9    # "libName":Ljava/lang/String;
    .restart local v12    # "libs":[Ljava/lang/String;
    .restart local v13    # "libsVersions":[J
    .restart local v14    # "libsOptional":[Z
    .restart local v15    # "libIdx":I
    :cond_ce
    if-nez v3, :cond_d7

    .line 4077
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v3, v16

    .line 4079
    :cond_d7
    if-nez v6, :cond_e0

    .line 4080
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v16

    .line 4083
    :cond_e0
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 4084
    .local v16, "dependentPackageName":Ljava/lang/String;
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    if-eqz v17, :cond_ff

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isStaticSharedLibrary()Z

    move-result v17

    if-eqz v17, :cond_ff

    .line 4085
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getManifestPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_101

    .line 4087
    :cond_ff
    move-object/from16 v0, v16

    .end local v16    # "dependentPackageName":Ljava/lang/String;
    .local v0, "dependentPackageName":Ljava/lang/String;
    :goto_101
    new-instance v1, Landroid/content/pm/VersionedPackage;

    .line 4088
    move-object/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v5    # "packageCount":I
    .local v16, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v17, "packageCount":I
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVersionCode()J

    move-result-wide v4

    invoke-direct {v1, v0, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 4087
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4089
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

    .line 4090
    .end local v0    # "dependentPackageName":Ljava/lang/String;
    .end local v12    # "libs":[Ljava/lang/String;
    .end local v13    # "libsVersions":[J
    .end local v14    # "libsOptional":[Z
    .end local v15    # "libIdx":I
    nop

    .line 4046
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "libName":Ljava/lang/String;
    :goto_122
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_11

    .line 4105
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

    .line 5676
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5677
    invoke-static {}, Lcom/android/server/pm/UserManagerServiceStub;->get()Lcom/android/server/pm/UserManagerServiceStub;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    invoke-interface {v3, v5}, Lcom/android/server/pm/UserManagerServiceStub;->isInMaintenanceMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 5678
    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->isUserUnlocked(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 5679
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/pm/PackageManagerServiceStub;->getPersistentAppsForOtherUser(ZII)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 5682
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5684
    .local v3, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v4

    .line 5685
    .local v4, "numPackages":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 5686
    .local v11, "userId":I
    const/4 v5, 0x0

    move v12, v5

    .local v12, "index":I
    :goto_3e
    if-ge v12, v4, :cond_aa

    .line 5687
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v12}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5688
    .local v13, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 5690
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/high16 v5, 0x40000

    and-int/2addr v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_62

    .line 5691
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-nez v5, :cond_62

    move v5, v7

    goto :goto_63

    :cond_62
    move v5, v6

    :goto_63
    move v15, v5

    .line 5692
    .local v15, "matchesUnaware":Z
    const/high16 v5, 0x80000

    and-int/2addr v5, v2

    if-eqz v5, :cond_71

    .line 5693
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v5

    if-eqz v5, :cond_71

    move v6, v7

    goto :goto_72

    :cond_71
    nop

    :goto_72
    move/from16 v16, v6

    .line 5695
    .local v16, "matchesAware":Z
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_a7

    if-eqz v1, :cond_82

    .line 5696
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_a7

    :cond_82
    if-nez v15, :cond_86

    if-eqz v16, :cond_a7

    .line 5698
    :cond_86
    iget-object v5, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 5699
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_a5

    .line 5700
    int-to-long v6, v2

    .line 5701
    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 5700
    move-object v5, v13

    move v9, v11

    move-object/from16 v17, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v17, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static/range {v5 .. v10}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 5702
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_a7

    .line 5703
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a7

    .line 5699
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v17    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_a5
    move-object/from16 v17, v10

    .line 5686
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v13    # "p":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "matchesUnaware":Z
    .end local v16    # "matchesAware":Z
    :cond_a7
    :goto_a7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    .line 5709
    .end local v12    # "index":I
    :cond_aa
    return-object v3
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .registers 3
    .param p1, "userId"    # I

    .line 3642
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateFlagsForUid(I)I
    .registers 9
    .param p1, "uid"    # I

    .line 4586
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4587
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 4588
    return v2

    .line 4590
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4591
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4593
    :cond_16
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4594
    .local v1, "callingUserId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 4595
    .local v3, "appId":I
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 4596
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v5, :cond_37

    .line 4597
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 4598
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 4599
    return v2

    .line 4601
    :cond_32
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4602
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_37
    instance-of v5, v4, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_4a

    .line 4603
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 4604
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {p0, v5, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4605
    return v2

    .line 4607
    :cond_45
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPrivateFlags()I

    move-result v2

    return v2

    .line 4609
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

    .line 5885
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5886
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5888
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5889
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5890
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_24

    .line 5891
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5892
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    iget-object v5, v2, Lcom/android/server/pm/SharedUserSetting;->processes:Landroid/util/ArrayMap;

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProcessInfo(Ljava/util/Map;J)Landroid/util/ArrayMap;

    move-result-object v3

    return-object v3

    .line 5893
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_24
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    if-eqz v2, :cond_3c

    .line 5894
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5895
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    .line 5896
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

    .line 5898
    .end local v2    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v6    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3c
    return-object v5
.end method

.method public final getProfileParent(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 2063
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2065
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 2067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2065
    return-object v2

    .line 2067
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2068
    throw v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;
    .registers 23
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 4190
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p4

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_10

    return-object v8

    .line 4191
    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 4192
    .local v16, "callingUid":I
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1, v15}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v13

    .line 4193
    .end local p2    # "flags":J
    .local v13, "flags":J
    const/4 v4, 0x0

    const-string v5, "get provider info"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4195
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v12

    .line 4196
    .local v12, "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
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

    .line 4198
    :cond_53
    if-nez v12, :cond_56

    .line 4199
    return-object v8

    .line 4202
    :cond_56
    invoke-interface {v12}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 4203
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_ac

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_6a

    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    goto :goto_af

    .line 4207
    :cond_6a
    invoke-static {v10, v12, v13, v14, v15}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 4208
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 4210
    return-object v8

    .line 4212
    :cond_81
    invoke-interface {v10, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v17

    .line 4213
    .local v17, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    nop

    .line 4214
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    move-wide v1, v13

    move-object/from16 v3, v17

    move/from16 v4, p4

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4215
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_97

    .line 4216
    return-object v8

    .line 4218
    :cond_97
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    move-object v9, v12

    move-object v1, v10

    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-wide v10, v13

    move-object v2, v12

    .end local v12    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .local v2, "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    move-object/from16 v12, v17

    move-wide v3, v13

    .end local v13    # "flags":J
    .local v3, "flags":J
    move-object v13, v0

    move/from16 v14, p4

    move-object v15, v1

    invoke-static/range {v8 .. v15}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedProvider;JLcom/android/server/pm/pkg/PackageUserStateInternal;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    return-object v5

    .line 4221
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v2    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v3    # "flags":J
    .end local v17    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .restart local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v12    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .restart local v13    # "flags":J
    :cond_ab
    return-object v8

    .line 4203
    :cond_ac
    move-object v1, v10

    move-object v2, v12

    move-wide v3, v13

    .line 4204
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v12    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .end local v13    # "flags":J
    .restart local v1    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v2    # "p":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    .restart local v3    # "flags":J
    :goto_af
    return-object v8
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;
    .registers 16
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "flags"    # J
    .param p4, "userId"    # I

    .line 3881
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 3882
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3883
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 3884
    const/4 v6, 0x0

    const-string v7, "get receiver info"

    const/4 v5, 0x0

    move-object v2, p0

    move v3, v0

    move v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3887
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v2, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v9

    .line 3888
    .local v9, "a":Lcom/android/internal/pm/pkg/component/ParsedActivity;
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

    .line 3891
    :cond_48
    if-nez v9, :cond_4b

    .line 3892
    return-object v1

    .line 3895
    :cond_4b
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 3896
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_81

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_5c

    goto :goto_81

    .line 3900
    :cond_5c
    invoke-static {v10, v9, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3901
    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, v10

    move v4, v0

    move-object v5, p1

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 3902
    return-object v1

    .line 3904
    :cond_6f
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 3905
    invoke-interface {v10, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    .line 3904
    move-object v3, v9

    move-wide v4, p2

    move v7, p4

    move-object v8, v10

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedActivity;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1

    .line 3907
    :cond_80
    return-object v1

    .line 3897
    :cond_81
    :goto_81
    return-object v1
.end method

.method public getRenamedPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3660
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

    .line 1850
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 1851
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1852
    .local v0, "callingUid":I
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 1853
    const/4 v5, 0x0

    const-string v6, "get service info"

    const/4 v4, 0x0

    move-object v1, p0

    move v2, v0

    move v3, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 1856
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

    .line 1861
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v15

    .line 1862
    .local v15, "s":Lcom/android/internal/pm/pkg/component/ParsedService;
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    if-eqz v0, :cond_30

    .line 1863
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

    .line 1866
    :cond_30
    const/4 v14, 0x0

    if-nez v15, :cond_34

    .line 1867
    return-object v14

    .line 1870
    :cond_34
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v15}, Lcom/android/internal/pm/pkg/component/ParsedService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1871
    .local v16, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v8, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    move-object/from16 v9, v16

    move-object v10, v15

    move-wide/from16 v11, p2

    move/from16 v13, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/ComputerEngine$Settings;->isEnabledAndMatch(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedMainComponent;JI)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1872
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 1873
    .local v13, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v13, :cond_5e

    return-object v14

    .line 1874
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

    .line 1876
    return-object v14

    .line 1878
    :cond_6f
    nop

    .line 1879
    move/from16 v0, p4

    invoke-interface {v13, v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    .line 1878
    move-object/from16 v8, v16

    move-object v9, v15

    move-wide/from16 v10, p2

    move-object v1, v13

    .end local v13    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v1, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v13, p4

    move-object v14, v1

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/internal/pm/pkg/component/ParsedService;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    return-object v2

    .line 1881
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

    .line 3914
    move-object/from16 v9, p0

    move/from16 v10, p4

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_e

    return-object v11

    .line 3915
    :cond_e
    const-string/jumbo v0, "userId must be >= 0"

    invoke-static {v10, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 3916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 3917
    .local v12, "callingUid":I
    invoke-virtual {v9, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3918
    return-object v11

    .line 3921
    :cond_1f
    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v13

    .line 3923
    .end local p2    # "flags":J
    .local v13, "flags":J
    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3924
    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3926
    const-string v1, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_57

    .line 3928
    const/4 v0, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v9, v15, v12, v10, v0}, Lcom/android/server/pm/ComputerEngine;->canRequestPackageInstalls(Ljava/lang/String;IIZ)Z

    move-result v1

    if-nez v1, :cond_5c

    iget-object v1, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3930
    const-string v2, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, v9, Lcom/android/server/pm/ComputerEngine;->mContext:Landroid/content/Context;

    .line 3932
    const-string v2, "android.permission.ACCESS_SHARED_LIBRARIES"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_5c

    .line 3926
    :cond_57
    move-object/from16 v15, p1

    goto :goto_5c

    .line 3924
    :cond_5a
    move-object/from16 v15, p1

    .line 3932
    :cond_5c
    :goto_5c
    const/4 v0, 0x1

    :cond_5d
    move/from16 v16, v0

    .line 3935
    .local v16, "canSeeStaticAndSdkLibraries":Z
    nop

    .line 3936
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v8

    .line 3937
    .local v8, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    const/4 v0, 0x0

    .line 3938
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 3939
    .local v7, "libCount":I
    const/4 v1, 0x0

    move v5, v1

    .local v5, "i":I
    :goto_6b
    if-ge v5, v7, :cond_178

    .line 3940
    invoke-virtual {v8, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 3941
    .local v6, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v6, :cond_7e

    .line 3942
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_170

    .line 3945
    :cond_7e
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v3

    .line 3946
    .local v3, "versionCount":I
    const/4 v1, 0x0

    move-object/from16 v17, v0

    move v4, v1

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "j":I
    .local v17, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_86
    if-ge v4, v3, :cond_162

    .line 3947
    invoke-virtual {v6, v4}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/pm/SharedLibraryInfo;

    .line 3948
    .local v18, "libInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v16, :cond_ae

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isSdk()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 3949
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3948
    :cond_a6
    move/from16 v36, v5

    move/from16 v38, v7

    move-object/from16 v39, v8

    goto/16 :goto_16e

    .line 3951
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    .line 3952
    .local v19, "identity":J
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v33

    .line 3954
    .local v33, "declaringPackage":Landroid/content/pm/VersionedPackage;
    nop

    .line 3955
    :try_start_b7
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3956
    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v21

    const-wide/32 v0, 0x4000000

    or-long v23, v13, v0

    .line 3958
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0
    :try_end_c8
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_151

    .line 3954
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

    .line 3959
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_e7

    .line 3963
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3960
    goto :goto_141

    .line 3963
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_e7
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3964
    nop

    .line 3965
    new-instance v0, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 3966
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object v24

    .line 3967
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v26

    .line 3968
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result v28

    .line 3969
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_10e

    .line 3970
    move-object/from16 v30, v11

    goto :goto_119

    .line 3971
    :cond_10e
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v30, v1

    .line 3972
    :goto_119
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result v31

    .line 3973
    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-wide v3, v13

    move v5, v12

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/ComputerEngine;->getPackagesUsingSharedLibrary(Landroid/content/pm/SharedLibraryInfo;JII)Landroid/util/Pair;

    move-result-object v32

    move-object/from16 v21, v0

    move-object/from16 v29, v33

    invoke-direct/range {v21 .. v32}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V

    .line 3974
    .local v0, "resLibInfo":Landroid/content/pm/SharedLibraryInfo;
    if-nez v17, :cond_13a

    .line 3975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    goto :goto_13c

    .line 3974
    :cond_13a
    move-object/from16 v1, v17

    .line 3977
    .end local v17    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_13c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v1

    .line 3946
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

    .line 3963
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

    .line 3964
    throw v0

    .line 3946
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

    .line 3939
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

    .line 3981
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

    .line 3667
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0}, Lcom/android/server/pm/SharedLibrariesRead;->getAll()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J

    .line 1886
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSharedLibraries:Lcom/android/server/pm/SharedLibrariesRead;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/SharedLibrariesRead;->getSharedLibraryInfo(Ljava/lang/String;J)Landroid/content/pm/SharedLibraryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;
    .registers 3
    .param p1, "sharedUserAppId"    # I

    .line 5944
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

    .line 5950
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserPackages(I)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5726
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5727
    .local v0, "packageSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v0, :cond_4f

    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    if-nez v1, :cond_11

    goto :goto_4f

    .line 5731
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5732
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromPackageName(Ljava/lang/String;)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 5733
    .local v1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 5734
    .local v2, "numPackages":I
    new-array v3, v2, [Ljava/lang/String;

    .line 5735
    .local v3, "res":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 5736
    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_23
    if-ge v5, v2, :cond_41

    .line 5737
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5738
    .local v6, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v6, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 5739
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "i":I
    .local v7, "i":I
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    move v4, v7

    .line 5736
    .end local v6    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 5742
    .end local v5    # "index":I
    :cond_41
    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Ljava/lang/String;

    .line 5743
    if-eqz v3, :cond_4c

    move-object v5, v3

    goto :goto_4e

    :cond_4c
    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :goto_4e
    return-object v5

    .line 5728
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

    .line 6041
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUsers()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSigningDetails(I)Landroid/content/pm/SigningDetails;
    .registers 6
    .param p1, "uid"    # I

    .line 3030
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3031
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 3032
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_24

    .line 3033
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_18

    .line 3034
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v2

    .line 3035
    :cond_18
    instance-of v2, v1, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v2, :cond_24

    .line 3036
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 3037
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    return-object v3

    .line 3040
    .end local v2    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_24
    sget-object v2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object v2
.end method

.method public getSigningDetails(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3022
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3023
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v0, :cond_c

    .line 3024
    const/4 v1, 0x0

    return-object v1

    .line 3026
    :cond_c
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    return-object v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5418
    if-nez p1, :cond_4

    .line 5419
    const/4 v0, 0x0

    return-object v0

    .line 5421
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5422
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5423
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5424
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_47

    .line 5425
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 5424
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-nez v3, :cond_47

    .line 5430
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v3

    if-eq v3, v0, :cond_37

    const/16 v3, 0x3e8

    if-ne v3, v0, :cond_2f

    goto :goto_37

    .line 5432
    :cond_2f
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "May not access signing KeySet of other apps."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5434
    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v3}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v3

    .line 5435
    .local v3, "ksms":Lcom/android/server/pm/KeySetManagerService;
    new-instance v4, Landroid/content/pm/KeySet;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/KeySetManagerService;->getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v4

    .line 5426
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

    .line 5428
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

    .line 4227
    nop

    .line 4228
    invoke-virtual {p0}, Lcom/android/server/pm/ComputerEngine;->getSharedLibraries()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v0

    .line 4229
    .local v0, "sharedLibraries":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 4230
    .local v1, "libs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    .line 4231
    .local v2, "libCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_6d

    .line 4232
    invoke-virtual {v0, v3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/WatchedLongSparseArray;

    .line 4233
    .local v4, "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    if-nez v4, :cond_1a

    .line 4234
    goto :goto_6a

    .line 4236
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v5

    .line 4237
    .local v5, "versionCount":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1f
    if-ge v6, v5, :cond_6a

    .line 4238
    invoke-virtual {v4, v6}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/SharedLibraryInfo;

    .line 4239
    .local v7, "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->isStatic()Z

    move-result v8

    if-nez v8, :cond_39

    .line 4240
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4241
    goto :goto_6a

    .line 4243
    :cond_39
    nop

    .line 4244
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v8

    .line 4245
    .local v8, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v8, :cond_67

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4246
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 4245
    const-wide/32 v13, 0x4000000

    move-object v9, p0

    move-object v10, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/ComputerEngine;->filterSharedLibPackage(Lcom/android/server/pm/pkg/PackageStateInternal;IIJ)Z

    move-result v9

    if-nez v9, :cond_67

    .line 4248
    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4249
    goto :goto_6a

    .line 4237
    .end local v7    # "libraryInfo":Landroid/content/pm/SharedLibraryInfo;
    .end local v8    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 4231
    .end local v4    # "versionedLib":Lcom/android/server/utils/WatchedLongSparseArray;, "Lcom/android/server/utils/WatchedLongSparseArray<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v5    # "versionCount":I
    .end local v6    # "j":I
    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4253
    .end local v3    # "i":I
    :cond_6d
    return-object v1
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3833
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 3834
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, -0x1

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_e

    goto :goto_26

    .line 3837
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3838
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3837
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3839
    return v1

    .line 3841
    :cond_1d
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v1

    return v1

    .line 3835
    :cond_26
    :goto_26
    return v1
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .registers 6
    .param p1, "sharedUserName"    # Ljava/lang/String;

    .line 4541
    const/4 v0, -0x1

    if-nez p1, :cond_4

    .line 4542
    return v0

    .line 4544
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4545
    .local v1, "callingUid":I
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 4546
    return v0

    .line 4548
    :cond_f
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getSharedUserFromId(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    .line 4549
    .local v2, "suid":Lcom/android/server/pm/SharedUserSetting;
    if-eqz v2, :cond_24

    .line 4550
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4549
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v3

    if-nez v3, :cond_24

    .line 4551
    iget v0, v2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    return v0

    .line 4553
    :cond_24
    return v0
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 11
    .param p1, "uid"    # I

    .line 5854
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5855
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 5857
    :cond_a
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 5858
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    .line 5859
    .local v1, "settingBase":Lcom/android/server/pm/SettingBase;
    instance-of v2, v1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_44

    .line 5860
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 5861
    .local v2, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5862
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v3

    .line 5863
    .local v3, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/16 v4, 0x2710

    .line 5864
    .local v4, "vers":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 5865
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_27
    if-ge v6, v5, :cond_43

    .line 5866
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5867
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    if-eqz v8, :cond_40

    .line 5868
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v8

    .line 5869
    .local v8, "v":I
    if-ge v8, v4, :cond_40

    move v4, v8

    .line 5865
    .end local v7    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "v":I
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 5872
    .end local v6    # "index":I
    :cond_43
    return v4

    .line 5873
    .end local v2    # "sus":Lcom/android/server/pm/SharedUserSetting;
    .end local v3    # "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v4    # "vers":I
    .end local v5    # "numPackages":I
    :cond_44
    instance-of v2, v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v2, :cond_5a

    .line 5874
    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 5875
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 5876
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v3

    return v3

    .line 5879
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

    .line 5750
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5751
    .local v1, "unusedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 5752
    .local v13, "currentTimeInMillis":J
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5753
    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackages()Landroid/util/ArrayMap;

    move-result-object v15

    .line 5754
    .local v15, "packageStates":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v2, 0x0

    move v11, v2

    .local v11, "index":I
    :goto_13
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v11, v2, :cond_66

    .line 5755
    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5756
    .local v16, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 5757
    move/from16 v20, v11

    goto :goto_63

    .line 5759
    :cond_2a
    iget-object v2, v0, Lcom/android/server/pm/ComputerEngine;->mDexManager:Lcom/android/server/pm/dex/DexManager;

    .line 5760
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v17

    .line 5761
    .local v17, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    nop

    .line 5762
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStates()Landroid/util/SparseArray;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/pkg/PackageStateUtils;->getEarliestFirstInstallTime(Landroid/util/SparseArray;)J

    move-result-wide v2

    .line 5764
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestPackageUseTimeInMills()J

    move-result-wide v9

    .line 5765
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v18

    .line 5761
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

    .line 5766
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5754
    .end local v16    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v17    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :cond_63
    :goto_63
    add-int/lit8 v11, v20, 0x1

    .end local v20    # "index":I
    .restart local v11    # "index":I
    goto :goto_13

    .line 5769
    .end local v11    # "index":I
    :cond_66
    return-object v1
.end method

.method public final getUsed()I
    .registers 2

    .line 500
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    return v0
.end method

.method public getUserInfos()[Landroid/content/pm/UserInfo;
    .registers 2

    .line 6047
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mVersion:I

    return v0
.end method

.method public getVisibilityAllowList(Ljava/lang/String;I)[I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5503
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getVisibilityAllowLists(Ljava/lang/String;[I)Landroid/util/SparseArray;

    move-result-object v0

    .line 5505
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

    .line 5492
    nop

    .line 5493
    const/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 5494
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v0, :cond_b

    .line 5495
    const/4 v1, 0x0

    return-object v1

    .line 5497
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

    .line 6035
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

    .line 4378
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 4379
    .local v0, "p":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 4380
    return v1

    .line 4382
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4383
    .local v2, "callingUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4384
    .local v3, "callingUserId":I
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 4385
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v4, :cond_3b

    .line 4386
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_3b

    .line 4389
    :cond_25
    packed-switch p3, :pswitch_data_3c

    .line 4395
    return v1

    .line 4393
    :pswitch_29
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v1

    return v1

    .line 4391
    :pswitch_32
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/SigningDetails;->hasCertificate([B)Z

    move-result v1

    return v1

    .line 4387
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

    .line 4402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4403
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4404
    .local v1, "callingUserId":I
    nop

    .line 4405
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/pm/ComputerEngine;->getSigningDetailsAndFilterAccess(III)Landroid/content/pm/SigningDetails;

    move-result-object v2

    .line 4406
    .local v2, "signingDetails":Landroid/content/pm/SigningDetails;
    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 4407
    return v3

    .line 4409
    :cond_11
    packed-switch p3, :pswitch_data_20

    .line 4415
    return v3

    .line 4413
    :pswitch_15
    invoke-virtual {v2, p2}, Landroid/content/pm/SigningDetails;->hasSha256Certificate([B)Z

    move-result v3

    return v3

    .line 4411
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

    .line 435
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3744
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 3745
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

    .line 5380
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5381
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5380
    invoke-virtual {v1, p1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    .line 5382
    .local v1, "appEnabledSetting":I
    if-nez v1, :cond_19

    .line 5383
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    .line 5384
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v2, :cond_14

    .line 5386
    return v0

    .line 5388
    :cond_14
    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_1e

    return v0

    .line 5390
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    move v0, v2

    :cond_1d
    return v0

    .line 5392
    .end local v1    # "appEnabledSetting":I
    :catch_1e
    move-exception v1

    .line 5393
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "callingUid"    # I

    .line 5575
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5576
    return v0

    .line 5578
    :cond_4
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 5579
    .local v1, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v1, :cond_f

    .line 5580
    return v0

    .line 5583
    :cond_f
    nop

    .line 5584
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    .line 5583
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 5585
    .local v2, "installerPackageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_28

    .line 5586
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    nop

    .line 5585
    :goto_29
    return v0
.end method

.method public final isCallerSameApp(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2292
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

    .line 2297
    invoke-static {p2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    .line 2298
    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 2299
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    .line 2298
    :goto_18
    return v1

    .line 2301
    :cond_19
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2302
    .local v0, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz p3, :cond_2d

    invoke-static {p2}, Landroid/os/Process;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2303
    invoke-direct {p0, p2}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p2

    .line 2305
    :cond_2d
    if-eqz v0, :cond_3a

    .line 2306
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 2305
    :goto_3b
    return v1
.end method

.method public isComponentEffectivelyEnabled(Landroid/content/pm/ComponentInfo;Landroid/os/UserHandle;)Z
    .registers 10
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 5354
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 5355
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 5356
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5357
    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v3

    .line 5358
    .local v3, "appEnabledSetting":I
    const/4 v4, 0x1

    if-nez v3, :cond_17

    .line 5359
    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1a

    .line 5360
    return v0

    .line 5362
    :cond_17
    if-eq v3, v4, :cond_1a

    .line 5363
    return v0

    .line 5366
    :cond_1a
    iget-object v5, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 5367
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 5366
    invoke-virtual {v5, v6, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v5

    .line 5368
    .local v5, "componentEnabledSetting":I
    if-nez v5, :cond_2b

    .line 5369
    invoke-virtual {p1}, Landroid/content/pm/ComponentInfo;->isEnabled()Z

    move-result v0
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_2a} :catch_2f

    return v0

    .line 5370
    :cond_2b
    if-ne v5, v4, :cond_2e

    move v0, v4

    :cond_2e
    return v0

    .line 5371
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v3    # "appEnabledSetting":I
    .end local v5    # "componentEnabledSetting":I
    :catch_2f
    move-exception v1

    .line 5372
    .local v1, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method public final isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 2315
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2316
    return v0

    .line 2318
    :cond_8
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2319
    return v0

    .line 2321
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

    .line 2326
    const/high16 v0, 0x200000

    const/high16 v1, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2d

    .line 2327
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getActivity(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2328
    .local v4, "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_11

    .line 2329
    return v2

    .line 2331
    :cond_11
    nop

    .line 2332
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 2333
    .local v1, "visibleToInstantApp":Z
    :goto_1c
    nop

    .line 2334
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_26

    move v0, v3

    goto :goto_27

    :cond_26
    move v0, v2

    .line 2336
    .local v0, "explicitlyVisibleToInstantApp":Z
    :goto_27
    if-eqz v1, :cond_2c

    if-eqz v0, :cond_2c

    move v2, v3

    :cond_2c
    return v2

    .line 2337
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_2d
    const/4 v4, 0x2

    if-ne p2, v4, :cond_55

    .line 2338
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v4, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getReceiver(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedActivity;

    move-result-object v4

    .line 2339
    .restart local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    if-nez v4, :cond_39

    .line 2340
    return v2

    .line 2342
    :cond_39
    nop

    .line 2343
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v1, v5

    if-eqz v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v2

    .line 2344
    .restart local v1    # "visibleToInstantApp":Z
    :goto_44
    nop

    .line 2345
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_4e

    move v0, v3

    goto :goto_4f

    :cond_4e
    move v0, v2

    .line 2347
    .restart local v0    # "explicitlyVisibleToInstantApp":Z
    :goto_4f
    if-eqz v1, :cond_54

    if-nez v0, :cond_54

    move v2, v3

    :cond_54
    return v2

    .line 2348
    .end local v0    # "explicitlyVisibleToInstantApp":Z
    .end local v1    # "visibleToInstantApp":Z
    .end local v4    # "activity":Lcom/android/internal/pm/pkg/component/ParsedActivity;
    :cond_55
    const/4 v0, 0x3

    if-ne p2, v0, :cond_6b

    .line 2349
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getService(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedService;

    move-result-object v0

    .line 2350
    .local v0, "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    if-eqz v0, :cond_69

    .line 2351
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedService;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    nop

    .line 2350
    :goto_6a
    return v2

    .line 2352
    .end local v0    # "service":Lcom/android/internal/pm/pkg/component/ParsedService;
    :cond_6b
    const/4 v0, 0x4

    if-ne p2, v0, :cond_81

    .line 2353
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    invoke-interface {v0, p1}, Lcom/android/server/pm/resolution/ComponentResolverApi;->getProvider(Landroid/content/ComponentName;)Lcom/android/internal/pm/pkg/component/ParsedProvider;

    move-result-object v0

    .line 2354
    .local v0, "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    if-eqz v0, :cond_7f

    .line 2355
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getFlags()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_7f

    move v2, v3

    goto :goto_80

    :cond_7f
    nop

    .line 2354
    :goto_80
    return v2

    .line 2356
    .end local v0    # "provider":Lcom/android/internal/pm/pkg/component/ParsedProvider;
    :cond_81
    if-nez p2, :cond_88

    .line 2357
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 2359
    :cond_88
    return v2
.end method

.method public final isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userId"    # I
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 2374
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

    .line 4025
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 4026
    const-string/jumbo v2, "no_install_unknown_sources_globally"

    invoke-virtual {v0, v2, p3}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_29

    .line 4030
    :cond_18
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 4031
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;->getPackageTrustedToInstallApps(Ljava/lang/String;I)I

    move-result v0

    .line 4032
    .local v0, "isTrusted":I
    if-eqz v0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    return v1

    .line 4034
    .end local v0    # "isTrusted":I
    :cond_28
    return v2

    .line 4028
    :cond_29
    :goto_29
    return v1
.end method

.method public final isInstantApp(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2380
    .local v6, "callingUid":I
    const/4 v4, 0x0

    const-string/jumbo v5, "isInstantApp"

    const/4 v3, 0x1

    move-object v0, p0

    move v1, v6

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 2383
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternal(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public final isInstantAppInternal(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2391
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->isInstantAppInternalBody(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method protected isInstantAppInternalBody(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 2396
    invoke-static {p3}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2397
    invoke-direct {p0, p3}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result p3

    .line 2399
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 2400
    .local v0, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2402
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 2403
    invoke-virtual {p0, p3, p2}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2405
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    .line 2404
    invoke-virtual {v2, p2, v3, v4}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_2f
    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    move v2, v1

    .line 2406
    .local v2, "returnAllowed":Z
    :goto_32
    if-eqz v2, :cond_3d

    .line 2407
    invoke-interface {v0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v1

    return v1

    .line 2409
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

    .line 2458
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

    .line 2459
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

    .line 2460
    .local v4, "debug":Z
    :goto_19
    const-string v6, "PackageManager"

    if-eqz v4, :cond_33

    .line 2461
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

    .line 2464
    :cond_33
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_34
    if-ge v7, v3, :cond_c1

    .line 2465
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2466
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2467
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v10, v9}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 2468
    .local v10, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_a3

    .line 2470
    iget-boolean v11, v8, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v11, :cond_7c

    .line 2471
    iget-object v11, v0, Lcom/android/server/pm/ComputerEngine;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object v12, v10

    move-object/from16 v13, p1

    move-wide/from16 v14, p5

    move/from16 v16, p3

    invoke-static/range {v11 .. v16}, Lcom/android/server/pm/PackageManagerServiceUtils;->hasAnyDomainApproval(Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/Intent;JI)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 2473
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_7b

    .line 2474
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

    .line 2477
    :cond_7b
    return v2

    .line 2480
    :cond_7c
    move/from16 v11, p3

    invoke-interface {v10, v11}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v12

    if-eqz v12, :cond_bd

    .line 2481
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v5, :cond_a2

    .line 2482
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

    .line 2485
    :cond_a2
    return v2

    .line 2487
    :cond_a3
    move/from16 v11, p3

    if-eqz v4, :cond_bd

    .line 2488
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

    .line 2464
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_bd
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_34

    :cond_c1
    move/from16 v11, p3

    .line 2492
    .end local v7    # "n":I
    return v5
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3714
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3715
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3716
    .local v0, "callingUid":I
    const/4 v6, 0x0

    const-string/jumbo v7, "is package available"

    const/4 v5, 0x0

    move-object v2, p0

    move v3, v0

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 3719
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 3720
    .local v2, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v2, :cond_5d

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 3721
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3722
    return v1

    .line 3724
    :cond_2c
    invoke-interface {v2, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 3725
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v3, :cond_5d

    .line 3728
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/xspace/XSpaceManagerStub;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 3729
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_48

    .line 3730
    return v5

    .line 3732
    :cond_48
    invoke-interface {v2, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 3733
    .local v4, "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    if-eqz v4, :cond_55

    invoke-static {v4}, Landroid/content/pm/PackageParser;->isAvailable(Landroid/content/pm/pkg/FrameworkPackageUserState;)Z

    move-result v6

    if-eqz v6, :cond_55

    move v1, v5

    :cond_55
    return v1

    .line 3736
    .end local v4    # "ownerUserState":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_56
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    return v1

    .line 3739
    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_5d
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

    .line 5102
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

    .line 5440
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5441
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5442
    return v2

    .line 5444
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5447
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5448
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5449
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5451
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5450
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5455
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5456
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5457
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5458
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5460
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5452
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

    .line 5453
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

    .line 5445
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

    .line 5465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5466
    .local v0, "callingUid":I
    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 5467
    return v2

    .line 5469
    :cond_c
    if-eqz p1, :cond_75

    if-nez p2, :cond_11

    goto :goto_75

    .line 5472
    :cond_11
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5473
    .local v1, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5474
    .local v3, "callingUserId":I
    if-eqz v1, :cond_44

    .line 5476
    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v4

    .line 5475
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v4

    if-nez v4, :cond_44

    .line 5480
    invoke-virtual {p2}, Landroid/content/pm/KeySet;->getToken()Landroid/os/IBinder;

    move-result-object v4

    .line 5481
    .local v4, "ksh":Landroid/os/IBinder;
    instance-of v5, v4, Lcom/android/server/pm/KeySetHandle;

    if-eqz v5, :cond_43

    .line 5482
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;

    move-result-object v2

    .line 5483
    .local v2, "ksms":Lcom/android/server/pm/KeySetManagerService;
    move-object v5, v4

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v2, p1, v5}, Lcom/android/server/pm/KeySetManagerService;->packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z

    move-result v5

    return v5

    .line 5485
    .end local v2    # "ksms":Lcom/android/server/pm/KeySetManagerService;
    :cond_43
    return v2

    .line 5477
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

    .line 5478
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

    .line 5470
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

    .line 5108
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

    .line 5096
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

    .line 2532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2534
    .local v0, "identity":J
    :try_start_4
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->isSameProfileGroup(II)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 2536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    return v2

    .line 2536
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2537
    throw v2
.end method

.method public isSuspendingAnyPackages(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "suspendingUserId"    # I
    .param p3, "targetUserId"    # I

    .line 5114
    invoke-static {p2, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    .line 5115
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

    .line 5116
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .line 5117
    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    .line 5118
    .local v3, "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 5119
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 5120
    const/4 v1, 0x1

    return v1

    .line 5122
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    :cond_33
    goto :goto_10

    .line 5123
    :cond_34
    const/4 v1, 0x0

    return v1
.end method

.method public isUidPrivileged(I)Z
    .registers 11
    .param p1, "uid"    # I

    .line 4614
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4615
    return v1

    .line 4617
    :cond_c
    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4618
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->getBaseSdkSandboxUid()I

    move-result p1

    .line 4620
    :cond_16
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4621
    .local v0, "appId":I
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v2

    .line 4622
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v3, :cond_45

    .line 4623
    move-object v3, v2

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    .line 4624
    .local v3, "sus":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 4625
    invoke-virtual {v3}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v4

    .line 4626
    .local v4, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 4627
    .local v5, "numPackages":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_31
    if-ge v6, v5, :cond_44

    .line 4628
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 4629
    .local v7, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->isPrivileged()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 4630
    const/4 v1, 0x1

    return v1

    .line 4627
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

    .line 4633
    :cond_45
    instance-of v3, v2, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_51

    .line 4634
    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 4635
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v3

    return v3

    .line 4633
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_51
    :goto_51
    nop

    .line 4637
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

    .line 4941
    move-object/from16 v8, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4942
    .local v9, "callingUid":I
    if-eqz p1, :cond_d

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_11

    .line 4943
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :goto_11
    move v10, v0

    .line 4944
    .local v10, "userId":I
    const/4 v4, 0x0

    const-string/jumbo v5, "queryContentProviders"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4946
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 4947
    :cond_2b
    move-wide/from16 v0, p3

    invoke-virtual {v8, v0, v1, v10}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide v11

    .line 4948
    .end local p3    # "flags":J
    .local v11, "flags":J
    const/4 v13, 0x0

    .line 4949
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

    .line 4951
    .local v6, "matchList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    if-nez v6, :cond_46

    const/4 v0, 0x0

    goto :goto_4a

    :cond_46
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_4a
    move v7, v0

    .line 4952
    .local v7, "listSize":I
    const/4 v0, 0x0

    move-object v14, v13

    move v13, v0

    .local v13, "i":I
    .local v14, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ProviderInfo;>;"
    :goto_4e
    if-ge v13, v7, :cond_95

    .line 4953
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ProviderInfo;

    .line 4954
    .local v15, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 4955
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    .line 4954
    invoke-static {v0, v15, v11, v12, v10}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v0

    if-nez v0, :cond_66

    .line 4957
    goto :goto_92

    .line 4959
    :cond_66
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v16

    .line 4960
    .local v16, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v15, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v1, v15, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4962
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v2, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 4964
    goto :goto_92

    .line 4966
    :cond_85
    if-nez v14, :cond_8f

    .line 4967
    new-instance v0, Ljava/util/ArrayList;

    sub-int v1, v7, v13

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v14, v0

    .line 4969
    :cond_8f
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4952
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v15    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v16    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_92
    add-int/lit8 v13, v13, 0x1

    goto :goto_4e

    .line 4972
    .end local v13    # "i":I
    :cond_95
    if-eqz v14, :cond_a2

    .line 4973
    sget-object v0, Lcom/android/server/pm/ComputerEngine;->sProviderInitOrderSorter:Ljava/util/Comparator;

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4974
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0

    .line 4977
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

    .line 5005
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v15, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 5006
    .local v14, "callingUid":I
    const/4 v4, 0x0

    const-string/jumbo v5, "queryInstrumentationAsUser"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 5008
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0

    .line 5009
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5011
    .local v0, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/InstrumentationInfo;>;"
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    .line 5012
    .local v1, "numInstrumentations":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_30
    if-ge v2, v1, :cond_8d

    .line 5013
    iget-object v3, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v2}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 5014
    .local v3, "p":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    if-eqz v7, :cond_4a

    .line 5015
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    goto :goto_4a

    :cond_47
    move/from16 v18, v14

    goto :goto_88

    .line 5016
    :cond_4a
    :goto_4a
    invoke-interface {v3}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5017
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v6, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 5018
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v6, v4}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    .line 5019
    .local v13, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v5, :cond_84

    if-eqz v13, :cond_84

    .line 5020
    invoke-virtual {v6, v13, v14, v15}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 5021
    move/from16 v18, v14

    goto :goto_88

    .line 5023
    :cond_67
    invoke-interface {v13, v15}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    .line 5024
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

    invoke-static/range {v8 .. v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;Lcom/android/server/pm/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v8

    .line 5026
    .local v8, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v8, :cond_88

    .line 5027
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    .line 5019
    .end local v8    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v16    # "state":Lcom/android/server/pm/pkg/PackageUserStateInternal;
    .end local v17    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v18    # "callingUid":I
    .restart local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v14    # "callingUid":I
    :cond_84
    move-object/from16 v17, v13

    move/from16 v18, v14

    .line 5012
    .end local v3    # "p":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
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

    .line 5032
    .end local v2    # "index":I
    .end local v18    # "callingUid":I
    .restart local v14    # "callingUid":I
    :cond_8d
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2
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

    .line 646
    nop

    .line 648
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 646
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

    move-result-object v0

    return-object v0
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

    .line 638
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

    move-result-object v0

    return-object v0
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

    .line 508
    move-object/from16 v11, p0

    move/from16 v12, p7

    move/from16 v13, p9

    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 511
    :cond_13
    const-wide v0, 0x200000000L

    or-long v6, p3, v0

    .line 513
    .end local p3    # "flags":J
    .local v6, "flags":J
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v14

    .line 514
    .local v14, "instantAppPkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v4, 0x0

    const-string/jumbo v5, "query intent activities"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    .line 518
    .local v15, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 519
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 520
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_4e

    .line 521
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 522
    move-object/from16 v0, p1

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 524
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v10, v0

    move-object v9, v1

    move-object/from16 v16, v2

    goto :goto_52

    .line 529
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_4e
    move-object/from16 v16, p1

    move-object v10, v0

    move-object v9, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v9, "comp":Landroid/content/ComponentName;
    .local v10, "originalIntent":Landroid/content/Intent;
    .local v16, "intent":Landroid/content/Intent;
    :goto_52
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/miui/xspace/XSpaceManagerStub;->isUidBelongtoXSpace(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 530
    const-wide/32 v0, 0x402000

    or-long/2addr v6, v0

    move-wide/from16 v17, v6

    goto :goto_65

    .line 529
    :cond_63
    move-wide/from16 v17, v6

    .line 533
    .end local v6    # "flags":J
    .local v17, "flags":J
    :goto_65
    const/4 v7, 0x1

    if-nez v9, :cond_6d

    if-eqz v15, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v6, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v6, v7

    .line 535
    :goto_6e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p9

    move-object/from16 v3, p2

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->isImplicitImageCaptureIntentAndNotSetByDpc(Landroid/content/Intent;ILjava/lang/String;J)Z

    move-result v19

    .line 533
    move-wide/from16 v1, v17

    move/from16 v3, p9

    move/from16 v4, p7

    move/from16 v5, p10

    move v8, v7

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZZ)J

    move-result-wide v6

    .line 538
    .end local v17    # "flags":J
    .restart local v6    # "flags":J
    new-instance v17, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move/from16 v4, p10

    move/from16 v5, p7

    move-wide/from16 v20, v6

    .end local v6    # "flags":J
    .local v20, "flags":J
    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object/from16 v7, v17

    .line 540
    .local v7, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v0, v11, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 541
    iput-object v11, v7, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 544
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/16 v18, 0x0

    .line 545
    .local v18, "skipPostResolution":Z
    if-eqz v9, :cond_1b2

    .line 546
    move-wide/from16 v5, v20

    .end local v20    # "flags":J
    .local v5, "flags":J
    invoke-virtual {v11, v9, v5, v6, v13}, Lcom/android/server/pm/ComputerEngine;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 547
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_19d

    .line 552
    const-wide/32 v1, 0x800000

    and-long/2addr v1, v5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c7

    move v1, v8

    goto :goto_c8

    :cond_c7
    const/4 v1, 0x0

    .line 554
    .local v1, "matchInstantApp":Z
    :goto_c8
    const-wide/32 v19, 0x1000000

    and-long v19, v5, v19

    cmp-long v2, v19, v3

    if-eqz v2, :cond_d3

    move v2, v8

    goto :goto_d4

    :cond_d3
    const/4 v2, 0x0

    .line 556
    .local v2, "matchVisibleToInstantAppOnly":Z
    :goto_d4
    const-wide/32 v19, 0x2000000

    and-long v19, v5, v19

    cmp-long v3, v19, v3

    if-eqz v3, :cond_df

    move v3, v8

    goto :goto_e0

    :cond_df
    const/4 v3, 0x0

    .line 558
    .local v3, "matchExplicitlyVisibleOnly":Z
    :goto_e0
    if-eqz v14, :cond_e4

    move v4, v8

    goto :goto_e5

    :cond_e4
    const/4 v4, 0x0

    .line 560
    .local v4, "isCallerInstantApp":Z
    :goto_e5
    nop

    .line 561
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 562
    .local v8, "isTargetSameInstantApp":Z
    move-object/from16 p3, v9

    .end local v9    # "comp":Landroid/content/ComponentName;
    .local p3, "comp":Landroid/content/ComponentName;
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_fa

    const/4 v9, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v9, 0x0

    .line 565
    .local v9, "isTargetInstantApp":Z
    :goto_fb
    move-object/from16 p4, v10

    .end local v10    # "originalIntent":Landroid/content/Intent;
    .local p4, "originalIntent":Landroid/content/Intent;
    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v20, 0x100000

    and-int v10, v10, v20

    if-eqz v10, :cond_107

    const/4 v10, 0x1

    goto :goto_108

    :cond_107
    const/4 v10, 0x0

    .line 567
    .local v10, "isTargetVisibleToInstantApp":Z
    :goto_108
    if-eqz v10, :cond_116

    move-object/from16 v20, v14

    .end local v14    # "instantAppPkgName":Ljava/lang/String;
    .local v20, "instantAppPkgName":Ljava/lang/String;
    iget v14, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v21, 0x200000

    and-int v14, v14, v21

    if-nez v14, :cond_118

    const/4 v14, 0x1

    goto :goto_119

    .end local v20    # "instantAppPkgName":Ljava/lang/String;
    .restart local v14    # "instantAppPkgName":Ljava/lang/String;
    :cond_116
    move-object/from16 v20, v14

    .end local v14    # "instantAppPkgName":Ljava/lang/String;
    .restart local v20    # "instantAppPkgName":Ljava/lang/String;
    :cond_118
    const/4 v14, 0x0

    .line 571
    .local v14, "isTargetExplicitlyVisibleToInstantApp":Z
    :goto_119
    if-eqz v10, :cond_123

    if-eqz v3, :cond_120

    if-nez v14, :cond_120

    goto :goto_123

    :cond_120
    const/16 v21, 0x0

    goto :goto_125

    :cond_123
    :goto_123
    const/16 v21, 0x1

    .line 575
    .local v21, "isTargetHiddenFromInstantApp":Z
    :goto_125
    if-nez v8, :cond_136

    if-nez v1, :cond_12d

    if-nez v4, :cond_12d

    if-nez v9, :cond_133

    :cond_12d
    if-eqz v2, :cond_136

    if-eqz v4, :cond_136

    if-eqz v21, :cond_136

    :cond_133
    const/16 v22, 0x1

    goto :goto_138

    :cond_136
    const/16 v22, 0x0

    .line 580
    .local v22, "blockInstantResolution":Z
    :goto_138
    if-eqz p10, :cond_148

    move/from16 v23, v1

    .end local v1    # "matchInstantApp":Z
    .local v23, "matchInstantApp":Z
    iget-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v1, :cond_14a

    .line 582
    invoke-virtual {v11, v15, v12}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_14a

    const/4 v1, 0x1

    goto :goto_14b

    .line 580
    .end local v23    # "matchInstantApp":Z
    .restart local v1    # "matchInstantApp":Z
    :cond_148
    move/from16 v23, v1

    .line 582
    .end local v1    # "matchInstantApp":Z
    .restart local v23    # "matchInstantApp":Z
    :cond_14a
    const/4 v1, 0x0

    .line 583
    .local v1, "resolveForStartNonExported":Z
    :goto_14b
    if-eqz p10, :cond_155

    if-eqz v1, :cond_150

    goto :goto_155

    :cond_150
    move/from16 v24, v1

    move/from16 v25, v2

    goto :goto_173

    :cond_155
    :goto_155
    if-nez v9, :cond_16f

    if-nez v4, :cond_16f

    move/from16 v24, v1

    .end local v1    # "resolveForStartNonExported":Z
    .local v24, "resolveForStartNonExported":Z
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 588
    move/from16 v25, v2

    .end local v2    # "matchVisibleToInstantAppOnly":Z
    .local v25, "matchVisibleToInstantAppOnly":Z
    const/16 v2, 0x3e8

    invoke-virtual {v11, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 587
    invoke-virtual {v11, v1, v12, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_173

    const/4 v1, 0x1

    goto :goto_174

    .line 583
    .end local v24    # "resolveForStartNonExported":Z
    .end local v25    # "matchVisibleToInstantAppOnly":Z
    .restart local v1    # "resolveForStartNonExported":Z
    .restart local v2    # "matchVisibleToInstantAppOnly":Z
    :cond_16f
    move/from16 v24, v1

    move/from16 v25, v2

    .line 587
    .end local v1    # "resolveForStartNonExported":Z
    .end local v2    # "matchVisibleToInstantAppOnly":Z
    .restart local v24    # "resolveForStartNonExported":Z
    .restart local v25    # "matchVisibleToInstantAppOnly":Z
    :cond_173
    :goto_173
    const/4 v1, 0x0

    .line 590
    .local v1, "blockNormalResolution":Z
    :goto_174
    if-nez v22, :cond_198

    if-nez v1, :cond_198

    .line 591
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 592
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 593
    move-object/from16 p1, v0

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local p1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-static/range {p9 .. p9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "blockNormalResolution":Z
    .local v26, "blockNormalResolution":Z
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 595
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-static {v7, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v17, v0

    goto :goto_1a5

    .line 590
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v26    # "blockNormalResolution":Z
    .end local p1    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "blockNormalResolution":Z
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_198
    move-object/from16 p1, v0

    move/from16 v26, v1

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "blockNormalResolution":Z
    .restart local v26    # "blockNormalResolution":Z
    .restart local p1    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_1a5

    .line 547
    .end local v3    # "matchExplicitlyVisibleOnly":Z
    .end local v4    # "isCallerInstantApp":Z
    .end local v8    # "isTargetSameInstantApp":Z
    .end local v20    # "instantAppPkgName":Ljava/lang/String;
    .end local v21    # "isTargetHiddenFromInstantApp":Z
    .end local v22    # "blockInstantResolution":Z
    .end local v23    # "matchInstantApp":Z
    .end local v24    # "resolveForStartNonExported":Z
    .end local v25    # "matchVisibleToInstantAppOnly":Z
    .end local v26    # "blockNormalResolution":Z
    .end local p1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local p3    # "comp":Landroid/content/ComponentName;
    .end local p4    # "originalIntent":Landroid/content/Intent;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v9, "comp":Landroid/content/ComponentName;
    .local v10, "originalIntent":Landroid/content/Intent;
    .local v14, "instantAppPkgName":Ljava/lang/String;
    :cond_19d
    move-object/from16 p1, v0

    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-object/from16 v20, v14

    .line 599
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v10    # "originalIntent":Landroid/content/Intent;
    .end local v14    # "instantAppPkgName":Ljava/lang/String;
    .restart local v20    # "instantAppPkgName":Ljava/lang/String;
    .restart local p3    # "comp":Landroid/content/ComponentName;
    .restart local p4    # "originalIntent":Landroid/content/Intent;
    :goto_1a5
    move-object/from16 v19, p3

    move-wide/from16 v21, v5

    move-object v14, v7

    move-object/from16 p3, v15

    move-object/from16 v8, v17

    move-object/from16 v15, p4

    goto/16 :goto_215

    .line 600
    .end local v5    # "flags":J
    .end local p3    # "comp":Landroid/content/ComponentName;
    .end local p4    # "originalIntent":Landroid/content/Intent;
    .restart local v9    # "comp":Landroid/content/ComponentName;
    .restart local v10    # "originalIntent":Landroid/content/Intent;
    .restart local v14    # "instantAppPkgName":Ljava/lang/String;
    .local v20, "flags":J
    :cond_1b2
    move-object/from16 p3, v9

    move-object/from16 p4, v10

    move-wide/from16 v5, v20

    move-object/from16 v20, v14

    .line 601
    .end local v9    # "comp":Landroid/content/ComponentName;
    .end local v10    # "originalIntent":Landroid/content/Intent;
    .end local v14    # "instantAppPkgName":Ljava/lang/String;
    .restart local v5    # "flags":J
    .local v20, "instantAppPkgName":Ljava/lang/String;
    .restart local p3    # "comp":Landroid/content/ComponentName;
    .restart local p4    # "originalIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    move-wide v3, v5

    move-wide/from16 v21, v5

    .end local v5    # "flags":J
    .local v21, "flags":J
    move/from16 v5, p7

    move/from16 v6, p9

    move-object v14, v7

    .end local v7    # "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    .local v14, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    move/from16 v7, p10

    move/from16 v8, p11

    move-object/from16 v19, p3

    .end local p3    # "comp":Landroid/content/ComponentName;
    .local v19, "comp":Landroid/content/ComponentName;
    move-object v9, v15

    move-object/from16 p3, v15

    move-object/from16 v15, p4

    .end local p4    # "originalIntent":Landroid/content/Intent;
    .local v15, "originalIntent":Landroid/content/Intent;
    .local p3, "pkgName":Ljava/lang/String;
    move-object/from16 v10, v20

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/ComputerEngine;->queryIntentActivitiesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/QueryIntentActivitiesResult;

    move-result-object v9

    .line 604
    .local v9, "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    if-eqz v0, :cond_1e2

    .line 605
    const/16 v18, 0x1

    .line 606
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->answer:Ljava/util/List;

    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_211

    .line 608
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1e2
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->addInstant:Z

    if-eqz v0, :cond_204

    .line 609
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v10

    .line 610
    .local v10, "callingPkgName":Ljava/lang/String;
    invoke-virtual {v11, v10, v13}, Lcom/android/server/pm/ComputerEngine;->isInstantApp(Ljava/lang/String;I)Z

    move-result v23

    .line 611
    .local v23, "isRequesterInstantApp":Z
    iget-object v1, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-wide/from16 v4, v21

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, v23

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/ComputerEngine;->maybeAddInstantAppInstaller(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;JIZZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 615
    .end local v10    # "callingPkgName":Ljava/lang/String;
    .end local v23    # "isRequesterInstantApp":Z
    :cond_204
    iget-boolean v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->sortResult:Z

    if-eqz v0, :cond_20f

    .line 616
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 618
    :cond_20f
    iget-object v0, v9, Lcom/android/server/pm/QueryIntentActivitiesResult;->result:Ljava/util/List;

    .line 620
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_211
    invoke-static {v14, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v8, v0

    .line 623
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "lockedResult":Lcom/android/server/pm/QueryIntentActivitiesResult;
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_215
    if-eqz v15, :cond_21c

    .line 625
    iput-object v15, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 626
    invoke-static {v14, v8}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 629
    :cond_21c
    if-eqz v18, :cond_220

    move-object v0, v8

    goto :goto_233

    :cond_220
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v20

    move/from16 v3, p11

    move/from16 v4, p7

    move/from16 v5, p10

    move/from16 v6, p9

    move-object/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->applyPostResolutionFilter(Ljava/util/List;Ljava/lang/String;ZIZILandroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    :goto_233
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

    .line 767
    move-object/from16 v15, p0

    move/from16 v13, p6

    move-object/from16 v12, p9

    const/4 v11, 0x0

    .line 768
    .local v11, "sortResult":Z
    const/4 v8, 0x0

    .line 769
    .local v8, "addInstant":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 771
    .local v14, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    .line 772
    .local v16, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    if-nez v12, :cond_ad

    .line 773
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    move-object/from16 v10, p1

    move-object/from16 v9, p2

    invoke-virtual {v0, v15, v10, v9, v13}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->shouldSkipCurrentProfile(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 777
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

    .line 779
    const-wide/32 v0, -0x402001

    and-long v0, p3, v0

    move-wide/from16 v17, v0

    .end local p3    # "flags":J
    .local v0, "flags":J
    goto :goto_46

    .line 783
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

    .line 786
    .local v0, "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_62

    .line 792
    invoke-direct {v15, v0, v13}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_62

    .line 773
    .end local v0    # "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17    # "flags":J
    .restart local p3    # "flags":J
    :cond_60
    move-wide/from16 v17, p3

    .line 795
    .end local p3    # "flags":J
    .restart local v17    # "flags":J
    :cond_62
    :goto_62
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, p6

    move-wide/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v19

    .line 798
    .end local v8    # "addInstant":Z
    .local v19, "addInstant":Z
    invoke-direct {v15, v14}, Lcom/android/server/pm/ComputerEngine;->hasNonNegativePriority(Ljava/util/List;)Z

    move-result v20

    .line 805
    .local v20, "hasNonNegativePriorityResult":Z
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 807
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 805
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

    .line 808
    .end local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v0, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->hasWebURI()Z

    move-result v1

    if-nez v1, :cond_a2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a3

    :cond_a2
    const/4 v11, 0x1

    .line 809
    .end local v20    # "hasNonNegativePriorityResult":Z
    :cond_a3
    move-object/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v19

    move-wide/from16 v18, v17

    goto/16 :goto_136

    .line 810
    .end local v0    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v17    # "flags":J
    .end local v19    # "addInstant":Z
    .restart local v8    # "addInstant":Z
    .restart local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .restart local p3    # "flags":J
    :cond_ad
    nop

    .line 811
    const/16 v0, 0x3e8

    invoke-virtual {v15, v12, v0}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v10

    .line 813
    .local v10, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v10, :cond_eb

    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_eb

    if-nez p7, :cond_c7

    .line 814
    move/from16 v9, p5

    invoke-virtual {v15, v10, v9, v13}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v0

    if-nez v0, :cond_ed

    goto :goto_c9

    .line 813
    :cond_c7
    move/from16 v9, p5

    .line 815
    :goto_c9
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 816
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v6

    .line 815
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryActivities(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 819
    .local v0, "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_ed

    .line 820
    invoke-direct {v15, v0, v13}, Lcom/android/server/pm/ComputerEngine;->filterIfNotSystemUser(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ed

    .line 813
    .end local v0    # "queryResult":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_eb
    move/from16 v9, p5

    .line 823
    :cond_ed
    :goto_ed
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_104

    .line 826
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p6

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->isInstantAppResolutionAllowed(Landroid/content/Intent;Ljava/util/List;IZJ)Z

    move-result v8

    move/from16 v17, v8

    goto :goto_106

    .line 823
    :cond_104
    move/from16 v17, v8

    .line 834
    .end local v8    # "addInstant":Z
    .local v17, "addInstant":Z
    :goto_106
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 836
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 834
    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p6

    move-wide/from16 v5, p3

    move-object/from16 v7, p9

    move-object/from16 v19, v8

    move/from16 v8, v18

    move/from16 v9, p7

    move-object/from16 v18, v10

    .end local v10    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v18, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object/from16 v10, v19

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/CrossProfileIntentResolverEngine;->resolveIntent(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;IJLjava/lang/String;ZZLjava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    move-wide/from16 v18, p3

    move-object/from16 v20, v0

    move/from16 v21, v11

    move/from16 v22, v17

    .line 845
    .end local v11    # "sortResult":Z
    .end local v16    # "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .end local v17    # "addInstant":Z
    .end local p3    # "flags":J
    .local v18, "flags":J
    .local v20, "crossProfileResults":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/CrossProfileDomainInfo;>;"
    .local v21, "sortResult":Z
    .local v22, "addInstant":Z
    :goto_136
    iget-object v0, v15, Lcom/android/server/pm/ComputerEngine;->mCrossProfileIntentResolverEngine:Lcom/android/server/pm/CrossProfileIntentResolverEngine;

    .line 849
    invoke-direct {v15, v13}, Lcom/android/server/pm/ComputerEngine;->areWebInstantAppsDisabled(I)Z

    move-result v1

    move-object/from16 v23, v14

    .end local v14    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move v14, v1

    iget-object v1, v15, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    .line 850
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;

    move-object/from16 v17, v2

    invoke-direct {v2, v1}, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ComputerEngine$Settings;)V

    .line 846
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

    .line 845
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

    .line 656
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

    .line 657
    :cond_13
    const/4 v4, 0x0

    const-string/jumbo v5, "query intent receivers"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserOrProfilePermission(IIZZLjava/lang/String;)V

    .line 662
    invoke-virtual {v8, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 663
    .local v11, "instantAppPkgName":Ljava/lang/String;
    const/4 v6, 0x0

    move-wide/from16 v1, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForResolve(JIIZZ)J

    move-result-wide v12

    .line 666
    .end local p3    # "flags":J
    .local v12, "flags":J
    new-instance v7, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    const/4 v3, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p9

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v14, v7

    .line 668
    .local v14, "args":Lcom/android/server/pm/SaferIntentUtils$IntentArgs;
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getCompatibility()Lcom/android/server/compat/PlatformCompat;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 669
    iput-object v8, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->snapshot:Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    .line 671
    const/4 v0, 0x0

    .line 672
    .local v0, "originalIntent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 673
    .local v1, "comp":Landroid/content/ComponentName;
    if-nez v1, :cond_69

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 675
    move-object/from16 v0, p1

    .line 676
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2

    .line 677
    .end local p1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object v7, v0

    move-object v6, v1

    move-object v15, v2

    goto :goto_6d

    .line 680
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_69
    move-object/from16 v15, p1

    move-object v7, v0

    move-object v6, v1

    .end local v0    # "originalIntent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local p1    # "intent":Landroid/content/Intent;
    .local v6, "comp":Landroid/content/ComponentName;
    .local v7, "originalIntent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    :goto_6d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 681
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_118

    .line 682
    invoke-virtual {v8, v6, v12, v13, v9}, Lcom/android/server/pm/ComputerEngine;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 683
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_10e

    .line 688
    const-wide/32 v1, 0x800000

    and-long/2addr v1, v12

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_85

    const/4 v1, 0x1

    goto :goto_86

    :cond_85
    const/4 v1, 0x0

    .line 690
    .local v1, "matchInstantApp":Z
    :goto_86
    const-wide/32 v17, 0x1000000

    and-long v17, v12, v17

    cmp-long v3, v17, v3

    if-eqz v3, :cond_91

    const/4 v3, 0x1

    goto :goto_92

    :cond_91
    const/4 v3, 0x0

    .line 692
    .local v3, "matchVisibleToInstantAppOnly":Z
    :goto_92
    if-eqz v11, :cond_96

    const/4 v4, 0x1

    goto :goto_97

    :cond_96
    const/4 v4, 0x0

    .line 694
    .local v4, "isCallerInstantApp":Z
    :goto_97
    nop

    .line 695
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 696
    .local v2, "isTargetSameInstantApp":Z
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_aa

    const/4 v5, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x0

    .line 699
    .local v5, "isTargetInstantApp":Z
    :goto_ab
    move-object/from16 p4, v6

    .end local v6    # "comp":Landroid/content/ComponentName;
    .local p4, "comp":Landroid/content/ComponentName;
    iget v6, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v17, 0x100000

    and-int v6, v6, v17

    if-nez v6, :cond_b7

    const/4 v6, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v6, 0x0

    .line 701
    .local v6, "isTargetHiddenFromInstantApp":Z
    :goto_b8
    if-nez v2, :cond_c9

    if-nez v1, :cond_c0

    if-nez v4, :cond_c0

    if-nez v5, :cond_c6

    :cond_c0
    if-eqz v3, :cond_c9

    if-eqz v4, :cond_c9

    if-eqz v6, :cond_c9

    :cond_c6
    const/16 v17, 0x1

    goto :goto_cb

    :cond_c9
    const/16 v17, 0x0

    .line 707
    .local v17, "blockInstantResolution":Z
    :goto_cb
    if-nez v5, :cond_e5

    if-nez v4, :cond_e5

    move/from16 v18, v1

    .end local v1    # "matchInstantApp":Z
    .local v18, "matchInstantApp":Z
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 709
    move/from16 v19, v2

    .end local v2    # "isTargetSameInstantApp":Z
    .local v19, "isTargetSameInstantApp":Z
    const/16 v2, 0x3e8

    invoke-virtual {v8, v1, v2}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    .line 708
    invoke-virtual {v8, v1, v10, v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v1

    if-eqz v1, :cond_e9

    const/4 v2, 0x1

    goto :goto_ea

    .line 707
    .end local v18    # "matchInstantApp":Z
    .end local v19    # "isTargetSameInstantApp":Z
    .restart local v1    # "matchInstantApp":Z
    .restart local v2    # "isTargetSameInstantApp":Z
    :cond_e5
    move/from16 v18, v1

    move/from16 v19, v2

    .line 708
    .end local v1    # "matchInstantApp":Z
    .end local v2    # "isTargetSameInstantApp":Z
    .restart local v18    # "matchInstantApp":Z
    .restart local v19    # "isTargetSameInstantApp":Z
    :cond_e9
    const/4 v2, 0x0

    :goto_ea
    move v1, v2

    .line 711
    .local v1, "blockNormalResolution":Z
    if-nez v17, :cond_109

    if-nez v1, :cond_109

    .line 712
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 713
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 714
    move-object/from16 p1, v0

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .local p1, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Ljava/util/ArrayList;

    move/from16 v20, v1

    const/4 v1, 0x1

    .end local v1    # "blockNormalResolution":Z
    .local v20, "blockNormalResolution":Z
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-static {v14, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object/from16 v16, v0

    goto :goto_112

    .line 711
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "blockNormalResolution":Z
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    .restart local v1    # "blockNormalResolution":Z
    .restart local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_109
    move-object/from16 p1, v0

    move/from16 v20, v1

    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v1    # "blockNormalResolution":Z
    .restart local v20    # "blockNormalResolution":Z
    .restart local p1    # "si":Landroid/content/pm/ServiceInfo;
    goto :goto_112

    .line 683
    .end local v3    # "matchVisibleToInstantAppOnly":Z
    .end local v4    # "isCallerInstantApp":Z
    .end local v5    # "isTargetInstantApp":Z
    .end local v17    # "blockInstantResolution":Z
    .end local v18    # "matchInstantApp":Z
    .end local v19    # "isTargetSameInstantApp":Z
    .end local v20    # "blockNormalResolution":Z
    .end local p1    # "si":Landroid/content/pm/ServiceInfo;
    .end local p4    # "comp":Landroid/content/ComponentName;
    .restart local v0    # "si":Landroid/content/pm/ServiceInfo;
    .local v6, "comp":Landroid/content/ComponentName;
    :cond_10e
    move-object/from16 p1, v0

    move-object/from16 p4, v6

    .line 719
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "comp":Landroid/content/ComponentName;
    .restart local p4    # "comp":Landroid/content/ComponentName;
    :goto_112
    move-object/from16 v17, p4

    move-object v8, v7

    move-object/from16 v0, v16

    goto :goto_12f

    .line 720
    .end local p4    # "comp":Landroid/content/ComponentName;
    .restart local v6    # "comp":Landroid/content/ComponentName;
    :cond_118
    move-object/from16 p4, v6

    .end local v6    # "comp":Landroid/content/ComponentName;
    .restart local p4    # "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move-wide v3, v12

    move/from16 v5, p5

    move-object/from16 v17, p4

    .end local p4    # "comp":Landroid/content/ComponentName;
    .local v17, "comp":Landroid/content/ComponentName;
    move/from16 v6, p6

    move-object v8, v7

    .end local v7    # "originalIntent":Landroid/content/Intent;
    .local v8, "originalIntent":Landroid/content/Intent;
    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->queryIntentServicesInternalBody(Landroid/content/Intent;Ljava/lang/String;JIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 722
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v14, v0}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 725
    :goto_12f
    if-eqz v8, :cond_136

    .line 727
    iput-object v8, v14, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->intent:Landroid/content/Intent;

    .line 728
    invoke-static {v14, v0}, Lcom/android/server/pm/SaferIntentUtils;->enforceIntentFilterMatching(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    .line 731
    :cond_136
    return-object v0
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

    .line 738
    move-object v8, p0

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v12

    .line 739
    .local v12, "pkgName":Ljava/lang/String;
    if-nez v12, :cond_27

    .line 740
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 742
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_22

    .line 743
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 745
    :cond_22
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 748
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_27
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v12}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 749
    .local v13, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v13, :cond_50

    .line 750
    iget-object v0, v8, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    .line 751
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v6

    .line 750
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryServices(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 753
    .restart local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_4b

    .line 754
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 756
    :cond_4b
    invoke-direct {p0, v0, v11, v9, v10}, Lcom/android/server/pm/ComputerEngine;->applyPostServiceResolutionFilter(Ljava/util/List;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 759
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

    .line 4909
    .local p2, "outNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "outInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4910
    return-void

    .line 4912
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4913
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v1

    .line 4914
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 4915
    .local v8, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v2, p0

    move-object v3, v0

    move-object v4, v7

    move v5, p1

    move v6, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/resolution/ComponentResolverApi;->querySyncProviders(Lcom/android/server/pm/Computer;Ljava/util/List;Ljava/util/List;ZI)V

    .line 4916
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v9, v1

    .local v9, "i":I
    :goto_2b
    if-ltz v9, :cond_5d

    .line 4917
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/pm/ProviderInfo;

    .line 4918
    .local v10, "providerInfo":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v11

    .line 4919
    .local v11, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v10, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4921
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

    .line 4923
    goto :goto_5a

    .line 4925
    :cond_54
    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4926
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4916
    .end local v4    # "component":Landroid/content/ComponentName;
    .end local v10    # "providerInfo":Landroid/content/pm/ProviderInfo;
    .end local v11    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_5a
    add-int/lit8 v9, v9, -0x1

    goto :goto_2b

    .line 4928
    .end local v9    # "i":I
    :cond_5d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_66

    .line 4929
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4931
    :cond_66
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 4932
    invoke-interface {p3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4934
    :cond_6f
    return-void
.end method

.method protected resolveComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mLocalResolveComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public resolveContentProvider(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # J
    .param p4, "userId"    # I
    .param p5, "callingUid"    # I

    .line 4834
    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 4835
    :cond_a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForComponent(JI)J

    move-result-wide p2

    .line 4836
    iget-object v2, p0, Lcom/android/server/pm/ComputerEngine;->mComponentResolver:Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/android/server/pm/resolution/ComponentResolverApi;->queryProvider(Lcom/android/server/pm/Computer;Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 4838
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    const/4 v2, 0x0

    .line 4839
    .local v2, "checkedGrants":Z
    if-eqz v0, :cond_31

    .line 4841
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eq p4, v3, :cond_31

    .line 4842
    iget-object v3, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    const-class v4, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4843
    invoke-virtual {v3, v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4844
    .local v3, "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    nop

    .line 4845
    const/4 v4, 0x1

    invoke-interface {v3, p5, v0, p4, v4}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v2

    .line 4848
    .end local v3    # "ugmInternal":Lcom/android/server/uri/UriGrantsManagerInternal;
    :cond_31
    if-nez v2, :cond_62

    .line 4849
    const/4 v3, 0x1

    .line 4851
    .local v3, "enforceCrossUser":Z
    invoke-static {p1}, Landroid/content/ContentProvider;->isAuthorityRedirectedForCloneProfile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 4852
    iget-object v4, p0, Lcom/android/server/pm/ComputerEngine;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v4

    .line 4854
    .local v4, "umInternal":Lcom/android/server/pm/UserManagerInternal;
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 4855
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_55

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v6

    if-eqz v6, :cond_55

    iget v6, v5, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v6, p4, :cond_55

    .line 4857
    const/4 v3, 0x0

    .line 4861
    .end local v4    # "umInternal":Lcom/android/server/pm/UserManagerInternal;
    .end local v5    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_55
    if-eqz v3, :cond_62

    .line 4862
    const/4 v8, 0x0

    const-string/jumbo v9, "resolveContentProvider"

    const/4 v7, 0x0

    move-object v4, p0

    move v5, p5

    move v6, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 4867
    .end local v3    # "enforceCrossUser":Z
    :cond_62
    if-nez v0, :cond_65

    .line 4868
    return-object v1

    .line 4870
    :cond_65
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComputerEngine;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    .line 4872
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-static {v3, v0, p2, p3, p4}, Lcom/android/server/pm/pkg/PackageStateUtils;->isEnabledAndMatches(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/content/pm/ComponentInfo;JI)Z

    move-result v4

    if-nez v4, :cond_72

    .line 4873
    return-object v1

    .line 4875
    :cond_72
    new-instance v7, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4877
    .local v7, "component":Landroid/content/ComponentName;
    const/4 v8, 0x4

    move-object v4, p0

    move-object v5, v3

    move v6, p5

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 4878
    return-object v1

    .line 4880
    :cond_87
    return-object v0
.end method

.method public final resolveExternalPackageName(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1923
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1924
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1926
    :cond_b
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final resolveInternalPackageName(Ljava/lang/String;J)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1997
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

    .line 2664
    const/4 v0, 0x1

    .line 2665
    .local v0, "filterApp":Z
    nop

    .line 2666
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v1

    .line 2667
    .local v1, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_c
    if-ltz v2, :cond_25

    if-eqz v0, :cond_25

    .line 2668
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

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v3

    and-int/2addr v0, v3

    .line 2667
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 2671
    .end local v2    # "index":I
    :cond_25
    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 11
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2654
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

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

    .line 2644
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
    .registers 15
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z

    .line 2632
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
    .locals 28
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "componentType"    # I
    .param p5, "userId"    # I
    .param p6, "filterUninstall"    # Z
    .param p7, "filterArchived"    # Z
    move-object/16 v17, p0
    move-object/16 v18, p1
    move/16 v19, p2
    move-object/16 v20, p3
    move/16 v21, p4
    move/16 v22, p5
    move/16 v23, p6
    move/16 v24, p7
    if-eqz v18, :cond_kaorios_ps_null
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v26
    if-eqz v26, :cond_kaorios_ps_null
    move/16 v25, v19
    move/16 v27, v22
    invoke-static/range {v25 .. v27}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v25
    if-eqz v25, :cond_kaorios_ps_null
    const/16 v25, 0x1
    return v25
    :cond_kaorios_ps_null

    .line 2552
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v20

    move/from16 v9, v22

    invoke-static/range {v19 .. v19}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2553
    invoke-static/range {v19 .. v19}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    .line 2555
    .local v0, "clientAppUid":I
    if-eqz v7, :cond_20

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    if-ne v0, v2, :cond_20

    .line 2556
    return v1

    .line 2560
    .end local v0    # "clientAppUid":I
    :cond_20
    invoke-static/range {v19 .. v19}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2561
    move/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/android/server/pm/ComputerEngine;->getIsolatedOwner(I)I

    move-result v0

    move v10, v0

    .end local v19    # "callingUid":I
    .local v0, "callingUid":I
    goto :goto_31

    .line 2560
    .end local v0    # "callingUid":I
    .restart local v19    # "callingUid":I
    :cond_2e
    move/from16 v0, v19

    move v10, v0

    .line 2563
    .end local v19    # "callingUid":I
    .local v10, "callingUid":I
    :goto_31
    invoke-virtual {v6, v10}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v11

    .line 2564
    .local v11, "instantAppPkgName":Ljava/lang/String;
    const/4 v0, 0x1

    if-eqz v11, :cond_3a

    move v2, v0

    goto :goto_3b

    :cond_3a
    move v2, v1

    :goto_3b
    move v12, v2

    .line 2565
    .local v12, "callerIsInstantApp":Z
    if-eqz v7, :cond_4a

    .line 2566
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 2565
    invoke-static {v2}, Lcom/android/server/pm/PackageArchiver;->isArchived(Lcom/android/server/pm/pkg/PackageUserState;)Z

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v0

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    move v13, v2

    .line 2570
    .local v13, "packageArchivedForUser":Z
    if-eqz v7, :cond_f1

    if-eqz v23, :cond_6e

    .line 2572
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 2573
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->isHiddenUntilInstalled()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 2574
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_6e

    if-eqz v13, :cond_6a

    if-eqz v24, :cond_6e

    :cond_6a
    move/from16 v14, v21

    goto/16 :goto_f3

    .line 2584
    :cond_6e
    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v10}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2585
    return v1

    .line 2587
    :cond_79
    if-eqz v12, :cond_b1

    .line 2589
    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2590
    return v0

    .line 2594
    :cond_86
    if-eqz v8, :cond_a5

    .line 2595
    iget-object v2, v6, Lcom/android/server/pm/ComputerEngine;->mInstrumentation:Lcom/android/server/utils/WatchedArrayMap;

    .line 2596
    invoke-virtual {v2, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    .line 2597
    .local v2, "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    if-eqz v2, :cond_9d

    .line 2598
    invoke-interface {v2}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v10}, Lcom/android/server/pm/ComputerEngine;->isCallerSameApp(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 2599
    return v1

    .line 2601
    :cond_9d
    move/from16 v14, v21

    invoke-virtual {v6, v8, v14}, Lcom/android/server/pm/ComputerEngine;->isComponentVisibleToInstantApp(Landroid/content/ComponentName;I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2604
    .end local v2    # "instrumentation":Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;
    :cond_a5
    move/from16 v14, v21

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isVisibleToInstantApps()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2606
    :cond_b1
    move/from16 v14, v21

    invoke-interface {v7, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->isInstantApp()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 2608
    invoke-virtual {v6, v10, v9}, Lcom/android/server/pm/ComputerEngine;->canViewInstantApps(II)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 2609
    return v1

    .line 2612
    :cond_c4
    if-eqz v8, :cond_c7

    .line 2613
    return v0

    .line 2617
    :cond_c7
    iget-object v1, v6, Lcom/android/server/pm/ComputerEngine;->mInstantAppRegistry:Lcom/android/server/pm/InstantAppRegistry;

    .line 2618
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-interface/range {v18 .. v18}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    .line 2617
    invoke-virtual {v1, v9, v2, v3}, Lcom/android/server/pm/InstantAppRegistry;->isInstantAccessGranted(III)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 2620
    :cond_d7
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v15

    .line 2621
    .local v15, "appId":I
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mSettings:Lcom/android/server/pm/ComputerEngine$Settings;

    invoke-virtual {v0, v15}, Lcom/android/server/pm/ComputerEngine$Settings;->getSettingBase(I)Lcom/android/server/pm/SettingBase;

    move-result-object v16

    .line 2622
    .local v16, "callingPs":Lcom/android/server/pm/SettingBase;
    iget-object v0, v6, Lcom/android/server/pm/ComputerEngine;->mAppsFilter:Lcom/android/server/pm/AppsFilterSnapshot;

    move-object/from16 v1, v17

    move v2, v10

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    move/from16 v5, v22

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterSnapshot;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v0

    return v0

    .line 2570
    .end local v15    # "appId":I
    .end local v16    # "callingPs":Lcom/android/server/pm/SettingBase;
    :cond_f1
    move/from16 v14, v21

    .line 2581
    :goto_f3
    if-nez v12, :cond_fd

    if-nez v23, :cond_fd

    invoke-static {v10}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_fe

    :cond_fd
    move v1, v0

    :cond_fe
    return v1
.end method

.method public final shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/SharedUserSetting;II)Z
    .registers 10
    .param p1, "sus"    # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2701
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/SharedUserSetting;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2702
    return v1

    .line 2704
    :cond_8
    invoke-static {p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2705
    return v2

    .line 2707
    :cond_10
    nop

    .line 2708
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v0

    .line 2709
    .local v0, "packageStates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 2710
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2711
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

    .line 2709
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2712
    .restart local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_36
    :goto_36
    return v2

    .line 2716
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

    .line 2680
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZ)Z

    move-result v0

    return v0
.end method

.method public final shouldFilterApplicationIncludingUninstalledNotArchived(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .registers 12
    .param p1, "ps"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2690
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ComputerEngine;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z

    move-result v0

    return v0
.end method

.method public final updateFlagsForApplication(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2798
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlagsForPackage(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForComponent(JI)J
    .registers 6
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2805
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComputerEngine;->updateFlags(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final updateFlagsForPackage(JI)J
    .registers 14
    .param p1, "flags"    # J
    .param p3, "userId"    # I

    .line 2812
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

    .line 2814
    .local v7, "isCallerSystemUser":Z
    const-wide/32 v3, 0x400000

    and-long v5, p1, v3

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-eqz v0, :cond_30

    .line 2817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/ComputerEngine;->isRecentsAccessingChildProfiles(II)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 2817
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v6, "MATCH_ANY_USER flag requires INTERACT_ACROSS_USERS permission"

    move-object v0, p0

    move v1, v2

    move v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ComputerEngine;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    goto :goto_44

    .line 2820
    :cond_30
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_44

    if-eqz v7, :cond_44

    iget-object v0, p0, Lcom/android/server/pm/ComputerEngine;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 2822
    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 2829
    or-long v0, p1, v3

    .end local p1    # "flags":J
    .local v0, "flags":J
    goto :goto_45

    .line 2831
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

    .line 2849
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

    .line 2858
    invoke-direct {p0}, Lcom/android/server/pm/ComputerEngine;->safeMode()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p7, :cond_c

    .line 2859
    :cond_8
    const-wide/32 v0, 0x100000

    or-long/2addr p1, v0

    .line 2861
    :cond_c
    invoke-virtual {p0, p4}, Lcom/android/server/pm/ComputerEngine;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    if-eqz v0, :cond_21

    .line 2863
    if-eqz p6, :cond_1b

    .line 2864
    const-wide/32 v3, 0x2000000

    or-long/2addr p1, v3

    .line 2866
    :cond_1b
    const-wide/32 v3, 0x1000000

    or-long/2addr p1, v3

    .line 2867
    or-long/2addr p1, v1

    goto :goto_46

    .line 2869
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

    .line 2870
    .local v0, "wantMatchInstant":Z
    :goto_2e
    if-nez p5, :cond_3b

    if-eqz v0, :cond_39

    .line 2871
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

    .line 2872
    .local v1, "allowMatchInstant":Z
    :goto_3c
    const-wide/32 v2, -0x3000001

    and-long/2addr p1, v2

    .line 2874
    if-nez v1, :cond_46

    .line 2875
    const-wide/32 v2, -0x800001

    and-long/2addr p1, v2

    .line 2878
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

    .line 492
    iget v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/ComputerEngine;->mUsed:I

    .line 493
    return-object p0
.end method
