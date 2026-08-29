.class public abstract Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;
.source "AppsFilterBase.java"

# interfaces
.implements Lcom/android/server/pm/AppsFilterSnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilterBase$ToString;
    }
.end annotation


# static fields
.field protected static final CACHE_INVALID:Z = false

.field protected static final CACHE_REBUILD_DELAY_MAX_MS:I = 0x2710

.field protected static final CACHE_REBUILD_DELAY_MIN_MS:I = 0x2710

.field protected static final CACHE_VALID:Z = true

.field protected static final DEBUG_ALLOW_ALL:Z = false

.field public static DEBUG_LOGGING:Z = false

.field public static DEBUG_TRACING:Z = false

.field protected static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field protected volatile mCacheEnabled:Z

.field protected volatile mCacheReady:Z

.field protected final mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

.field protected mForceQueryable:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field protected mForceQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mImplicitQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile mNeedToUpdateCacheForImplicitAccess:Z

.field protected mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field protected mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mProtectedBroadcastsSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mQueriesViaComponentSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueriesViaPackageSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesLibrarySnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mQueryableViaUsesPermissionSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRetainedImplicitlyQueryableSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation
.end field

.field protected mShouldFilterCacheSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/utils/WatchedSparseBooleanMatrix;",
            ">;"
        }
    .end annotation
.end field

.field protected mSystemAppsQueryable:Z

.field protected mSystemSigningDetails:Landroid/content/pm/SigningDetails;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    .line 69
    sput-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 198
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/server/pm/AppsFilterBase;->mNeedToUpdateCacheForImplicitAccess:Z

    .line 204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheValid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 847
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<TT;>;"
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_49

    if-eqz p1, :cond_10

    .line 848
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 849
    :cond_10
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 851
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_33

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 852
    :cond_33
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 853
    if-nez p5, :cond_41

    move-object v3, v1

    goto :goto_45

    :cond_41
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_45
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 855
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_48
    goto :goto_21

    .line 857
    :cond_49
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 13
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p2, "queriesMap":Lcom/android/server/utils/WatchedSparseSetArray;, "Lcom/android/server/utils/WatchedSparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_2
    invoke-virtual {p2}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_54

    .line 820
    invoke-virtual {p2, v6}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 821
    .local v7, "callingId":Ljava/lang/Integer;
    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 823
    nop

    .line 824
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 825
    if-nez p4, :cond_27

    .line 826
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2c

    .line 827
    :cond_27
    invoke-interface {p4, v7}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 823
    :goto_2c
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    goto :goto_51

    .line 830
    :cond_34
    nop

    .line 831
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 832
    if-nez p4, :cond_45

    .line 833
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_4a

    .line 834
    :cond_45
    invoke-interface {p4, v7}, Lcom/android/server/pm/AppsFilterBase$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 830
    :goto_4a
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 819
    .end local v7    # "callingId":Ljava/lang/Integer;
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 838
    .end local v6    # "i":I
    :cond_54
    return-void
.end method

.method private static isQueryableBySdkSandbox(II)Z
    .registers 3
    .param p0, "callingUid"    # I
    .param p1, "targetUid"    # I

    .line 322
    invoke-static {p0}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$dumpQueries$0(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 14
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "users"    # [I
    .param p2, "getPackagesForUid"    # Lcom/android/internal/util/function/QuadFunction;
    .param p3, "input"    # Ljava/lang/Integer;

    .line 733
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 734
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_86

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 736
    .local v1, "callingUid":I
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 737
    .local v2, "appId":I
    const/4 v3, 0x0

    .line 738
    .local v3, "packagesForUid":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, p1

    .local v5, "size":I
    :goto_1b
    const/4 v6, 0x0

    if-nez v3, :cond_3c

    if-ge v4, v5, :cond_3c

    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v8, p1, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 740
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 739
    invoke-interface {p2, v7, v8, v9, v6}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 738
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 742
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_3c
    if-nez v3, :cond_58

    .line 743
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[app id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not installed]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    .line 745
    :cond_58
    array-length v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5f

    aget-object v4, v3, v6

    goto :goto_7e

    .line 746
    :cond_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7e
    move-object v0, v4

    .line 748
    :goto_7f
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    .end local v1    # "callingUid":I
    .end local v2    # "appId":I
    .end local v3    # "packagesForUid":[Ljava/lang/String;
    :cond_86
    return-object v0
.end method

.method private static log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    .registers 5
    .param p0, "callingSetting"    # Ljava/lang/Object;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p2, "description"    # Ljava/lang/String;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    if-nez p0, :cond_12

    const-string/jumbo v1, "system"

    goto :goto_13

    :cond_12
    move-object v1, p0

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void
.end method


# virtual methods
.method public canQueryPackage(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 6
    .param p1, "querying"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "potentialTarget"    # Ljava/lang/String;

    .line 698
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 699
    .local v0, "appId":I
    const/16 v1, 0x2710

    const/4 v2, 0x1

    if-ge v0, v1, :cond_e

    .line 700
    return v2

    .line 704
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v1, p1}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 705
    return v2

    .line 708
    :cond_17
    invoke-static {p1}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 709
    return v2

    .line 712
    :cond_1e
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    .line 713
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    .line 712
    :goto_34
    return v2
.end method

.method protected dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via forceQueryable:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->untrackedStorage()Landroid/util/ArraySet;

    move-result-object v3

    const-string v4, "forceQueryable"

    const-string v5, "  "

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "filteringAppId":Ljava/lang/Integer;
    .end local p3    # "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    .local v1, "pw":Ljava/io/PrintWriter;
    .local v2, "filteringAppId":Ljava/lang/Integer;
    .local v6, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterBase;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 774
    return-void
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[ILcom/android/internal/util/function/QuadFunction;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p4, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/DumpState;",
            "[I",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p5, "getPackagesForUid":Lcom/android/internal/util/function/QuadFunction;, "Lcom/android/internal/util/function/QuadFunction<Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;[Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 732
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p4, p5}, Lcom/android/server/pm/AppsFilterBase$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;[ILcom/android/internal/util/function/QuadFunction;)V

    .line 752
    .local v1, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 753
    const-string v2, "Queries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 755
    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v2}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v2

    if-nez v2, :cond_27

    .line 756
    const-string v2, "  DISABLED"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 757
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-nez v2, :cond_27

    .line 758
    return-void

    .line 761
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  system apps queryable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/pm/AppsFilterBase;->mSystemAppsQueryable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpForceQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 763
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 764
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 765
    invoke-virtual {p0, p1, p2, p4, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 766
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 767
    return-void
.end method

.method protected dumpQueriesViaComponent(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 784
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via component:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 786
    return-void
.end method

.method protected dumpQueriesViaImplicitlyQueryable(Ljava/io/PrintWriter;Ljava/lang/Integer;[ILcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "[I",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 790
    .local p4, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queryable via interaction:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    array-length v0, p3

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4f

    aget v2, p3, v1

    .line 792
    .local v2, "user":I
    const-string v3, "    User "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 793
    nop

    .line 794
    const/4 v3, 0x0

    if-nez p2, :cond_24

    move-object v4, v3

    goto :goto_30

    :cond_24
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_30
    iget-object v5, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 793
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 796
    nop

    .line 797
    if-nez p2, :cond_3b

    goto :goto_47

    :cond_3b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_47
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    .line 796
    invoke-static {p1, v3, v4, v6, p4}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 791
    .end local v2    # "user":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 800
    :cond_4f
    return-void
.end method

.method protected dumpQueriesViaPackage(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 778
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queries via package name:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 780
    return-void
.end method

.method protected dumpQueriesViaUsesLibrary(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 804
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queryable via uses-library:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 807
    return-void
.end method

.method protected dumpQueriesViaUsesPermission(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/pm/AppsFilterBase$ToString;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filteringAppId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/pm/AppsFilterBase$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 811
    .local p3, "expandPackages":Lcom/android/server/pm/AppsFilterBase$ToString;, "Lcom/android/server/pm/AppsFilterBase$ToString<Ljava/lang/Integer;>;"
    const-string v0, "  queryable via uses-permission:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    const-string v1, "    "

    invoke-static {p1, p2, v0, v1, p3}, Lcom/android/server/pm/AppsFilterBase;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Lcom/android/server/utils/WatchedSparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilterBase$ToString;)V

    .line 814
    return-void
.end method

.method public getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .registers 22
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 271
    .local p4, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    move-object/from16 v0, p3

    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 272
    const/4 v1, 0x0

    return-object v1

    .line 275
    :cond_10
    new-instance v1, Landroid/util/SparseArray;

    array-length v3, v0

    invoke-direct {v1, v3}, Landroid/util/SparseArray;-><init>(I)V

    .line 276
    .local v1, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v3, 0x0

    move v8, v3

    .local v8, "u":I
    :goto_18
    array-length v3, v0

    if-ge v8, v3, :cond_87

    .line 277
    aget v7, v0, v8

    .line 278
    .local v7, "userId":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v3

    new-array v9, v3, [I

    .line 279
    .local v9, "appIds":[I
    const/4 v3, 0x0

    .line 280
    .local v3, "buffer":[I
    const/4 v4, 0x0

    .line 281
    .local v4, "allowListSize":I
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object v10, v3

    move v11, v4

    move v12, v5

    .end local v3    # "buffer":[I
    .end local v4    # "allowListSize":I
    .local v10, "buffer":[I
    .local v11, "allowListSize":I
    .local v12, "i":I
    :goto_2e
    if-ltz v12, :cond_77

    .line 282
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 283
    .local v5, "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v14

    .line 284
    .local v14, "existingAppId":I
    const/16 v3, 0x2710

    if-ge v14, v3, :cond_42

    .line 285
    goto :goto_70

    .line 287
    :cond_42
    const/4 v15, 0x0

    invoke-static {v9, v15, v11, v14}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v3

    .line 288
    .local v3, "loc":I
    if-ltz v3, :cond_4a

    .line 289
    goto :goto_70

    .line 291
    :cond_4a
    invoke-static {v7, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 292
    .local v4, "existingUid":I
    move-object/from16 v6, p2

    move v15, v3

    move-object/from16 v3, p1

    .end local v3    # "loc":I
    .local v15, "loc":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result v16

    if-nez v16, :cond_70

    .line 294
    if-nez v10, :cond_5e

    .line 295
    array-length v2, v9

    new-array v10, v2, [I

    .line 297
    :cond_5e
    not-int v2, v15

    .line 298
    .local v2, "insert":I
    sub-int v3, v11, v2

    const/4 v6, 0x0

    invoke-static {v9, v2, v10, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    aput v14, v9, v2

    .line 300
    add-int/lit8 v3, v2, 0x1

    sub-int v0, v11, v2

    invoke-static {v10, v6, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    add-int/lit8 v11, v11, 0x1

    .line 281
    .end local v2    # "insert":I
    .end local v4    # "existingUid":I
    .end local v5    # "existingSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v14    # "existingAppId":I
    .end local v15    # "loc":I
    :cond_70
    :goto_70
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v2, p0

    move-object/from16 v0, p3

    goto :goto_2e

    :cond_77
    move-object/from16 v13, p4

    .line 304
    .end local v12    # "i":I
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    .end local v7    # "userId":I
    .end local v9    # "appIds":[I
    .end local v10    # "buffer":[I
    .end local v11    # "allowListSize":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, p3

    goto :goto_18

    :cond_87
    move-object/from16 v13, p4

    .line 306
    .end local v8    # "u":I
    return-object v1
.end method

.method getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILcom/android/server/utils/WatchedArrayMap;)Landroid/util/SparseArray;
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "setting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p3, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            "[I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 317
    .local p4, "existingSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    nop

    .line 318
    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->untrackedStorage()Landroid/util/ArrayMap;

    move-result-object v0

    .line 317
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected isForceQueryable(I)Z
    .registers 4
    .param p1, "callingAppId"    # I

    .line 207
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mForceQueryable:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 219
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaComponent(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 215
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponent:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z
    .registers 11
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

    .line 243
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p3, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_16

    .line 244
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 245
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v1, p4, v2}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 247
    return v0

    .line 250
    :cond_16
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_36

    .line 251
    nop

    .line 252
    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    .line 253
    .local v2, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v2, :cond_33

    iget-object v3, p0, Lcom/android/server/pm/AppsFilterBase;->mProtectedBroadcasts:Lcom/android/server/utils/WatchedArraySet;

    invoke-static {v2, p4, v3}, Lcom/android/server/pm/AppsFilterUtils;->canQueryViaComponents(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArraySet;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 255
    return v0

    .line 250
    .end local v2    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 259
    .end local v1    # "i":I
    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method protected isQueryableViaPackage(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaPackage:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaUsesLibrary(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 227
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesLibrary:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isQueryableViaUsesPermission(II)Z
    .registers 5
    .param p1, "callingAppId"    # I
    .param p2, "targetAppId"    # I

    .line 231
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mQueryableViaUsesPermission:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isRetainedImplicitlyQueryable(II)Z
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "targetUid"    # I

    .line 223
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mRetainedImplicitlyQueryable:Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/WatchedSparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 17
    .param p1, "snapshot"    # Lcom/android/server/pm/snapshot/PackageDataSnapshot;
    .param p2, "callingUid"    # I
    .param p3, "callingSetting"    # Ljava/lang/Object;
    .param p4, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "userId"    # I

    move/from16 v0, p2

    move-object/from16 v1, p4

    if-eqz v1, :cond_13

    :try_start_6
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppList(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    return v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_13} :catch_13

    .line 333
    :catch_13
    :cond_13
    move/from16 v6, p5

    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    const-wide/32 v7, 0x40000

    if-eqz v0, :cond_22

    .line 334
    const-string/jumbo v0, "shouldFilterApplication"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 337
    :cond_22
    :try_start_22
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 338
    .local v0, "callingAppId":I
    const/16 v1, 0x2710

    const/4 v9, 0x0

    if-lt v0, v1, :cond_fd

    .line 339
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v2

    if-lt v2, v1, :cond_fd

    .line 340
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    if-ne v0, v1, :cond_39

    goto/16 :goto_fd

    .line 342
    :cond_39
    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_69

    .line 343
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v1

    .line 344
    .local v1, "targetAppId":I
    invoke-static {v6, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 347
    .local v2, "targetUid":I
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v3

    if-nez v3, :cond_60

    .line 348
    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v3

    if-nez v3, :cond_60

    .line 349
    invoke-static {p2, v2}, Lcom/android/server/pm/AppsFilterBase;->isQueryableBySdkSandbox(II)Z

    move-result v3
    :try_end_5c
    .catchall {:try_start_22 .. :try_end_5c} :catchall_106

    if-nez v3, :cond_60

    move v9, v10

    goto :goto_61

    :cond_60
    nop

    .line 385
    :goto_61
    sget-boolean v3, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v3, :cond_68

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 347
    :cond_68
    return v9

    .line 350
    .end local v1    # "targetAppId":I
    .end local v2    # "targetUid":I
    :cond_69
    :try_start_69
    invoke-static {v0}, Landroid/os/Process;->isPrivateComputeCoreUid(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 351
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPccId()I

    move-result v1
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_106

    .line 355
    .local v1, "targetPccId":I
    if-ne v0, v1, :cond_7e

    .line 356
    nop

    .line 385
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_7d

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    :cond_7d
    return v9

    .line 358
    :cond_7e
    :try_start_7e
    move-object v2, p3

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 359
    .local v2, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_a4

    .line 360
    const-string v3, "AppsFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No setting found for pcc uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7e .. :try_end_9b} :catchall_106

    .line 361
    nop

    .line 385
    sget-boolean v3, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v3, :cond_a3

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    :cond_a3
    return v10

    .line 365
    :cond_a4
    :try_start_a4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-static {v6, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3
    :try_end_ac
    .catchall {:try_start_a4 .. :try_end_ac} :catchall_106

    move p2, v3

    goto :goto_af

    .line 350
    .end local v1    # "targetPccId":I
    .end local v2    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_ae
    move v3, p2

    .line 368
    .end local p2    # "callingUid":I
    .local v3, "callingUid":I
    :goto_af
    :try_start_af
    iget-boolean p2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheReady:Z

    if-eqz p2, :cond_cb

    iget-boolean p2, p0, Lcom/android/server/pm/AppsFilterBase;->mCacheEnabled:Z

    if-eqz p2, :cond_cb

    .line 369
    nop

    .line 370
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result p2

    .line 369
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationUsingCache(III)Z

    move-result p2
    :try_end_c0
    .catchall {:try_start_af .. :try_end_c0} :catchall_fa

    if-nez p2, :cond_e0

    .line 372
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_ca

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 372
    :cond_ca
    return v9

    .line 375
    :cond_cb
    :try_start_cb
    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/Computer;

    move-object v1, p0

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/AppsFilterBase;->shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z

    move-result p2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_fa

    if-nez p2, :cond_e0

    .line 377
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_df

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    :cond_df
    return v9

    .line 380
    :cond_e0
    :try_start_e0
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-nez p2, :cond_ec

    iget-object p2, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {p2, v0}, Lcom/android/server/pm/FeatureConfig;->isLoggingEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_f1

    .line 381
    :cond_ec
    const-string p2, "BLOCKED"

    invoke-static {p3, p4, p2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_e0 .. :try_end_f1} :catchall_fa

    .line 383
    :cond_f1
    nop

    .line 385
    sget-boolean p2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz p2, :cond_f9

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 383
    :cond_f9
    return v10

    .line 385
    .end local v0    # "callingAppId":I
    :catchall_fa
    move-exception v0

    move p2, v3

    goto :goto_107

    .line 341
    .end local v3    # "callingUid":I
    .restart local v0    # "callingAppId":I
    .restart local p2    # "callingUid":I
    :cond_fd
    :goto_fd
    nop

    .line 385
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_105

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 341
    :cond_105
    return v9

    .line 385
    .end local v0    # "callingAppId":I
    :catchall_106
    move-exception v0

    :goto_107
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_10e

    .line 386
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 388
    :cond_10e
    throw v0
.end method

.method protected shouldFilterApplicationInternal(Lcom/android/server/pm/Computer;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .registers 28
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I
    .param p3, "callingSetting"    # Ljava/lang/Object;
    .param p4, "targetPkgSetting"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p5, "targetUserId"    # I

    .line 410
    move-object/from16 v1, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    const-wide/32 v12, 0x40000

    if-eqz v0, :cond_17

    .line 411
    const-string/jumbo v0, "shouldFilterApplicationInternal"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 414
    :cond_17
    :try_start_17
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/FeatureConfig;->isGloballyEnabled()Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_521

    move v14, v0

    .line 415
    .local v14, "featureEnabled":Z
    const-string v0, "AppsFilter"

    const/4 v15, 0x0

    if-nez v14, :cond_35

    .line 416
    :try_start_23
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_2c

    .line 417
    const-string v2, "filtering disabled; skipped"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_521

    .line 419
    :cond_2c
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_34

    .line 688
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 419
    :cond_34
    return v15

    .line 421
    :cond_35
    const/16 v16, 0x1

    if-nez v9, :cond_58

    .line 422
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No setting found for non system uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_521

    .line 423
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_57

    .line 688
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 423
    :cond_57
    return v16

    .line 426
    :cond_58
    :try_start_58
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_61

    .line 427
    const-string v2, "getAppId"

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 429
    :cond_61
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 430
    .local v6, "callingAppId":I
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getAppId()I

    move-result v7

    .line 431
    .local v7, "targetAppId":I
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_70

    .line 432
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 434
    :cond_70
    if-eq v6, v7, :cond_505

    const/16 v2, 0x2710

    if-lt v6, v2, :cond_505

    if-ge v7, v2, :cond_7e

    move/from16 v17, v15

    move-object/from16 v15, p1

    goto/16 :goto_509

    .line 444
    :cond_7e
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_87

    .line 445
    const-string v2, "callingSetting instanceof"

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 447
    :cond_87
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 449
    .local v4, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    instance-of v2, v9, Lcom/android/server/pm/pkg/PackageStateInternal;
    :try_end_8e
    .catchall {:try_start_58 .. :try_end_8e} :catchall_521

    if-eqz v2, :cond_c7

    .line 450
    :try_start_90
    move-object v2, v9

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 451
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 452
    const/4 v3, 0x0

    .line 453
    .local v3, "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .line 454
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getSharedUserAppId()I

    move-result v5
    :try_end_9f
    .catchall {:try_start_90 .. :try_end_9f} :catchall_c0

    move/from16 v17, v15

    move-object/from16 v15, p1

    :try_start_a3
    invoke-interface {v15, v5}, Lcom/android/server/pm/Computer;->getSharedUser(I)Lcom/android/server/pm/pkg/SharedUserApi;

    move-result-object v5
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_b6

    .line 455
    .local v5, "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    if-eqz v5, :cond_b3

    .line 456
    move-wide/from16 v18, v12

    :try_start_ab
    invoke-interface {v5}, Lcom/android/server/pm/pkg/SharedUserApi;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_b5

    .line 455
    :cond_b3
    move-wide/from16 v18, v12

    .line 458
    .end local v5    # "sharedUserApi":Lcom/android/server/pm/pkg/SharedUserApi;
    :goto_b5
    goto :goto_bf

    .line 687
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v3    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "callingAppId":I
    .end local v7    # "targetAppId":I
    .end local v14    # "featureEnabled":Z
    :catchall_b6
    move-exception v0

    goto :goto_c3

    .line 459
    .restart local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "callingAppId":I
    .restart local v7    # "targetAppId":I
    .restart local v14    # "featureEnabled":Z
    :cond_b8
    move-wide/from16 v18, v12

    move/from16 v17, v15

    move-object/from16 v15, p1

    move-object v3, v2

    .line 461
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local v3    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :goto_bf
    goto :goto_d8

    .line 687
    .end local v3    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v6    # "callingAppId":I
    .end local v7    # "targetAppId":I
    .end local v14    # "featureEnabled":Z
    :catchall_c0
    move-exception v0

    move-object/from16 v15, p1

    :goto_c3
    move-wide/from16 v18, v12

    goto/16 :goto_524

    .line 462
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v6    # "callingAppId":I
    .restart local v7    # "targetAppId":I
    .restart local v14    # "featureEnabled":Z
    :cond_c7
    move-wide/from16 v18, v12

    move/from16 v17, v15

    move-object/from16 v15, p1

    const/4 v3, 0x0

    .line 463
    .restart local v3    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move-object v2, v9

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    .line 464
    invoke-virtual {v2}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v2

    .line 463
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 466
    :goto_d8
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_df

    .line 467
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_df
    .catchall {:try_start_ab .. :try_end_df} :catchall_51f

    .line 470
    :cond_df
    const-string v2, "DISABLED"

    if-eqz v3, :cond_105

    .line 471
    :try_start_e3
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_134

    iget-object v5, v1, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 472
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v5, v12}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v5

    if-nez v5, :cond_134

    .line 473
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_fc

    .line 474
    invoke-static {v9, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_fc
    .catchall {:try_start_e3 .. :try_end_fc} :catchall_51f

    .line 476
    :cond_fc
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_104

    .line 688
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    :cond_104
    return v17

    .line 479
    :cond_105
    :try_start_105
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_10b
    if-ltz v5, :cond_134

    .line 480
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    .line 481
    .local v12, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v12, :cond_131

    iget-object v13, v1, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    invoke-interface {v13, v12}, Lcom/android/server/pm/FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v13

    if-nez v13, :cond_131

    .line 482
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_128

    .line 483
    invoke-static {v9, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_128
    .catchall {:try_start_105 .. :try_end_128} :catchall_51f

    .line 485
    :cond_128
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_130

    .line 688
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    :cond_130
    return v17

    .line 479
    .end local v12    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_131
    add-int/lit8 v5, v5, -0x1

    goto :goto_10b

    .line 491
    .end local v5    # "i":I
    :cond_134
    :try_start_134
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_136
    .catchall {:try_start_134 .. :try_end_136} :catchall_4f6

    if-eqz v2, :cond_146

    .line 492
    :try_start_138
    const-string/jumbo v2, "requestsQueryAllPackages"

    move-wide/from16 v12, v18

    invoke-static {v12, v13, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_146

    .line 508
    :catchall_141
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4f9

    .line 494
    :cond_146
    :goto_146
    if-eqz v3, :cond_16e

    .line 495
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_1a1

    .line 496
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v2
    :try_end_156
    .catchall {:try_start_138 .. :try_end_156} :catchall_141

    if-eqz v2, :cond_1a1

    .line 497
    nop

    .line 508
    :try_start_159
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_163

    .line 509
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_51f

    .line 687
    :cond_163
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_16d

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    :cond_16d
    return v17

    .line 500
    :cond_16e
    :try_start_16e
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v2
    :try_end_172
    .catchall {:try_start_16e .. :try_end_172} :catchall_4f6

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_174
    if-ltz v2, :cond_1a1

    .line 501
    :try_start_176
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/PackageStateInternal;

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 502
    .local v5, "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v5, :cond_19e

    invoke-static {v5}, Lcom/android/server/pm/AppsFilterUtils;->requestsQueryAllPackages(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v12
    :try_end_186
    .catchall {:try_start_176 .. :try_end_186} :catchall_141

    if-eqz v12, :cond_19e

    .line 503
    nop

    .line 508
    :try_start_189
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_193

    .line 509
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_193
    .catchall {:try_start_189 .. :try_end_193} :catchall_51f

    .line 687
    :cond_193
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_19d

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 503
    :cond_19d
    return v17

    .line 500
    .end local v5    # "pkg":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_19e
    add-int/lit8 v2, v2, -0x1

    goto :goto_174

    .line 508
    .end local v2    # "i":I
    :cond_1a1
    :try_start_1a1
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_1ab

    .line 509
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 515
    :cond_1ab
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    .line 516
    .local v5, "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v5, :cond_1c7

    .line 517
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_1bb

    .line 518
    const-string/jumbo v2, "shouldFilterApplication: targetPkg is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_1a1 .. :try_end_1bb} :catchall_51f

    .line 520
    :cond_1bb
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_1c6

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    :cond_1c6
    return v16

    .line 522
    :cond_1c7
    :try_start_1c7
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v0
    :try_end_1cb
    .catchall {:try_start_1c7 .. :try_end_1cb} :catchall_51f

    if-eqz v0, :cond_1d9

    .line 524
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_1d8

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 524
    :cond_1d8
    return v17

    .line 528
    :cond_1d9
    :try_start_1d9
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_1db
    .catchall {:try_start_1d9 .. :try_end_1db} :catchall_4e7

    if-eqz v0, :cond_1ec

    .line 529
    :try_start_1dd
    const-string/jumbo v0, "mForceQueryable"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1e6
    .catchall {:try_start_1dd .. :try_end_1e6} :catchall_1e7

    goto :goto_1ec

    .line 538
    :catchall_1e7
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4ea

    .line 531
    :cond_1ec
    :goto_1ec
    :try_start_1ec
    invoke-virtual {v1, v7}, Lcom/android/server/pm/AppsFilterBase;->isForceQueryable(I)Z

    move-result v0
    :try_end_1f0
    .catchall {:try_start_1ec .. :try_end_1f0} :catchall_4e7

    if-eqz v0, :cond_211

    .line 532
    :try_start_1f2
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_1fb

    .line 533
    const-string v0, "force queryable"

    invoke-static {v9, v10, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_1fb
    .catchall {:try_start_1f2 .. :try_end_1fb} :catchall_1e7

    .line 535
    :cond_1fb
    nop

    .line 538
    :try_start_1fc
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_206

    .line 539
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_206
    .catchall {:try_start_1fc .. :try_end_206} :catchall_51f

    .line 687
    :cond_206
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_210

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 535
    :cond_210
    return v17

    .line 538
    :cond_211
    :try_start_211
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_21b

    .line 539
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_21b
    .catchall {:try_start_211 .. :try_end_21b} :catchall_51f

    .line 543
    :cond_21b
    :try_start_21b
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_21d
    .catchall {:try_start_21b .. :try_end_21d} :catchall_4d8

    if-eqz v0, :cond_22e

    .line 544
    :try_start_21f
    const-string/jumbo v0, "mQueriesViaPackage"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_228
    .catchall {:try_start_21f .. :try_end_228} :catchall_229

    goto :goto_22e

    .line 553
    :catchall_229
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4db

    .line 546
    :cond_22e
    :goto_22e
    :try_start_22e
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaPackage(II)Z

    move-result v0
    :try_end_232
    .catchall {:try_start_22e .. :try_end_232} :catchall_4d8

    if-eqz v0, :cond_254

    .line 547
    :try_start_234
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_23e

    .line 548
    const-string/jumbo v0, "queries package"

    invoke-static {v9, v10, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_23e
    .catchall {:try_start_234 .. :try_end_23e} :catchall_229

    .line 550
    :cond_23e
    nop

    .line 553
    :try_start_23f
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_249

    .line 554
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_249
    .catchall {:try_start_23f .. :try_end_249} :catchall_51f

    .line 687
    :cond_249
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_253

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    :cond_253
    return v17

    .line 553
    :cond_254
    :try_start_254
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_25e

    .line 554
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_25e
    .catchall {:try_start_254 .. :try_end_25e} :catchall_51f

    .line 558
    :cond_25e
    :try_start_25e
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_260
    .catchall {:try_start_25e .. :try_end_260} :catchall_4c9

    if-eqz v0, :cond_271

    .line 559
    :try_start_262
    const-string/jumbo v0, "mQueriesViaComponent"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_26b
    .catchall {:try_start_262 .. :try_end_26b} :catchall_26c

    goto :goto_271

    .line 579
    :catchall_26c
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4cc

    .line 561
    :cond_271
    :goto_271
    :try_start_271
    iget-object v0, v1, Lcom/android/server/pm/AppsFilterBase;->mQueriesViaComponentRequireRecompute:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_277
    .catchall {:try_start_271 .. :try_end_277} :catchall_4c9

    const-string/jumbo v12, "queries component"

    if-nez v0, :cond_29f

    .line 562
    :try_start_27c
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponent(II)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 563
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_289

    .line 564
    invoke-static {v9, v10, v12}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_289
    .catchall {:try_start_27c .. :try_end_289} :catchall_26c

    .line 566
    :cond_289
    nop

    .line 579
    :try_start_28a
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_294

    .line 580
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_294
    .catchall {:try_start_28a .. :try_end_294} :catchall_51f

    .line 687
    :cond_294
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_29e

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    :cond_29e
    return v17

    .line 569
    :cond_29f
    :try_start_29f
    invoke-interface {v15}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaComponentWhenRequireRecompute(Landroid/util/ArrayMap;Lcom/android/server/pm/pkg/PackageStateInternal;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;II)Z

    move-result v0
    :try_end_2a7
    .catchall {:try_start_29f .. :try_end_2a7} :catchall_4c9

    if-eqz v0, :cond_2c6

    .line 572
    :try_start_2a9
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_2b0

    .line 573
    invoke-static {v9, v10, v12}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_2b0
    .catchall {:try_start_2a9 .. :try_end_2b0} :catchall_26c

    .line 575
    :cond_2b0
    nop

    .line 579
    :try_start_2b1
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_2bb

    .line 580
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2bb
    .catchall {:try_start_2b1 .. :try_end_2bb} :catchall_51f

    .line 687
    :cond_2bb
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_2c5

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 575
    :cond_2c5
    return v17

    .line 579
    :cond_2c6
    :try_start_2c6
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_2d0

    .line 580
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2d0
    .catchall {:try_start_2c6 .. :try_end_2d0} :catchall_51f

    .line 585
    :cond_2d0
    :try_start_2d0
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_2d2
    .catchall {:try_start_2d0 .. :try_end_2d2} :catchall_4ba

    if-eqz v0, :cond_2e3

    .line 586
    :try_start_2d4
    const-string/jumbo v0, "mImplicitlyQueryable"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2dd
    .catchall {:try_start_2d4 .. :try_end_2dd} :catchall_2de

    goto :goto_2e3

    .line 596
    :catchall_2de
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4bd

    .line 588
    :cond_2e3
    :goto_2e3
    :try_start_2e3
    invoke-static {v11, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 589
    .local v0, "targetUid":I
    invoke-virtual {v1, v8, v0}, Lcom/android/server/pm/AppsFilterBase;->isImplicitlyQueryable(II)Z

    move-result v2
    :try_end_2eb
    .catchall {:try_start_2e3 .. :try_end_2eb} :catchall_4ba

    if-eqz v2, :cond_30c

    .line 590
    :try_start_2ed
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_2f6

    .line 591
    const-string v2, "implicitly queryable for user"

    invoke-static {v9, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_2f6
    .catchall {:try_start_2ed .. :try_end_2f6} :catchall_2de

    .line 593
    :cond_2f6
    nop

    .line 596
    :try_start_2f7
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_301

    .line 597
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_301
    .catchall {:try_start_2f7 .. :try_end_301} :catchall_51f

    .line 687
    :cond_301
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_30b

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 593
    :cond_30b
    return v17

    .line 596
    .end local v0    # "targetUid":I
    :cond_30c
    :try_start_30c
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_316

    .line 597
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_316
    .catchall {:try_start_30c .. :try_end_316} :catchall_51f

    .line 602
    :cond_316
    :try_start_316
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_318
    .catchall {:try_start_316 .. :try_end_318} :catchall_4ab

    if-eqz v0, :cond_329

    .line 603
    :try_start_31a
    const-string/jumbo v0, "mRetainedImplicitlyQueryable"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_323
    .catchall {:try_start_31a .. :try_end_323} :catchall_324

    goto :goto_329

    .line 614
    :catchall_324
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_4ae

    .line 605
    :cond_329
    :goto_329
    :try_start_329
    invoke-static {v11, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 606
    .restart local v0    # "targetUid":I
    invoke-virtual {v1, v8, v0}, Lcom/android/server/pm/AppsFilterBase;->isRetainedImplicitlyQueryable(II)Z

    move-result v2
    :try_end_331
    .catchall {:try_start_329 .. :try_end_331} :catchall_4ab

    if-eqz v2, :cond_353

    .line 607
    :try_start_333
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_33d

    .line 608
    const-string/jumbo v2, "retained implicitly queryable for user"

    invoke-static {v9, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_33d
    .catchall {:try_start_333 .. :try_end_33d} :catchall_324

    .line 611
    :cond_33d
    nop

    .line 614
    :try_start_33e
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_348

    .line 615
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_348
    .catchall {:try_start_33e .. :try_end_348} :catchall_51f

    .line 687
    :cond_348
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_352

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    :cond_352
    return v17

    .line 614
    .end local v0    # "targetUid":I
    :cond_353
    :try_start_353
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_35d

    .line 615
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_35d
    .catchall {:try_start_353 .. :try_end_35d} :catchall_51f

    .line 620
    :cond_35d
    :try_start_35d
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z
    :try_end_35f
    .catchall {:try_start_35d .. :try_end_35f} :catchall_49c

    if-eqz v0, :cond_370

    .line 621
    :try_start_361
    const-string/jumbo v0, "mOverlayReferenceMapper"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_36a
    .catchall {:try_start_361 .. :try_end_36a} :catchall_36b

    goto :goto_370

    .line 648
    :catchall_36b
    move-exception v0

    move-object/from16 v21, v4

    goto/16 :goto_49f

    .line 623
    :cond_370
    :goto_370
    :try_start_370
    invoke-interface {v5}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "targetName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c3

    .line 625
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 626
    .local v2, "size":I
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_37f
    if-ge v12, v2, :cond_3be

    .line 627
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 628
    .local v13, "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    move/from16 v20, v2

    .end local v2    # "size":I
    .local v20, "size":I
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;
    :try_end_38b
    .catchall {:try_start_370 .. :try_end_38b} :catchall_49c

    .line 629
    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local v21, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :try_start_38d
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 628
    invoke-virtual {v2, v0, v4}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b7

    .line 630
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_3a1

    .line 631
    const-string/jumbo v2, "matches shared user of package that acts on target of overlay"

    invoke-static {v3, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_3a1
    .catchall {:try_start_38d .. :try_end_3a1} :catchall_49a

    .line 635
    :cond_3a1
    nop

    .line 648
    :try_start_3a2
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_3ac

    .line 649
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3ac
    .catchall {:try_start_3a2 .. :try_end_3ac} :catchall_51f

    .line 687
    :cond_3ac
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_3b6

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    :cond_3b6
    return v17

    .line 626
    .end local v13    # "pkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    :cond_3b7
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v20

    move-object/from16 v4, v21

    goto :goto_37f

    .end local v20    # "size":I
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v2    # "size":I
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_3be
    move/from16 v20, v2

    move-object/from16 v21, v4

    .line 638
    .end local v2    # "size":I
    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local v12    # "index":I
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    goto :goto_3f0

    .line 639
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :cond_3c3
    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :try_start_3c5
    iget-object v2, v1, Lcom/android/server/pm/AppsFilterBase;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 640
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 639
    invoke-virtual {v2, v0, v4}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f0

    .line 641
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v2, :cond_3da

    .line 642
    const-string v2, "acts on target of overlay"

    invoke-static {v3, v10, v2}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_3da
    .catchall {:try_start_3c5 .. :try_end_3da} :catchall_49a

    .line 644
    :cond_3da
    nop

    .line 648
    :try_start_3db
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_3e5

    .line 649
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3e5
    .catchall {:try_start_3db .. :try_end_3e5} :catchall_51f

    .line 687
    :cond_3e5
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_3ef

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 644
    :cond_3ef
    return v17

    .line 648
    .end local v0    # "targetName":Ljava/lang/String;
    :cond_3f0
    :goto_3f0
    :try_start_3f0
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_3fa

    .line 649
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3fa
    .catchall {:try_start_3f0 .. :try_end_3fa} :catchall_51f

    .line 654
    :cond_3fa
    :try_start_3fa
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_407

    .line 655
    const-string/jumbo v0, "mQueryableViaUsesLibrary"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 657
    :cond_407
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesLibrary(II)Z

    move-result v0

    if-eqz v0, :cond_42d

    .line 658
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_417

    .line 659
    const-string/jumbo v0, "queryable for library users"

    invoke-static {v9, v10, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_417
    .catchall {:try_start_3fa .. :try_end_417} :catchall_48d

    .line 661
    :cond_417
    nop

    .line 664
    :try_start_418
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_422

    .line 665
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_422
    .catchall {:try_start_418 .. :try_end_422} :catchall_51f

    .line 687
    :cond_422
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_42c

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 661
    :cond_42c
    return v17

    .line 664
    :cond_42d
    :try_start_42d
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_437

    .line 665
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_437
    .catchall {:try_start_42d .. :try_end_437} :catchall_51f

    .line 670
    :cond_437
    :try_start_437
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_444

    .line 671
    const-string/jumbo v0, "mQueryableViaUsesPermission"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 673
    :cond_444
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/AppsFilterBase;->isQueryableViaUsesPermission(II)Z

    move-result v0

    if-eqz v0, :cond_46a

    .line 674
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_454

    .line 675
    const-string/jumbo v0, "queryable for permission users"

    invoke-static {v9, v10, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_454
    .catchall {:try_start_437 .. :try_end_454} :catchall_480

    .line 677
    :cond_454
    nop

    .line 680
    :try_start_455
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_45f

    .line 681
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_45f
    .catchall {:try_start_455 .. :try_end_45f} :catchall_51f

    .line 687
    :cond_45f
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_469

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 677
    :cond_469
    return v17

    .line 680
    :cond_46a
    :try_start_46a
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_474

    .line 681
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_474
    .catchall {:try_start_46a .. :try_end_474} :catchall_51f

    .line 685
    :cond_474
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_47f

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 685
    :cond_47f
    return v16

    .line 680
    :catchall_480
    move-exception v0

    :try_start_481
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_48b

    .line 681
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 683
    :cond_48b
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 664
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_48d
    move-exception v0

    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_498

    .line 665
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 667
    :cond_498
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 648
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_49a
    move-exception v0

    goto :goto_49f

    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :catchall_49c
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_49f
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4a9

    .line 649
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 651
    :cond_4a9
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 614
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4ab
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4ae
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4b8

    .line 615
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 617
    :cond_4b8
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 596
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4ba
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4bd
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4c7

    .line 597
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 599
    :cond_4c7
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 579
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4c9
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4cc
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4d6

    .line 580
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 582
    :cond_4d6
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 553
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4d8
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4db
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4e5

    .line 554
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 556
    :cond_4e5
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 538
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4e7
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4ea
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_4f4

    .line 539
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    :cond_4f4
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 508
    .end local v5    # "targetPkg":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :catchall_4f6
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    :goto_4f9
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_503

    .line 509
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 511
    :cond_503
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .end local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p2    # "callingUid":I
    .end local p3    # "callingSetting":Ljava/lang/Object;
    .end local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local p5    # "targetUserId":I
    throw v0

    .line 434
    .end local v3    # "callingPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v21    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilterBase;
    .restart local p1    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingSetting":Ljava/lang/Object;
    .restart local p4    # "targetPkgSetting":Lcom/android/server/pm/pkg/PackageStateInternal;
    .restart local p5    # "targetUserId":I
    :cond_505
    move/from16 v17, v15

    move-object/from16 v15, p1

    .line 437
    :goto_509
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_LOGGING:Z

    if-eqz v0, :cond_513

    .line 438
    const-string/jumbo v0, "same app id or core app id"

    invoke-static {v9, v10, v0}, Lcom/android/server/pm/AppsFilterBase;->log(Ljava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;Ljava/lang/String;)V
    :try_end_513
    .catchall {:try_start_481 .. :try_end_513} :catchall_51f

    .line 440
    :cond_513
    nop

    .line 687
    sget-boolean v0, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v0, :cond_51e

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 440
    :cond_51e
    return v17

    .line 687
    .end local v6    # "callingAppId":I
    .end local v7    # "targetAppId":I
    .end local v14    # "featureEnabled":Z
    :catchall_51f
    move-exception v0

    goto :goto_524

    :catchall_521
    move-exception v0

    move-object/from16 v15, p1

    :goto_524
    sget-boolean v2, Lcom/android/server/pm/AppsFilterBase;->DEBUG_TRACING:Z

    if-eqz v2, :cond_52e

    .line 688
    const-wide/32 v18, 0x40000

    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 690
    :cond_52e
    throw v0
.end method

.method protected shouldFilterApplicationUsingCache(III)Z
    .registers 11
    .param p1, "callingUid"    # I
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .line 392
    iget-object v0, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v0

    .line 393
    .local v0, "callingIndex":I
    const/4 v1, 0x1

    const-string v2, "AppsFilter"

    if-gez v0, :cond_22

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered calling uid with no cached rules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v1

    .line 398
    :cond_22
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 399
    .local v3, "targetUid":I
    iget-object v4, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->indexOfKey(I)I

    move-result v4

    .line 400
    .local v4, "targetIndex":I
    if-gez v4, :cond_4f

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v1

    .line 405
    :cond_4f
    iget-object v1, p0, Lcom/android/server/pm/AppsFilterBase;->mShouldFilterCache:Lcom/android/server/utils/WatchedSparseBooleanMatrix;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/utils/WatchedSparseBooleanMatrix;->valueAt(II)Z

    move-result v1

    return v1
.end method
