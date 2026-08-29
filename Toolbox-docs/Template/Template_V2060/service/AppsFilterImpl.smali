.class public final Lcom/android/server/pm/AppsFilterImpl;
.super Lcom/android/server/pm/AppsFilterLocked;
.source "AppsFilterImpl.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    }
.end annotation


# instance fields
.field private final mPermissionToUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/AppsFilterSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsesPermissionToUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$upIZkL_ivpfWJ2brYK92CfeE4eM(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->readCacheEnabledSysProp()V

    return-void
.end method

.method public static synthetic $r8$lambda$z8pKsxG_4fqX35js78wjP4SRLPM(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilterImpl;->lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogCacheUpdated(Lcom/android/server/pm/AppsFilterImpl;IJIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/AppsFilterImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShouldFilterCacheForPackage(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V
    .registers 10
    .param p1, "featureConfig"    # Lcom/android/server/pm/FeatureConfig;
    .param p2, "forceQueryableList"    # [Ljava/lang/String;
    .param p3, "systemAppsQueryable"    # Z
    .param p4, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 199
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterLocked;-><init>()V

    .line 107
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 200
    iput-object p1, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 201
    iput-object p2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 202
    iput-boolean p3, p0, Lcom/android/server/pm/AppsFilterImpl;->mSystemAppsQueryable:Z

    .line 203
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 205
    iput-object p5, p0, Lcom/android/server/pm/AppsFilterImpl;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 207
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    const-string v3, "AppsFilter.mShouldFilterCache"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 209
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 210
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mImplicitlyQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 212
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 213
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mRetainedImplicitlyQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 216
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 217
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueriesViaPackage"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 219
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 220
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueriesViaComponent"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 222
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 223
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueryableViaUsesLibrary"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 226
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 227
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v3, "AppsFilter.mQueryableViaUsesPermission"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 230
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    .line 231
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    const-string v3, "AppsFilter.mForceQueryable"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 233
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 234
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    const-string v3, "AppsFilter.mProtectedBroadcasts"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 236
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    .line 239
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/AppsFilterImpl$1;-><init>(Lcom/android/server/pm/AppsFilterImpl;Lcom/android/server/pm/AppsFilterSnapshot;Lcom/android/server/utils/Watchable;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 245
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->readCacheEnabledSysProp()V

    .line 246
    new-instance v0, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/AppsFilterImpl;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method private addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;
    .registers 20
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "android"

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 576
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 579
    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 580
    .local v4, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    iget-object v5, v1, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v5, v4}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 581
    iget-object v5, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    :try_start_3d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 582
    iget-object v6, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_5e

    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v5
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 585
    .end local v4    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_5e
    :goto_5e
    goto :goto_20

    .line 588
    :cond_5f
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    .line 589
    .local v4, "newPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v4, :cond_67

    .line 590
    const/4 v0, 0x0

    return-object v0

    .line 593
    :cond_67
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v5

    .line 594
    .local v5, "newBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_ac

    .line 596
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    :try_start_7b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 597
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 598
    .local v0, "oldSize":I
    iget-object v9, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v9, v5}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 599
    iget-object v9, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v9

    if-eq v9, v0, :cond_93

    move v9, v7

    goto :goto_94

    :cond_93
    const/4 v9, 0x0

    .line 600
    .end local v0    # "oldSize":I
    .local v9, "protectedBroadcastsChanged":Z
    :goto_94
    monitor-exit v8
    :try_end_95
    .catchall {:try_start_7b .. :try_end_95} :catchall_a3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 601
    if-eqz v9, :cond_ac

    .line 602
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_ac

    .line 600
    .end local v9    # "protectedBroadcastsChanged":Z
    :catchall_a3
    move-exception v0

    :try_start_a4
    monitor-exit v8
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 607
    :cond_ac
    :goto_ac
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    :try_start_b5
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 608
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 610
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->isForceQueryableOverride()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 611
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-boolean v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mSystemAppsQueryable:Z

    if-nez v0, :cond_fb

    .line 612
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 617
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 616
    invoke-static {v0, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 618
    :cond_ea
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerServiceStub;->shouldForceQuery(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9

    goto :goto_fb

    :cond_f9
    const/4 v0, 0x0

    goto :goto_fc

    :cond_fb
    :goto_fb
    move v0, v7

    :goto_fc
    move v9, v0

    .line 620
    .local v9, "newIsForceQueryable":Z
    if-nez v9, :cond_10b

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v0, :cond_118

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mSystemSigningDetails:Landroid/content/pm/SigningDetails;

    .line 622
    invoke-static {v0, v2}, Lcom/android/server/pm/AppsFilterImpl;->isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 623
    :cond_10b
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_118
    monitor-exit v8
    :try_end_119
    .catchall {:try_start_b5 .. :try_end_119} :catchall_4c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 627
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1cf

    .line 629
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v8

    :try_start_132
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 631
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_141
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 632
    .local v10, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    invoke-interface {v10}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "usesPermissionName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_192

    .line 636
    iget-object v12, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    .line 637
    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 638
    .local v12, "permissionDefiners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_162
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v14

    if-ge v13, v14, :cond_18f

    .line 639
    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 640
    .local v14, "targetAppId":I
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v15

    if-eq v14, v15, :cond_188

    .line 641
    iget-object v15, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    move/from16 v16, v7

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    .line 642
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 641
    invoke-virtual {v15, v7, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    goto :goto_18a

    .line 640
    :cond_188
    move/from16 v16, v7

    .line 638
    .end local v14    # "targetAppId":I
    :goto_18a
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    goto :goto_162

    :cond_18f
    move/from16 v16, v7

    goto :goto_194

    .line 635
    .end local v12    # "permissionDefiners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v13    # "j":I
    :cond_192
    move/from16 v16, v7

    .line 648
    :goto_194
    iget-object v6, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a6

    .line 649
    iget-object v6, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v6, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_1a6
    iget-object v6, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 652
    move/from16 v7, v16

    .end local v10    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    .end local v11    # "usesPermissionName":Ljava/lang/String;
    goto :goto_141

    .line 653
    :cond_1bc
    move/from16 v16, v7

    monitor-exit v8
    :try_end_1bf
    .catchall {:try_start_132 .. :try_end_1bf} :catchall_1c6

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_1d1

    :catchall_1c6
    move-exception v0

    :try_start_1c7
    monitor-exit v8
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 627
    :cond_1cf
    move/from16 v16, v7

    .line 655
    :goto_1d1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26e

    .line 656
    iget-object v6, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v6

    :try_start_1e4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 658
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 659
    .local v7, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-interface {v7}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, "permissionName":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_236

    .line 663
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    .line 665
    .local v10, "permissionUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_210
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-ge v11, v12, :cond_236

    .line 666
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 667
    .local v12, "queryingAppId":I
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    if-eq v12, v13, :cond_233

    .line 668
    iget-object v13, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 669
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 668
    invoke-virtual {v13, v12, v14}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 665
    .end local v12    # "queryingAppId":I
    :cond_233
    add-int/lit8 v11, v11, 0x1

    goto :goto_210

    .line 674
    .end local v10    # "permissionUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v11    # "j":I
    :cond_236
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_248

    .line 675
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v10, v8, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_248
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArraySet;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 678
    nop

    .end local v7    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v8    # "permissionName":Ljava/lang/String;
    goto :goto_1ef

    .line 679
    :cond_25d
    monitor-exit v6
    :try_end_25e
    .catchall {:try_start_1e4 .. :try_end_25e} :catchall_265

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_26e

    :catchall_265
    move-exception v0

    :try_start_266
    monitor-exit v6
    :try_end_267
    .catchall {:try_start_266 .. :try_end_267} :catchall_265

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 682
    :cond_26e
    :goto_26e
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    .local v6, "i":I
    :goto_275
    if-ltz v6, :cond_490

    .line 683
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 684
    .local v7, "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v8

    if-eq v0, v8, :cond_48c

    .line 685
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-nez v0, :cond_290

    .line 687
    goto/16 :goto_48c

    .line 689
    :cond_290
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    .line 691
    .local v8, "existingPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v9, :cond_347

    .line 692
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2d4

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 693
    invoke-static {v8, v4, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v0

    if-eqz v0, :cond_2d4

    .line 694
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_2af
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 695
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 696
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 695
    invoke-virtual {v0, v11, v12}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 697
    monitor-exit v10
    :try_end_2c4
    .catchall {:try_start_2af .. :try_end_2c4} :catchall_2cb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_2d4

    :catchall_2cb
    move-exception v0

    :try_start_2cc
    monitor-exit v10
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2cb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 699
    :cond_2d4
    :goto_2d4
    invoke-static {v8, v4}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_2e6

    .line 700
    invoke-static {v7, v4}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_2e6

    .line 701
    invoke-static {v7, v4}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsUpdateOwner(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 702
    :cond_2e6
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_2ef
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 703
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 704
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 703
    invoke-virtual {v0, v11, v12}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 705
    monitor-exit v10
    :try_end_304
    .catchall {:try_start_2ef .. :try_end_304} :catchall_33e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 707
    :cond_30a
    invoke-static {v8, v4}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 708
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_319
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 709
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    .line 710
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 709
    invoke-virtual {v0, v11, v12}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 711
    monitor-exit v10
    :try_end_32e
    .catchall {:try_start_319 .. :try_end_32e} :catchall_335

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_347

    :catchall_335
    move-exception v0

    :try_start_336
    monitor-exit v10
    :try_end_337
    .catchall {:try_start_336 .. :try_end_337} :catchall_335

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 705
    :catchall_33e
    move-exception v0

    :try_start_33f
    monitor-exit v10
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_33e

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 715
    :cond_347
    :goto_347
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_350
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 716
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v11, v0

    .line 717
    .local v11, "existingIsForceQueryable":Z
    monitor-exit v10
    :try_end_363
    .catchall {:try_start_350 .. :try_end_363} :catchall_483

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 719
    if-nez v11, :cond_41c

    .line 720
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3a9

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 721
    invoke-static {v4, v8, v0}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v0

    if-eqz v0, :cond_3a9

    .line 722
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_384
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 723
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    .line 724
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 723
    invoke-virtual {v0, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 725
    monitor-exit v10
    :try_end_399
    .catchall {:try_start_384 .. :try_end_399} :catchall_3a0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_3a9

    :catchall_3a0
    move-exception v0

    :try_start_3a1
    monitor-exit v10
    :try_end_3a2
    .catchall {:try_start_3a1 .. :try_end_3a2} :catchall_3a0

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 727
    :cond_3a9
    :goto_3a9
    invoke-static {v4, v8}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaPackage(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_3bb

    .line 728
    invoke-static {v2, v8}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_3bb

    .line 729
    invoke-static {v2, v8}, Lcom/android/server/pm/AppsFilterUtils;->canQueryAsUpdateOwner(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_3df

    .line 730
    :cond_3bb
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_3c4
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 731
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    .line 732
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 731
    invoke-virtual {v0, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 733
    monitor-exit v10
    :try_end_3d9
    .catchall {:try_start_3c4 .. :try_end_3d9} :catchall_413

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 735
    :cond_3df
    invoke-static {v4, v8}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaUsesLibrary(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_41c

    .line 736
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_3ee
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 737
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    .line 738
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 737
    invoke-virtual {v0, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 739
    monitor-exit v10
    :try_end_403
    .catchall {:try_start_3ee .. :try_end_403} :catchall_40a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_41c

    :catchall_40a
    move-exception v0

    :try_start_40b
    monitor-exit v10
    :try_end_40c
    .catchall {:try_start_40b .. :try_end_40c} :catchall_40a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 733
    :catchall_413
    move-exception v0

    :try_start_414
    monitor-exit v10
    :try_end_415
    .catchall {:try_start_414 .. :try_end_415} :catchall_413

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 743
    :cond_41c
    :goto_41c
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_48c

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_48c

    .line 744
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_444

    .line 745
    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/pm/AppsFilterImpl;->pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_48c

    .line 746
    :cond_444
    iget-object v10, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v10

    :try_start_44d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 747
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 748
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v7}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v12

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    .line 749
    monitor-exit v10
    :try_end_473
    .catchall {:try_start_44d .. :try_end_473} :catchall_47a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_48c

    :catchall_47a
    move-exception v0

    :try_start_47b
    monitor-exit v10
    :try_end_47c
    .catchall {:try_start_47b .. :try_end_47c} :catchall_47a

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 717
    .end local v11    # "existingIsForceQueryable":Z
    :catchall_483
    move-exception v0

    :try_start_484
    monitor-exit v10
    :try_end_485
    .catchall {:try_start_484 .. :try_end_485} :catchall_483

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 682
    .end local v7    # "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v8    # "existingPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_48c
    :goto_48c
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_275

    .line 753
    .end local v6    # "i":I
    :cond_490
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 754
    .local v0, "existingSize":I
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 755
    .local v6, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_49a
    if-ge v7, v0, :cond_4b6

    .line 756
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 757
    .local v8, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v10

    if-eqz v10, :cond_4b3

    .line 758
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .end local v8    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_4b3
    add-int/lit8 v7, v7, 0x1

    goto :goto_49a

    .line 762
    .end local v7    # "index":I
    :cond_4b6
    iget-object v7, v1, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 763
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/Map;)Landroid/util/ArraySet;

    move-result-object v7

    .line 765
    .local v7, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    const/4 v10, 0x0

    invoke-interface {v8, v2, v10}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 767
    return-object v7

    .line 625
    .end local v0    # "existingSize":I
    .end local v6    # "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    .end local v7    # "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v9    # "newIsForceQueryable":Z
    :catchall_4c7
    move-exception v0

    :try_start_4c8
    monitor-exit v8
    :try_end_4c9
    .catchall {:try_start_4c8 .. :try_end_4c9} :catchall_4c7

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V
    .registers 8
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1014
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1015
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 1016
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_4a

    .line 1017
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1018
    .local v2, "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1020
    goto :goto_47

    .line 1022
    :cond_34
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 1023
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_47

    .line 1024
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedArraySet;->addAll(Ljava/util/Collection;)V

    .line 1016
    .end local v2    # "setting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 1027
    .end local v1    # "i":I
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_9 .. :try_end_4b} :catchall_52

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1028
    return-void

    .line 1027
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v1
.end method

.method public static create(Lcom/android/server/pm/PackageManagerServiceInjector;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/pm/AppsFilterImpl;
    .registers 10
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerServiceInjector;
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;

    .line 433
    nop

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 435
    const v1, 0x11101d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 436
    .local v5, "forceSystemAppsQueryable":Z
    new-instance v3, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p0, v0}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/AppsFilterImpl-IA;)V

    .line 438
    .local v3, "featureConfig":Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;
    if-eqz v5, :cond_1d

    .line 440
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    .local v0, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_3d

    .line 442
    .end local v0    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_1d
    nop

    .line 443
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 444
    const v1, 0x107009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 445
    .restart local v0    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    array-length v2, v0

    if-ge v1, v2, :cond_3c

    .line 446
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    move-object v4, v0

    .line 449
    .end local v0    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v1    # "i":I
    .local v4, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_3d
    new-instance v2, Lcom/android/server/pm/AppsFilterImpl;

    .line 451
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v7

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;-><init>(Lcom/android/server/pm/FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;Landroid/os/Handler;)V

    .line 452
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilterImpl;
    invoke-virtual {v3, v2}, Lcom/android/server/pm/AppsFilterImpl$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilterImpl;)V

    .line 453
    return-object v2
.end method

.method private invalidateCache(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalidating cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_22
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/SigningDetails;Lcom/android/server/pm/pkg/PackageStateInternal;)Z
    .registers 3
    .param p0, "sysSigningDetails"    # Landroid/content/pm/SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1007
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1008
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 1007
    :goto_13
    return v0
.end method

.method private synthetic lambda$updateEntireShouldFilterCacheAsync$0(Landroid/content/pm/PackageManagerInternal;IJ)V
    .registers 21
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "reason"    # I
    .param p3, "delayMs"    # J

    .line 830
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 832
    return-void

    .line 835
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v9

    .line 836
    .local v9, "currentTimeUs":J
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    .line 837
    .local v11, "packagesCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;>;"
    new-array v12, v8, [[Landroid/content/pm/UserInfo;

    .line 838
    .local v12, "usersRef":[[Landroid/content/pm/UserInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/Computer;

    .line 839
    .local v13, "snapshot":Lcom/android/server/pm/Computer;
    nop

    .line 840
    invoke-interface {v13}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v14

    .line 841
    .local v14, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v13}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 843
    .local v15, "users":[Landroid/content/pm/UserInfo;
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 844
    aput-object v15, v12, v7

    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "max":I
    :goto_37
    if-ge v0, v2, :cond_4f

    .line 848
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v3

    .line 849
    .local v3, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .end local v3    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 852
    .end local v0    # "i":I
    .end local v2    # "max":I
    :cond_4f
    aget-object v0, v12, v7

    const/4 v2, -0x1

    invoke-direct {v1, v13, v14, v0, v2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v3, v2, v9

    array-length v5, v15

    .line 854
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 853
    move/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    .line 856
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_86

    .line 857
    const-string v0, "AppsFilter"

    const-string v2, "Cache invalidated while building, retrying."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-wide/16 v2, 0x2

    mul-long v2, v2, p3

    .line 859
    const-wide/16 v4, 0x2710

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 858
    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V

    .line 860
    return-void

    .line 863
    :cond_86
    move-object/from16 v4, p1

    move/from16 v5, p2

    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_93
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 864
    iget-boolean v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mNeedToUpdateCacheForImplicitAccess:Z

    if-eqz v0, :cond_9f

    .line 865
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess()V

    .line 866
    iput-boolean v7, v1, Lcom/android/server/pm/AppsFilterImpl;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 868
    :cond_9f
    iput-boolean v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    .line 869
    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_93 .. :try_end_a2} :catchall_ac

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 871
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 872
    return-void

    .line 869
    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0
.end method

.method private logCacheRebuilt(IJII)V
    .registers 14
    .param p1, "eventId"    # I
    .param p2, "latency"    # J
    .param p4, "userCount"    # I
    .param p5, "packageCount"    # I

    .line 1300
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 1301
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v7

    .line 1300
    const/16 v1, 0x221

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .end local p1    # "eventId":I
    .end local p2    # "latency":J
    .end local p4    # "userCount":I
    .end local p5    # "packageCount":I
    .local v2, "eventId":I
    .local v3, "latency":J
    .local v5, "userCount":I
    .local v6, "packageCount":I
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIII)V

    .line 1302
    return-void
.end method

.method private logCacheUpdated(IJIII)V
    .registers 16
    .param p1, "eventId"    # I
    .param p2, "latency"    # J
    .param p4, "userCount"    # I
    .param p5, "packageCount"    # I
    .param p6, "appId"    # I

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 1307
    return-void

    .line 1309
    :cond_5
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    .line 1310
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v8

    .line 1309
    const/16 v1, 0x222

    move v2, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move v3, p6

    .end local p1    # "eventId":I
    .end local p2    # "latency":J
    .end local p4    # "userCount":I
    .end local p5    # "packageCount":I
    .end local p6    # "appId":I
    .local v2, "eventId":I
    .local v3, "appId":I
    .local v4, "latency":J
    .local v6, "userCount":I
    .local v7, "packageCount":I
    invoke-static/range {v1 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIJIII)V

    .line 1311
    return-void
.end method

.method private onChanged()V
    .registers 3

    .line 180
    const/4 v0, 0x4

    .line 181
    .local v0, "invalidationReason":I
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache(I)V

    .line 182
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->invalidateGetPackagesForUidCache(I)V

    .line 183
    invoke-static {}, Landroid/app/ApplicationPackageManager;->invalidateQueryIntentActivitiesCache()V

    .line 184
    invoke-static {}, Landroid/app/AppOpsManager;->invalidateCheckPackageCache()V

    .line 185
    invoke-virtual {p0, p0}, Lcom/android/server/pm/AppsFilterImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 186
    return-void
.end method

.method private static pkgInstruments(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 9
    .param p0, "source"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 1281
    const-wide/32 v0, 0x40000

    :try_start_3
    sget-boolean v2, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v2, :cond_d

    .line 1282
    const-string/jumbo v2, "pkgInstruments"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1284
    :cond_d
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1285
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    .line 1286
    .local v3, "inst":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_39

    .line 1287
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;

    invoke-interface {v6}, Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_43

    if-eqz v6, :cond_36

    .line 1288
    nop

    .line 1293
    sget-boolean v6, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v6, :cond_35

    .line 1294
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1288
    :cond_35
    return v5

    .line 1286
    :cond_36
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 1291
    .end local v4    # "i":I
    :cond_39
    nop

    .line 1293
    sget-boolean v4, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v4, :cond_41

    .line 1294
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1291
    :cond_41
    const/4 v0, 0x0

    return v0

    .line 1293
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "inst":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/pm/pkg/component/ParsedInstrumentation;>;"
    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v3, :cond_4b

    .line 1294
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1296
    :cond_4b
    throw v2
.end method

.method private readCacheEnabledSysProp()V
    .registers 3

    .line 250
    const-string v0, "debug.pm.use_app_filter_cache"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheEnabled:Z

    .line 251
    return-void
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)V"
        }
    .end annotation

    .line 1050
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1051
    new-instance v1, Lcom/android/server/utils/WatchedArraySet;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v1, v2}, Lcom/android/server/utils/WatchedArraySet;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    .line 1052
    .local v1, "protectedBroadcasts":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_85

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1053
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_23
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1054
    new-instance v0, Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1055
    .local v0, "forceQueryable":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1056
    new-instance v2, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;-><init>(Landroid/util/ArrayMap;Landroid/util/ArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    move-object v3, v2

    .line 1058
    .local v3, "computer":Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;
    invoke-virtual {v3}, Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;->execute()Landroid/util/SparseSetArray;

    move-result-object v4

    .line 1059
    .local v4, "queriesViaComponent":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    :try_start_4b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1060
    new-instance v2, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v2, v4}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 1061
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v7, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v8, "AppsFilter.mQueriesViaComponent"

    invoke-direct {v2, v6, v7, v8}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 1063
    monitor-exit v5
    :try_end_63
    .catchall {:try_start_4b .. :try_end_63} :catchall_73

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1065
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1066
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 1067
    return-void

    .line 1063
    :catchall_73
    move-exception v2

    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v2

    .line 1055
    .end local v0    # "forceQueryable":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v3    # "computer":Lcom/android/server/pm/AppsFilterUtils$ParallelComputeComponentVisibility;
    .end local v4    # "queriesViaComponent":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1052
    .end local v1    # "protectedBroadcasts":Lcom/android/server/utils/WatchedArraySet;, "Lcom/android/server/utils/WatchedArraySet<Ljava/lang/String;>;"
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v1
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .registers 5
    .param p1, "appId"    # I

    .line 771
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 773
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne v2, p1, :cond_28

    .line 774
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeAt(I)V

    .line 779
    add-int/lit8 v1, v1, -0x1

    .line 772
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 782
    .end local v1    # "i":I
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_33

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 783
    return-void

    .line 782
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v1
.end method

.method private removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "isReplace"    # Z
    .param p4, "retainImplicitGrantOnReplace"    # Z

    .line 1108
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    .line 1109
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1110
    .local v5, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 1111
    .local v6, "users":[Landroid/content/pm/UserInfo;
    array-length v10, v6

    .line 1112
    .local v10, "userCount":I
    const/4 v0, 0x1

    if-eqz p3, :cond_12

    if-nez p4, :cond_7a

    .line 1113
    :cond_12
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_1b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1114
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_1f
    if-ge v3, v10, :cond_73

    .line 1115
    aget-object v4, v6, v3

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1116
    .local v4, "userId":I
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 1117
    .local v7, "removingUid":I
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1118
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v8

    sub-int/2addr v8, v0

    .local v8, "i":I
    :goto_39
    if-ltz v8, :cond_4d

    .line 1119
    iget-object v11, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v12, v1, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v12, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v12

    .line 1120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1119
    invoke-virtual {v11, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1118
    add-int/lit8 v8, v8, -0x1

    goto :goto_39

    .line 1123
    .end local v8    # "i":I
    :cond_4d
    if-eqz p3, :cond_50

    .line 1124
    goto :goto_70

    .line 1127
    :cond_50
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1128
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v8}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v8

    sub-int/2addr v8, v0

    .restart local v8    # "i":I
    :goto_5c
    if-ltz v8, :cond_70

    .line 1129
    iget-object v11, v1, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v12, v1, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 1130
    invoke-virtual {v12, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1129
    invoke-virtual {v11, v12, v13}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1128
    add-int/lit8 v8, v8, -0x1

    goto :goto_5c

    .line 1114
    .end local v4    # "userId":I
    .end local v7    # "removingUid":I
    .end local v8    # "i":I
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 1133
    .end local v3    # "u":I
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_1b .. :try_end_74} :catchall_3d6

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1136
    :cond_7a
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_c7

    .line 1137
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_8b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1138
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1139
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_9e
    if-ltz v3, :cond_b6

    .line 1140
    iget-object v4, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v7, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v7

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1139
    add-int/lit8 v3, v3, -0x1

    goto :goto_9e

    .line 1142
    .end local v3    # "i":I
    :cond_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_8b .. :try_end_b7} :catchall_be

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_c7

    :catchall_be
    move-exception v0

    :try_start_bf
    monitor-exit v2
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1145
    :cond_c7
    :goto_c7
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackageLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    :try_start_d0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1146
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1147
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_e3
    if-ltz v2, :cond_fb

    .line 1148
    iget-object v4, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v7, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v7

    .line 1149
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1148
    invoke-virtual {v4, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1147
    add-int/lit8 v2, v2, -0x1

    goto :goto_e3

    .line 1151
    .end local v2    # "i":I
    :cond_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_d0 .. :try_end_fc} :catchall_3cd

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1153
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibraryLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_10b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1154
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1155
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .restart local v3    # "i":I
    :goto_11e
    if-ltz v3, :cond_136

    .line 1156
    iget-object v4, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    iget-object v7, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-virtual {v7, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v7

    .line 1157
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1156
    invoke-virtual {v4, v7, v8}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 1155
    add-int/lit8 v3, v3, -0x1

    goto :goto_11e

    .line 1159
    .end local v3    # "i":I
    :cond_136
    monitor-exit v2
    :try_end_137
    .catchall {:try_start_10b .. :try_end_137} :catchall_3c4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1161
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermissionLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    :try_start_146
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1162
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_1a8

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a8

    .line 1163
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_169
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    .line 1164
    .local v4, "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1165
    .local v7, "permissionName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a7

    .line 1166
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1167
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1a7

    .line 1168
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .end local v4    # "permission":Lcom/android/internal/pm/pkg/component/ParsedPermission;
    .end local v7    # "permissionName":Ljava/lang/String;
    :cond_1a7
    goto :goto_169

    .line 1173
    :cond_1a8
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_20b

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20b

    .line 1175
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesPermissionMapping()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;

    .line 1176
    .local v4, "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1177
    .local v7, "usesPermissionName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20a

    .line 1178
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1179
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_20a

    .line 1180
    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mUsesPermissionToUids:Landroid/util/ArrayMap;

    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    .end local v4    # "usesPermission":Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
    .end local v7    # "usesPermissionName":Ljava/lang/String;
    :cond_20a
    goto :goto_1cc

    .line 1185
    :cond_20b
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/utils/WatchedSparseSetArray;->remove(I)V

    .line 1186
    monitor-exit v3
    :try_end_215
    .catchall {:try_start_146 .. :try_end_215} :catchall_3bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1188
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_224
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1189
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 1190
    monitor-exit v2
    :try_end_235
    .catchall {:try_start_224 .. :try_end_235} :catchall_3b2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1192
    const/4 v2, 0x0

    .line 1193
    .local v2, "protectedBroadcastsChanged":Z
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcastsLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3

    :try_start_245
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1194
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_28b

    .line 1195
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28b

    .line 1196
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1197
    .local v4, "removingPackageName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    .line 1198
    invoke-virtual {v8}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1199
    .local v7, "protectedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1, v5, v4}, Lcom/android/server/pm/AppsFilterImpl;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)V

    .line 1200
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_273
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_28b

    .line 1201
    iget-object v11, v1, Lcom/android/server/pm/AppsFilterImpl;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11
    :try_end_283
    .catchall {:try_start_245 .. :try_end_283} :catchall_3a9

    if-nez v11, :cond_288

    .line 1202
    const/4 v2, 0x1

    .line 1203
    move v11, v2

    goto :goto_28c

    .line 1200
    :cond_288
    add-int/lit8 v8, v8, 0x1

    goto :goto_273

    .line 1207
    .end local v4    # "removingPackageName":Ljava/lang/String;
    .end local v7    # "protectedBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    :cond_28b
    move v11, v2

    .end local v2    # "protectedBroadcastsChanged":Z
    .local v11, "protectedBroadcastsChanged":Z
    :goto_28c
    :try_start_28c
    monitor-exit v3
    :try_end_28d
    .catchall {:try_start_28c .. :try_end_28d} :catchall_3a6

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1209
    if-eqz v11, :cond_29a

    .line 1210
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1213
    :cond_29a
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v12

    .line 1214
    .local v12, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2, v9, v0}, Lcom/android/server/pm/FeatureConfig;->updatePackageState(Lcom/android/server/pm/pkg/PackageStateInternal;Z)V

    .line 1220
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v2

    if-eqz v2, :cond_2ba

    .line 1221
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v2

    goto :goto_2bd

    :cond_2ba
    move-object/from16 v3, p1

    const/4 v2, 0x0

    :goto_2bd
    move-object v13, v2

    .line 1222
    .local v13, "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v13, :cond_2e0

    .line 1223
    nop

    .line 1224
    invoke-interface {v13}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 1225
    .local v2, "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v0

    .local v4, "i":I
    :goto_2ca
    if-ltz v4, :cond_2e0

    .line 1226
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v9, :cond_2d3

    .line 1227
    goto :goto_2dd

    .line 1229
    :cond_2d3
    nop

    .line 1230
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1229
    invoke-direct {v1, v7, v5}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    .line 1225
    :goto_2dd
    add-int/lit8 v4, v4, -0x1

    goto :goto_2ca

    .line 1234
    .end local v2    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v4    # "i":I
    :cond_2e0
    iget-boolean v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v2, :cond_387

    .line 1235
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/AppsFilterImpl;->removeAppIdFromVisibilityCache(I)V

    .line 1237
    if-eqz v13, :cond_33a

    .line 1238
    nop

    .line 1239
    invoke-interface {v13}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v14

    .line 1240
    .local v14, "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v15, v2

    .local v15, "i":I
    :goto_2f8
    if-ltz v15, :cond_33a

    .line 1241
    nop

    .line 1242
    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1243
    .local v4, "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-ne v4, v9, :cond_308

    .line 1244
    nop

    .line 1240
    .end local v4    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    add-int/lit8 v15, v15, -0x1

    goto :goto_2f8

    .line 1246
    .restart local v4    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_308
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_311
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1247
    nop

    .line 1248
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1249
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_31d
    .catchall {:try_start_311 .. :try_end_31d} :catchall_32d

    .line 1247
    const/4 v7, -0x1

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    :try_start_322
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1250
    monitor-exit v16
    :try_end_326
    .catchall {:try_start_322 .. :try_end_326} :catchall_338

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1251
    goto :goto_33a

    .line 1250
    :catchall_32d
    move-exception v0

    move-object/from16 v16, v2

    :goto_330
    :try_start_330
    monitor-exit v16
    :try_end_331
    .catchall {:try_start_330 .. :try_end_331} :catchall_338

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    :catchall_338
    move-exception v0

    goto :goto_330

    .line 1255
    .end local v4    # "siblingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "sharedUserPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v15    # "i":I
    :cond_33a
    :goto_33a
    if-eqz v12, :cond_3a2

    .line 1256
    const/4 v0, 0x0

    move v14, v0

    .local v14, "index":I
    :goto_33e
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v14, v0, :cond_386

    .line 1257
    invoke-virtual {v12, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    .line 1258
    .local v15, "changedPackage":Ljava/lang/String;
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1259
    .local v4, "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_355

    .line 1263
    goto :goto_376

    .line 1265
    :cond_355
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    :try_start_35e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 1266
    nop

    .line 1267
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_366
    .catchall {:try_start_35e .. :try_end_366} :catchall_379

    .line 1266
    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    :try_start_36c
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 1268
    monitor-exit v16
    :try_end_370
    .catchall {:try_start_36c .. :try_end_370} :catchall_384

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1256
    .end local v4    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v15    # "changedPackage":Ljava/lang/String;
    :goto_376
    add-int/lit8 v14, v14, 0x1

    goto :goto_33e

    .line 1268
    .restart local v4    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v15    # "changedPackage":Ljava/lang/String;
    :catchall_379
    move-exception v0

    move-object/from16 v16, v2

    :goto_37c
    :try_start_37c
    monitor-exit v16
    :try_end_37d
    .catchall {:try_start_37c .. :try_end_37d} :catchall_384

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    :catchall_384
    move-exception v0

    goto :goto_37c

    .line 1256
    .end local v4    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "index":I
    .end local v15    # "changedPackage":Ljava/lang/String;
    :cond_386
    goto :goto_3a2

    .line 1272
    :cond_387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removePackage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V

    .line 1274
    :cond_3a2
    :goto_3a2
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 1275
    return-void

    .line 1207
    .end local v12    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13    # "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    :catchall_3a6
    move-exception v0

    move v2, v11

    goto :goto_3aa

    .end local v11    # "protectedBroadcastsChanged":Z
    .local v2, "protectedBroadcastsChanged":Z
    :catchall_3a9
    move-exception v0

    :goto_3aa
    :try_start_3aa
    monitor-exit v3
    :try_end_3ab
    .catchall {:try_start_3aa .. :try_end_3ab} :catchall_3a9

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1190
    .end local v2    # "protectedBroadcastsChanged":Z
    :catchall_3b2
    move-exception v0

    :try_start_3b3
    monitor-exit v2
    :try_end_3b4
    .catchall {:try_start_3b3 .. :try_end_3b4} :catchall_3b2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1186
    :catchall_3bb
    move-exception v0

    :try_start_3bc
    monitor-exit v3
    :try_end_3bd
    .catchall {:try_start_3bc .. :try_end_3bd} :catchall_3bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1159
    :catchall_3c4
    move-exception v0

    :try_start_3c5
    monitor-exit v2
    :try_end_3c6
    .catchall {:try_start_3c5 .. :try_end_3c6} :catchall_3c4

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1151
    :catchall_3cd
    move-exception v0

    :try_start_3ce
    monitor-exit v3
    :try_end_3cf
    .catchall {:try_start_3ce .. :try_end_3cf} :catchall_3cd

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 1133
    :catchall_3d6
    move-exception v0

    :try_start_3d7
    monitor-exit v2
    :try_end_3d8
    .catchall {:try_start_3d7 .. :try_end_3d8} :catchall_3d6

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0
.end method

.method private removeShouldFilterCacheForUser(I)V
    .registers 11
    .param p1, "userId"    # I

    .line 982
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 984
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->keys()[I

    move-result-object v1

    .line 985
    .local v1, "cacheUids":[I
    array-length v2, v1

    .line 986
    .local v2, "size":I
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    .line 987
    .local v4, "pos":I
    if-ltz v4, :cond_20

    move v5, v4

    goto :goto_21

    :cond_20
    not-int v5, v4

    .line 988
    .local v5, "fromIndex":I
    :goto_21
    if-ge v5, v2, :cond_91

    aget v6, v1, v5

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p1, :cond_2c

    goto :goto_91

    .line 993
    :cond_2c
    add-int/lit8 v6, p1, 0x1

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    .line 994
    .end local v4    # "pos":I
    .local v3, "pos":I
    if-ltz v3, :cond_3d

    add-int/lit8 v4, v3, 0x1

    goto :goto_3e

    :cond_3d
    not-int v4, v3

    .line 995
    .local v4, "toIndex":I
    :goto_3e
    if-ge v5, v4, :cond_5d

    add-int/lit8 v6, v4, -0x1

    aget v6, v1, v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-eq v6, p1, :cond_4b

    goto :goto_5d

    .line 1000
    :cond_4b
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->removeRange(II)V

    .line 1001
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->compact()V

    .line 1002
    .end local v1    # "cacheUids":[I
    .end local v2    # "size":I
    .end local v3    # "pos":I
    .end local v4    # "toIndex":I
    .end local v5    # "fromIndex":I
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 1003
    return-void

    .line 996
    .restart local v1    # "cacheUids":[I
    .restart local v2    # "size":I
    .restart local v3    # "pos":I
    .restart local v4    # "toIndex":I
    .restart local v5    # "fromIndex":I
    :cond_5d
    :goto_5d
    :try_start_5d
    const-string v6, "AppsFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove should filter cache for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fromIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", toIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_5d .. :try_end_8a} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    return-void

    .line 989
    .end local v3    # "pos":I
    .local v4, "pos":I
    :cond_91
    :goto_91
    :try_start_91
    const-string v3, "AppsFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to remove should filter cache for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fromIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_91 .. :try_end_b4} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    return-void

    .line 1002
    .end local v1    # "cacheUids":[I
    .end local v2    # "size":I
    .end local v4    # "pos":I
    .end local v5    # "fromIndex":I
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v1
.end method

.method private updateEntireShouldFilterCache(Lcom/android/server/pm/Computer;I)V
    .registers 8
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "subjectUserId"    # I

    .line 786
    nop

    .line 787
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v0

    .line 788
    .local v0, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 789
    .local v1, "users":[Landroid/content/pm/UserInfo;
    const/16 v2, -0x2710

    .line 790
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "u":I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_1a

    .line 791
    aget-object v4, v1, v3

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne p2, v4, :cond_17

    .line 792
    move v2, p2

    .line 793
    goto :goto_1a

    .line 790
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 796
    .end local v3    # "u":I
    :cond_1a
    :goto_1a
    const/16 v3, -0x2710

    if-ne v2, v3, :cond_26

    .line 797
    const-string v3, "AppsFilter"

    const-string v4, "We encountered a new user that isn\'t a member of known users, updating the whole cache"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const/4 v2, -0x1

    .line 801
    :cond_26
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 803
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 804
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;I)V
    .registers 5
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "reason"    # I

    .line 824
    const-wide/16 v0, 0x2710

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V

    .line 825
    return-void
.end method

.method private updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;JI)V
    .registers 12
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "delayMs"    # J
    .param p4, "reason"    # I

    .line 829
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move v4, p4

    .end local p1    # "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .end local p2    # "delayMs":J
    .end local p4    # "reason":I
    .local v3, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    .local v4, "reason":I
    .local v5, "delayMs":J
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppsFilterImpl;Landroid/content/pm/PackageManagerInternal;IJ)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 873
    return-void
.end method

.method private updateEntireShouldFilterCacheInner(Lcom/android/server/pm/Computer;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .registers 15
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;
    .param p4, "subjectUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 810
    .local p2, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_53

    .line 811
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1b

    .line 812
    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->clear()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_1b

    .line 820
    :catchall_15
    move-exception v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    goto :goto_58

    .line 814
    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    array-length v2, p3

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->setCapacity(I)V

    .line 815
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    .local v9, "i":I
    :goto_2d
    if-ltz v9, :cond_47

    .line 816
    nop

    .line 817
    invoke-virtual {p2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_53

    .line 816
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local p3    # "users":[Landroid/content/pm/UserInfo;
    .end local p4    # "subjectUserId":I
    .local v3, "snapshot":Lcom/android/server/pm/Computer;
    .local v6, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v7, "users":[Landroid/content/pm/UserInfo;
    .local v8, "subjectUserId":I
    :try_start_3d
    invoke-direct/range {v2 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 815
    add-int/lit8 v9, v9, -0x1

    move-object p1, v3

    move-object p2, v6

    move-object p3, v7

    move p4, v8

    goto :goto_2d

    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v6    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v7    # "users":[Landroid/content/pm/UserInfo;
    .end local v8    # "subjectUserId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p3    # "users":[Landroid/content/pm/UserInfo;
    .restart local p4    # "subjectUserId":I
    :cond_47
    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .line 820
    .end local v9    # "i":I
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local p3    # "users":[Landroid/content/pm/UserInfo;
    .end local p4    # "subjectUserId":I
    .restart local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v6    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v7    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "subjectUserId":I
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_3d .. :try_end_4c} :catchall_60

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 821
    return-void

    .line 820
    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v6    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v7    # "users":[Landroid/content/pm/UserInfo;
    .end local v8    # "subjectUserId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p3    # "users":[Landroid/content/pm/UserInfo;
    .restart local p4    # "subjectUserId":I
    :catchall_53
    move-exception v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local p3    # "users":[Landroid/content/pm/UserInfo;
    .end local p4    # "subjectUserId":I
    .restart local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v6    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v7    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "subjectUserId":I
    :goto_58
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_60

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    :catchall_60
    move-exception v0

    goto :goto_58
.end method

.method private updateShouldFilterCacheForImplicitAccess()V
    .registers 2

    .line 904
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 905
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {p0, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 906
    return-void
.end method

.method private updateShouldFilterCacheForImplicitAccess(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 910
    .local p1, "queriesMap":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 912
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 913
    .local v2, "callingUid":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 914
    .local v3, "targetUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 915
    .local v5, "targetUid":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 916
    .end local v5    # "targetUid":Ljava/lang/Integer;
    goto :goto_27

    .line 911
    .end local v2    # "callingUid":Ljava/lang/Integer;
    .end local v3    # "targetUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 918
    .end local v1    # "i":I
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 919
    return-void

    .line 918
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v1
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;)V
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 923
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 924
    return-void

    .line 926
    :cond_5
    nop

    .line 927
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 928
    .local v5, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 929
    .local v6, "users":[Landroid/content/pm/UserInfo;
    iget-object v9, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v9

    :try_start_17
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 930
    nop

    .line 931
    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 932
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_38

    .line 930
    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    :try_start_2a
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V

    .line 933
    monitor-exit v9
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_43

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 934
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 935
    return-void

    .line 933
    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_38
    move-exception v0

    move-object v2, p1

    move-object p1, v0

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v2    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_3b
    :try_start_3b
    monitor-exit v9
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_43

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw p1

    :catchall_43
    move-exception v0

    move-object p1, v0

    goto :goto_3b
.end method

.method private updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    .registers 16
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "skipPackageName"    # Ljava/lang/String;
    .param p3, "subjectSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p6, "subjectUserId"    # I
    .param p7, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "II)V"
        }
    .end annotation

    .line 942
    .local p4, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-virtual {p4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_61

    .line 943
    invoke-virtual {p4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 944
    .local v6, "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 945
    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move v7, p6

    goto :goto_5a

    .line 948
    :cond_22
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eq v1, p2, :cond_56

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p2, :cond_33

    .line 950
    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move v7, p6

    goto :goto_5a

    .line 952
    :cond_33
    const/4 v1, -0x1

    if-ne p6, v1, :cond_4d

    .line 953
    const/4 v1, 0x0

    .local v1, "su":I
    :goto_37
    array-length v2, p5

    if-ge v1, v2, :cond_48

    .line 954
    aget-object v2, p5, v1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .local v3, "snapshot":Lcom/android/server/pm/Computer;
    .local v4, "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .local v5, "allUsers":[Landroid/content/pm/UserInfo;
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    :cond_48
    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    move v7, p6

    .end local v1    # "su":I
    goto :goto_5a

    .line 958
    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    :cond_4d
    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    move-object v2, p0

    move v7, p6

    .end local p6    # "subjectUserId":I
    .local v7, "subjectUserId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V

    goto :goto_5a

    .line 948
    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    .end local v7    # "subjectUserId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local p6    # "subjectUserId":I
    :cond_56
    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move v7, p6

    .line 942
    .end local v6    # "otherSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .end local p6    # "subjectUserId":I
    .restart local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local v7    # "subjectUserId":I
    :goto_5a
    add-int/lit8 v0, v0, -0x1

    move-object p1, v3

    move-object p3, v4

    move-object p5, v5

    move p6, v7

    goto :goto_a

    .line 962
    .end local v0    # "i":I
    .end local v3    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v4    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "allUsers":[Landroid/content/pm/UserInfo;
    .end local v7    # "subjectUserId":I
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p3    # "subjectSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "allUsers":[Landroid/content/pm/UserInfo;
    .restart local p6    # "subjectUserId":I
    :cond_61
    return-void
.end method

.method private updateShouldFilterCacheForUser(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;[Landroid/content/pm/UserInfo;Lcom/android/server/pm/pkg/PackageStateInternal;I)V
    .registers 19
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "subjectSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p4, "otherSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "subjectUserId"    # I

    .line 968
    move-object/from16 v6, p3

    const/4 v0, 0x0

    move v7, v0

    .local v7, "ou":I
    :goto_4
    array-length v0, v6

    if-ge v7, v0, :cond_3e

    .line 969
    aget-object v0, v6, v7

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 970
    .local v5, "otherUser":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    move/from16 v8, p5

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 971
    .local v2, "subjectUid":I
    invoke-interface/range {p4 .. p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v0

    invoke-static {v5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    .line 972
    .local v9, "otherUid":I
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterImpl;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v10

    .line 974
    move v12, v2

    move v11, v5

    .end local v2    # "subjectUid":I
    .end local v5    # "otherUser":I
    .local v10, "shouldFilterSubjectToOther":Z
    .local v11, "otherUser":I
    .local v12, "subjectUid":I
    move-object v4, p2

    move-object/from16 v3, p4

    move v5, v8

    move v2, v9

    .end local v9    # "otherUid":I
    .local v2, "otherUid":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterImpl;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v8

    .line 976
    .local v8, "shouldFilterOtherToSubject":Z
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v12, v2, v10}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 977
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v2, v12, v8}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 968
    .end local v2    # "otherUid":I
    .end local v8    # "shouldFilterOtherToSubject":Z
    .end local v10    # "shouldFilterSubjectToOther":Z
    .end local v11    # "otherUser":I
    .end local v12    # "subjectUid":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 979
    .end local v7    # "ou":I
    :cond_3e
    return-void
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 4
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1076
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/pm/AppsFilterImpl;->addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 1078
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    .registers 23
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "newPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "isReplace"    # Z
    .param p4, "retainImplicitGrantOnReplace"    # Z

    .line 517
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v9

    .line 518
    .local v9, "currentTimeUs":J
    const/4 v0, 0x1

    if-eqz p3, :cond_d

    .line 519
    const/4 v2, 0x3

    goto :goto_e

    .line 520
    :cond_d
    move v2, v0

    :goto_e
    move v11, v2

    .line 521
    .local v11, "logType":I
    sget-boolean v2, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    const-wide/32 v12, 0x40000

    if-eqz v2, :cond_1b

    .line 522
    const-string v2, "filter.addPackage"

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 525
    :cond_1b
    if-eqz p3, :cond_29

    .line 527
    move-object/from16 v2, p1

    move/from16 v14, p4

    :try_start_21
    invoke-direct {v1, v2, v4, v0, v14}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_2d

    .line 560
    :catchall_25
    move-exception v0

    move v2, v11

    goto/16 :goto_fe

    .line 525
    :cond_29
    move-object/from16 v2, p1

    move/from16 v14, p4

    .line 530
    :goto_2d
    nop

    .line 531
    :try_start_2e
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v5

    .line 532
    .local v5, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-interface {v2}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 533
    .local v6, "users":[Landroid/content/pm/UserInfo;
    nop

    .line 534
    invoke-direct {v1, v4, v5}, Lcom/android/server/pm/AppsFilterImpl;->addPackageInternal(Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;)Landroid/util/ArraySet;

    move-result-object v0

    move-object v15, v0

    .line 535
    .local v15, "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-boolean v0, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v0, :cond_d2

    .line 536
    iget-object v3, v1, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v3
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_fc

    :try_start_49
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 537
    nop

    .line 538
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_c2

    .line 537
    move-object v7, v3

    const/4 v3, 0x0

    move-object/from16 v16, v7

    const/4 v7, -0x1

    :try_start_56
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_c0

    .line 539
    if-eqz v15, :cond_96

    .line 540
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_5c
    :try_start_5c
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 541
    invoke-virtual {v15, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, "changedPackage":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 543
    .local v4, "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_74

    .line 547
    move-object v8, v5

    move-object v1, v6

    goto :goto_86

    .line 549
    :cond_74
    nop

    .line 550
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 549
    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object/from16 v2, p1

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    .end local v1    # "changedPackage":Ljava/lang/String;
    .local v17, "changedPackage":Ljava/lang/String;
    invoke-direct/range {v1 .. v8}, Lcom/android/server/pm/AppsFilterImpl;->updateShouldFilterCacheForPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;II)V
    :try_end_84
    .catchall {:try_start_5c .. :try_end_84} :catchall_8e

    move-object v8, v5

    move-object v1, v6

    .line 540
    .end local v4    # "changedPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .end local v17    # "changedPackage":Ljava/lang/String;
    .local v1, "users":[Landroid/content/pm/UserInfo;
    .local v8, "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_86
    add-int/lit8 v0, v0, 0x1

    move-object v6, v1

    move-object v5, v8

    goto :goto_5c

    .end local v1    # "users":[Landroid/content/pm/UserInfo;
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "users":[Landroid/content/pm/UserInfo;
    :cond_8b
    move-object v8, v5

    move-object v1, v6

    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .restart local v1    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_98

    .line 553
    .end local v0    # "index":I
    .end local v1    # "users":[Landroid/content/pm/UserInfo;
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "users":[Landroid/content/pm/UserInfo;
    :catchall_8e
    move-exception v0

    move-object v8, v5

    move-object v1, v6

    move v2, v11

    move-object v11, v1

    move-object/from16 v1, p0

    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .restart local v1    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_c8

    .line 539
    .end local v1    # "users":[Landroid/content/pm/UserInfo;
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "users":[Landroid/content/pm/UserInfo;
    :cond_96
    move-object v8, v5

    move-object v1, v6

    .line 553
    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .restart local v1    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_98
    :try_start_98
    monitor-exit v16
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_ba

    :try_start_99
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v3, v2, v9

    array-length v5, v1

    .line 555
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7
    :try_end_ae
    .catchall {:try_start_99 .. :try_end_ae} :catchall_b6

    .line 554
    move v2, v11

    move-object v11, v1

    move-object/from16 v1, p0

    .end local v1    # "users":[Landroid/content/pm/UserInfo;
    .local v2, "logType":I
    .local v11, "users":[Landroid/content/pm/UserInfo;
    :try_start_b2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_fa

    goto :goto_ef

    .line 560
    .end local v2    # "logType":I
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v15    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v11, "logType":I
    :catchall_b6
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_fd

    .line 553
    .restart local v1    # "users":[Landroid/content/pm/UserInfo;
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v15    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_ba
    move-exception v0

    move v2, v11

    move-object v11, v1

    move-object/from16 v1, p0

    .end local v1    # "users":[Landroid/content/pm/UserInfo;
    .restart local v2    # "logType":I
    .local v11, "users":[Landroid/content/pm/UserInfo;
    goto :goto_c8

    .end local v2    # "logType":I
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "users":[Landroid/content/pm/UserInfo;
    .local v11, "logType":I
    :catchall_c0
    move-exception v0

    goto :goto_c5

    :catchall_c2
    move-exception v0

    move-object/from16 v16, v3

    :goto_c5
    move-object v8, v5

    move v2, v11

    move-object v11, v6

    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .restart local v2    # "logType":I
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v11, "users":[Landroid/content/pm/UserInfo;
    :goto_c8
    :try_start_c8
    monitor-exit v16
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_d0

    :try_start_c9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .end local v2    # "logType":I
    .end local v9    # "currentTimeUs":J
    .end local p0    # "this":Lcom/android/server/pm/AppsFilterImpl;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "newPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p3    # "isReplace":Z
    .end local p4    # "retainImplicitGrantOnReplace":Z
    throw v0

    .restart local v2    # "logType":I
    .restart local v9    # "currentTimeUs":J
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterImpl;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "newPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p3    # "isReplace":Z
    .restart local p4    # "retainImplicitGrantOnReplace":Z
    :catchall_d0
    move-exception v0

    goto :goto_c8

    .line 557
    .end local v2    # "logType":I
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "users":[Landroid/content/pm/UserInfo;
    .local v11, "logType":I
    :cond_d2
    move-object v8, v5

    move v2, v11

    move-object v11, v6

    .end local v5    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "users":[Landroid/content/pm/UserInfo;
    .restart local v2    # "logType":I
    .restart local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v11, "users":[Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackage: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/pm/AppsFilterImpl;->invalidateCache(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_c9 .. :try_end_ef} :catchall_fa

    .line 560
    .end local v8    # "settings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v11    # "users":[Landroid/content/pm/UserInfo;
    .end local v15    # "additionalChangedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_ef
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 561
    sget-boolean v0, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v0, :cond_f9

    .line 562
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 565
    :cond_f9
    return-void

    .line 560
    :catchall_fa
    move-exception v0

    goto :goto_fe

    .end local v2    # "logType":I
    .local v11, "logType":I
    :catchall_fc
    move-exception v0

    :goto_fd
    move v2, v11

    .end local v11    # "logType":I
    .restart local v2    # "logType":I
    :goto_fe
    invoke-direct {v1}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 561
    sget-boolean v3, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_TRACING:Z

    if-eqz v3, :cond_108

    .line 562
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    :cond_108
    throw v0
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .registers 3
    .param p1, "what"    # Lcom/android/server/utils/Watchable;

    .line 171
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 172
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/FeatureConfig;
    .registers 2

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    return-object v0
.end method

.method public grantImplicitAccess(IIZ)Z
    .registers 9
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I
    .param p3, "retainOnUpdate"    # Z

    .line 470
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 471
    return v0

    .line 474
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryableLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    :try_start_d
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 475
    if-eqz p3, :cond_1d

    .line 476
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v2

    goto :goto_27

    .line 477
    :cond_1d
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterImpl;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/utils/WatchedSparseSetArray;->add(ILjava/lang/Object;)Z

    move-result v2

    :goto_27
    nop

    .line 478
    .local v2, "changed":Z
    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v3, :cond_31

    if-eqz v2, :cond_31

    .line 479
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 481
    :cond_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_d .. :try_end_32} :catchall_98

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    .line 482
    if-eqz v2, :cond_6c

    sget-boolean v1, Lcom/android/server/pm/AppsFilterImpl;->DEBUG_LOGGING:Z

    if-eqz v1, :cond_6c

    .line 483
    const-string v1, "AppsFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4b

    const-string/jumbo v4, "retained "

    goto :goto_4d

    :cond_4b
    const-string v4, ""

    :goto_4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "implicit access granted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_6c
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-eqz v1, :cond_92

    .line 488
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceBeforePmsLock()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v1

    :try_start_79
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsLock()V

    .line 490
    iget-object v3, p0, Lcom/android/server/pm/AppsFilterImpl;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->put(IIZ)V

    .line 491
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_89

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    goto :goto_92

    :catchall_89
    move-exception v0

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0

    .line 493
    :cond_92
    :goto_92
    if-eqz v2, :cond_97

    .line 494
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 496
    :cond_97
    return v2

    .line 481
    .end local v2    # "changed":Z
    :catchall_98
    move-exception v0

    :try_start_99
    monitor-exit v1
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->traceAfterPmsUnlock()V

    throw v0
.end method

.method protected isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 8
    .param p2, "callingPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p4, "targetPkg"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p5, "callingAppId"    # I
    .param p6, "targetAppId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "II)Z"
        }
    .end annotation

    .line 1038
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilterImpl;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1039
    invoke-virtual {p0, p5, p6}, Lcom/android/server/pm/AppsFilterImpl;->isQueryableViaComponent(II)Z

    move-result v0

    return v0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result v0

    return v0
.end method

.method public onSystemReady(Landroid/content/pm/PackageManagerInternal;)V
    .registers 3
    .param p1, "pmInternal"    # Landroid/content/pm/PackageManagerInternal;

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 501
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->onSystemReady()V

    .line 503
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCacheAsync(Landroid/content/pm/PackageManagerInternal;I)V

    .line 505
    return-void
.end method

.method public onUserCreated(Lcom/android/server/pm/Computer;I)V
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "newUserId"    # I

    .line 876
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 877
    return-void

    .line 879
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 880
    .local v0, "currentTimeUs":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilterImpl;->updateEntireShouldFilterCache(Lcom/android/server/pm/Computer;I)V

    .line 881
    nop

    .line 883
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 884
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    array-length v8, v2

    .line 885
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 881
    const/4 v5, 0x2

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    .line 886
    return-void
.end method

.method public onUserDeleted(Lcom/android/server/pm/Computer;I)V
    .registers 13
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "userId"    # I

    .line 889
    iget-boolean v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mCacheReady:Z

    if-nez v0, :cond_5

    .line 890
    return-void

    .line 892
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 893
    .local v0, "currentTimeUs":J
    invoke-direct {p0, p2}, Lcom/android/server/pm/AppsFilterImpl;->removeShouldFilterCacheForUser(I)V

    .line 894
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilterImpl;->onChanged()V

    .line 895
    nop

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 898
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    array-length v8, v2

    .line 899
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 895
    const/4 v5, 0x3

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/pm/AppsFilterImpl;->logCacheRebuilt(IJII)V

    .line 900
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 138
    return-void
.end method

.method public removePackage(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 14
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v0

    .line 1087
    .local v0, "currentTimeUs":J
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, v2}, Lcom/android/server/pm/AppsFilterImpl;->removePackageInternal(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/PackageStateInternal;ZZ)V

    .line 1089
    nop

    .line 1091
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    sub-long v6, v2, v0

    .line 1092
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    array-length v8, v2

    .line 1093
    invoke-interface {p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v9

    .line 1094
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v10

    .line 1089
    const/4 v5, 0x2

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/AppsFilterImpl;->logCacheUpdated(IJIII)V

    .line 1095
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/AppsFilterSnapshot;
    .registers 2

    .line 259
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/AppsFilterSnapshot;

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lcom/android/server/pm/AppsFilterImpl;->snapshot()Lcom/android/server/pm/AppsFilterSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 3
    .param p1, "observer"    # Lcom/android/server/utils/Watcher;

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterImpl;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 149
    return-void
.end method
