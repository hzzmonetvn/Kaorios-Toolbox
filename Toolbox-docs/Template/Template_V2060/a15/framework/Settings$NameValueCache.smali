.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final greylist-max-o SELECT_VALUE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final blacklist mAllFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCallDeleteCommand:Ljava/lang/String;

.field private final greylist-max-o mCallGetCommand:Ljava/lang/String;

.field private final blacklist mCallListCommand:Ljava/lang/String;

.field private final blacklist mCallSetAllCommand:Ljava/lang/String;

.field private final greylist-max-o mCallSetCommand:Ljava/lang/String;

.field private blacklist mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGenerationTrackers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$GenerationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPrefixToValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final greylist mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

.field private final blacklist mReadableFields:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$hWCs6DJq6ag2nqmU12AIeqVyf1U(Landroid/provider/Settings$NameValueCache;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStringsForPrefixStripPrefix(Landroid/provider/Settings$NameValueCache;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/provider/Settings$NameValueCache;->getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3334
    const-string/jumbo v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3386
    .local p6, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3388
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;
    .param p4, "deleteCommand"    # Ljava/lang/String;
    .param p5, "listCommand"    # Ljava/lang/String;
    .param p6, "setAllCommand"    # Ljava/lang/String;
    .param p7, "providerHolder"    # Landroid/provider/Settings$ContentProviderHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/provider/Settings$NameValueTable;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/provider/Settings$ContentProviderHolder;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 3392
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3343
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3349
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    .line 3368
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3371
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3393
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3394
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3395
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3396
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3397
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3398
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3399
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3400
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3401
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3402
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3403
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-static {p8, v0, v1, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3405
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 29
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3708
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3709
    .local v9, "namespace":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v0

    .line 3710
    .local v10, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 3711
    .local v11, "substringLength":I
    const/4 v3, -0x1

    .line 3712
    .local v3, "currentGeneration":I
    const/4 v4, 0x0

    .line 3713
    .local v4, "needsGenerationTracker":Z
    monitor-enter p0

    .line 3714
    :try_start_1c
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_263

    .line 3715
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_86

    .line 3716
    :try_start_26
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 3724
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3725
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    const/4 v4, 0x1

    goto :goto_77

    .line 3729
    :cond_3b
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 3730
    .local v5, "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_77

    .line 3731
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 3732
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3734
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 3735
    nop

    .line 3737
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3735
    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    .end local v6    # "name":Ljava/lang/String;
    :cond_6b
    goto :goto_4f

    :cond_6c
    goto :goto_75

    .line 3741
    :cond_6d
    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 3743
    const-string v2, ""

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    :goto_75
    monitor-exit p0

    return-object v10

    .line 3748
    .end local v5    # "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_77
    :goto_77
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v5
    :try_end_7b
    .catchall {:try_start_26 .. :try_end_7b} :catchall_7f

    move v3, v5

    move v12, v3

    move v13, v4

    goto :goto_89

    .line 3752
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_7f
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v20, v9

    goto/16 :goto_268

    .line 3750
    .restart local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_86
    const/4 v4, 0x1

    move v12, v3

    move v13, v4

    .line 3752
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v3    # "currentGeneration":I
    .end local v4    # "needsGenerationTracker":Z
    .local v12, "currentGeneration":I
    .local v13, "needsGenerationTracker":Z
    :goto_89
    :try_start_89
    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_258

    .line 3753
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_8f

    .line 3755
    return-object v10

    .line 3760
    :cond_8f
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v21

    .line 3763
    .local v21, "cp":Landroid/content/IContentProvider;
    :try_start_97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3764
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_a2} :catch_252

    .line 3765
    const/4 v0, 0x0

    if-eqz v13, :cond_b0

    .line 3766
    :try_start_a5
    const-string v3, "_track_generation"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_ab

    goto :goto_b0

    .line 3870
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_ab
    move-exception v0

    move-object/from16 v20, v9

    goto/16 :goto_257

    .line 3777
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_b0
    :goto_b0
    :try_start_b0
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b4} :catch_252

    if-eqz v3, :cond_ec

    :try_start_b6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_ec

    .line 3778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c4} :catch_ab

    .line 3781
    .local v3, "token":J
    :try_start_c4
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v16

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v5}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v5

    .line 3782
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3781
    const/16 v19, 0x0

    move-object/from16 v15, v21

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_e0
    .catchall {:try_start_c4 .. :try_end_e0} :catchall_e6

    .line 3784
    .local v5, "b":Landroid/os/Bundle;
    :try_start_e0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3785
    nop

    .line 3786
    .end local v3    # "token":J
    move-object v15, v5

    goto :goto_10a

    .line 3784
    .end local v5    # "b":Landroid/os/Bundle;
    .restart local v3    # "token":J
    :catchall_e6
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3785
    nop

    .end local v9    # "namespace":Ljava/lang/String;
    .end local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "substringLength":I
    .end local v12    # "currentGeneration":I
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_ec} :catch_ab

    .line 3788
    .end local v3    # "token":J
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "substringLength":I
    .restart local v12    # "currentGeneration":I
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ec
    :try_start_ec
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v16

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3789
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v17

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3788
    const/16 v19, 0x0

    move-object/from16 v15, v21

    move-object/from16 v18, v3

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v3

    move-object v15, v5

    .line 3791
    .local v15, "b":Landroid/os/Bundle;
    :goto_10a
    if-nez v15, :cond_10d

    .line 3793
    return-object v10

    .line 3797
    :cond_10d
    const-string/jumbo v3, "value"

    const-class v4, Ljava/util/HashMap;

    .line 3798
    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move-object v5, v3

    .line 3799
    .local v5, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_11c

    .line 3800
    return-object v10

    .line 3803
    :cond_11c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_120
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_120} :catch_252

    if-nez v3, :cond_14b

    .line 3804
    :try_start_122
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_126
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3806
    .local v4, "name":Ljava/lang/String;
    invoke-static {v9, v4}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3807
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_148

    .line 3808
    nop

    .line 3810
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    .line 3808
    invoke-virtual {v10, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_148} :catch_ab

    .line 3812
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    :cond_148
    const/4 v0, 0x0

    goto :goto_126

    :cond_14a
    goto :goto_175

    .line 3814
    :cond_14b
    :try_start_14b
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_153
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_157
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_157} :catch_252

    if-eqz v3, :cond_175

    :try_start_159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3815
    .local v3, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 3816
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3817
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3815
    invoke-virtual {v10, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_173} :catch_ab

    .line 3818
    nop

    .end local v3    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_153

    .line 3821
    :cond_175
    :goto_175
    :try_start_175
    monitor-enter p0
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_176} :catch_252

    .line 3822
    if-eqz v13, :cond_1eb

    .line 3823
    :try_start_178
    const-string v0, "_track_generation"

    const-class v3, Landroid/util/MemoryIntArray;

    invoke-virtual {v15, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3825
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v3, "_generation_index"

    const/4 v4, -0x1

    invoke-virtual {v15, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v16, v3

    .line 3827
    .local v16, "index":I
    if-eqz v0, :cond_1d0

    if-ltz v16, :cond_1d0

    .line 3828
    const-string v3, "_generation"

    invoke-virtual {v15, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3838
    .local v6, "generation":I
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;
    :try_end_19d
    .catchall {:try_start_178 .. :try_end_19d} :catchall_1e1

    move-object/from16 v18, v2

    .line 3839
    .local v18, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v18, :cond_1ae

    .line 3840
    :try_start_1a1
    invoke-virtual/range {v18 .. v18}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_1a5

    goto :goto_1ae

    .line 3868
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v6    # "generation":I
    .end local v16    # "index":I
    .end local v18    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_1a5
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v20, v9

    goto/16 :goto_24e

    .line 3842
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v6    # "generation":I
    .restart local v16    # "index":I
    .restart local v18    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_1ae
    :goto_1ae
    :try_start_1ae
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1b4
    .catchall {:try_start_1ae .. :try_end_1b4} :catchall_1e1

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v20, v9

    move-object v9, v3

    .end local v9    # "namespace":Ljava/lang/String;
    .local v20, "namespace":Ljava/lang/String;
    move-object/from16 v3, p2

    move/from16 v22, v12

    move-object v12, v4

    .end local v12    # "currentGeneration":I
    .local v22, "currentGeneration":I
    move-object v4, v0

    move-object/from16 v23, v5

    .end local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v23, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v5, v16

    move-object/from16 v24, v7

    .end local v7    # "args":Landroid/os/Bundle;
    .local v24, "args":Landroid/os/Bundle;
    move-object/from16 v7, v19

    :try_start_1c8
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v12, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3845
    move v12, v6

    .line 3846
    .end local v6    # "generation":I
    .end local v18    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v22    # "currentGeneration":I
    .restart local v12    # "currentGeneration":I
    goto :goto_1f5

    .line 3827
    .end local v20    # "namespace":Ljava/lang/String;
    .end local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "args":Landroid/os/Bundle;
    .restart local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    :cond_1d0
    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v20, v9

    move/from16 v22, v12

    .line 3847
    .end local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v12    # "currentGeneration":I
    .restart local v20    # "namespace":Ljava/lang/String;
    .restart local v22    # "currentGeneration":I
    .restart local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "args":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V
    :try_end_1db
    .catchall {:try_start_1c8 .. :try_end_1db} :catchall_1dc

    goto :goto_1f3

    .line 3868
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v16    # "index":I
    :catchall_1dc
    move-exception v0

    move/from16 v12, v22

    goto/16 :goto_24e

    .end local v20    # "namespace":Ljava/lang/String;
    .end local v22    # "currentGeneration":I
    .end local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "args":Landroid/os/Bundle;
    .restart local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v12    # "currentGeneration":I
    :catchall_1e1
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v20, v9

    move/from16 v22, v12

    .end local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v12    # "currentGeneration":I
    .restart local v20    # "namespace":Ljava/lang/String;
    .restart local v22    # "currentGeneration":I
    .restart local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "args":Landroid/os/Bundle;
    goto :goto_24e

    .line 3822
    .end local v20    # "namespace":Ljava/lang/String;
    .end local v22    # "currentGeneration":I
    .end local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "args":Landroid/os/Bundle;
    .restart local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v12    # "currentGeneration":I
    :cond_1eb
    move-object/from16 v23, v5

    move-object/from16 v24, v7

    move-object/from16 v20, v9

    move/from16 v22, v12

    .line 3850
    .end local v5    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .end local v12    # "currentGeneration":I
    .restart local v20    # "namespace":Ljava/lang/String;
    .restart local v22    # "currentGeneration":I
    .restart local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "args":Landroid/os/Bundle;
    :goto_1f3
    move/from16 v12, v22

    .end local v22    # "currentGeneration":I
    .restart local v12    # "currentGeneration":I
    :goto_1f5
    :try_start_1f5
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24b

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3851
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v12, v0, :cond_24b

    .line 3857
    new-instance v0, Landroid/util/ArrayMap;

    .line 3858
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3859
    .local v0, "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_240

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3860
    .restart local v3    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 3861
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 3862
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3860
    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3863
    nop

    .end local v3    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_21e

    .line 3865
    :cond_240
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3866
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3868
    .end local v0    # "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_24b
    monitor-exit p0

    .line 3869
    return-object v10

    .line 3868
    :catchall_24d
    move-exception v0

    :goto_24e
    monitor-exit p0
    :try_end_24f
    .catchall {:try_start_1f5 .. :try_end_24f} :catchall_24d

    .end local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "substringLength":I
    .end local v12    # "currentGeneration":I
    .end local v13    # "needsGenerationTracker":Z
    .end local v20    # "namespace":Ljava/lang/String;
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_24f
    throw v0
    :try_end_250
    .catch Landroid/os/RemoteException; {:try_start_24f .. :try_end_250} :catch_250

    .line 3870
    .end local v15    # "b":Landroid/os/Bundle;
    .end local v23    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "args":Landroid/os/Bundle;
    .restart local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "substringLength":I
    .restart local v12    # "currentGeneration":I
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v20    # "namespace":Ljava/lang/String;
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_250
    move-exception v0

    goto :goto_257

    .end local v20    # "namespace":Ljava/lang/String;
    .restart local v9    # "namespace":Ljava/lang/String;
    :catch_252
    move-exception v0

    move-object/from16 v20, v9

    move/from16 v22, v12

    .line 3872
    .end local v9    # "namespace":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v20    # "namespace":Ljava/lang/String;
    :goto_257
    return-object v10

    .line 3752
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v20    # "namespace":Ljava/lang/String;
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .restart local v9    # "namespace":Ljava/lang/String;
    :catchall_258
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v20, v9

    move/from16 v22, v12

    move v4, v13

    move/from16 v3, v22

    .end local v9    # "namespace":Ljava/lang/String;
    .end local v12    # "currentGeneration":I
    .restart local v20    # "namespace":Ljava/lang/String;
    .restart local v22    # "currentGeneration":I
    goto :goto_268

    .end local v13    # "needsGenerationTracker":Z
    .end local v20    # "namespace":Ljava/lang/String;
    .end local v22    # "currentGeneration":I
    .local v3, "currentGeneration":I
    .local v4, "needsGenerationTracker":Z
    .restart local v9    # "namespace":Ljava/lang/String;
    :catchall_263
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v20, v9

    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v20    # "namespace":Ljava/lang/String;
    :goto_268
    :try_start_268
    monitor-exit p0
    :try_end_269
    .catchall {:try_start_268 .. :try_end_269} :catchall_26a

    throw v0

    :catchall_26a
    move-exception v0

    goto :goto_268
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 6

    .line 3689
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3690
    return v1

    .line 3692
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3693
    return v1

    .line 3695
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3696
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3699
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3700
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 3702
    .local v4, "isTestOnly":Z
    :goto_30
    if-nez v4, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_47

    .line 3703
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_47

    :cond_45
    move v1, v2

    goto :goto_48

    :cond_47
    :goto_47
    nop

    .line 3702
    :goto_48
    return v1

    .line 3697
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 3372
    monitor-enter p0

    .line 3373
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3375
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_1a

    .line 3376
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3377
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    :cond_1a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3380
    nop

    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    monitor-exit p0

    .line 3381
    return-void

    .line 3380
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 3

    .line 3877
    monitor-enter p0

    .line 3878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3879
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3878
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3881
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3882
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3883
    monitor-exit p0

    .line 3884
    return-void

    .line 3883
    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3459
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3460
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3461
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3462
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3463
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3462
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_28

    .line 3467
    nop

    .line 3468
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    const/4 v0, 0x1

    return v0

    .line 3464
    :catch_28
    move-exception v0

    .line 3465
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t delete key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3466
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 27
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3473
    if-eqz p2, :cond_kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :cond_kaorios_dev_stock
    const-string v0, "0"
    return-object v0

    :cond_kaorios_dev_stock
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-ne v9, v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v10

    :goto_11
    move v11, v0

    .line 3474
    .local v11, "isSelf":Z
    if-eqz v11, :cond_1c

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v10

    :goto_1d
    move v12, v0

    .line 3475
    .local v12, "useCache":Z
    const/4 v3, 0x0

    .line 3476
    .local v3, "needsGenerationTracker":Z
    if-eqz v12, :cond_59

    .line 3477
    monitor-enter p0

    .line 3478
    :try_start_22
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3479
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_52

    .line 3480
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3489
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3491
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 3492
    :cond_40
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3496
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 3499
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_52
    :goto_52
    monitor-exit p0

    .line 3505
    const/4 v3, 0x1

    move v13, v3

    goto :goto_5a

    .line 3499
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_56

    throw v0

    .line 3476
    :cond_59
    move v13, v3

    .line 3518
    .end local v3    # "needsGenerationTracker":Z
    .local v13, "needsGenerationTracker":Z
    :goto_5a
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3519
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 3528
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3529
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3530
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 3531
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_99

    .line 3532
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 3533
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v0, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v10

    .line 3535
    .local v2, "targetSdkCheckOk":Z
    :goto_9a
    if-eqz v2, :cond_9d

    goto :goto_df

    .line 3536
    :cond_9d
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings key: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3520
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "targetSdkCheckOk":Z
    .end local v3    # "application":Landroid/app/Application;
    :cond_c0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3546
    :cond_df
    :goto_df
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v21

    .line 3552
    .local v21, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v0, :cond_1f2

    .line 3554
    :try_start_ec
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3555
    .local v7, "args":Landroid/os/Bundle;
    if-nez v11, :cond_f9

    .line 3556
    const-string v0, "_user"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3558
    :cond_f9
    if-eqz v13, :cond_100

    .line 3559
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    :cond_100
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_140

    .line 3575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_114} :catch_1f1

    move-wide/from16 v16, v2

    .line 3577
    .local v16, "token":J
    :try_start_116
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3578
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_126
    .catchall {:try_start_116 .. :try_end_126} :catchall_138

    .line 3577
    move-object/from16 v2, v21

    move-object/from16 v6, p2

    move-object/from16 v18, v7

    .end local v7    # "args":Landroid/os/Bundle;
    .local v18, "args":Landroid/os/Bundle;
    :try_start_12c
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_130
    .catchall {:try_start_12c .. :try_end_130} :catchall_136

    .line 3581
    .local v0, "b":Landroid/os/Bundle;
    :try_start_130
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3582
    nop

    .line 3583
    .end local v16    # "token":J
    move-object v7, v0

    goto :goto_15d

    .line 3581
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v16    # "token":J
    :catchall_136
    move-exception v0

    goto :goto_13b

    .end local v18    # "args":Landroid/os/Bundle;
    .restart local v7    # "args":Landroid/os/Bundle;
    :catchall_138
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "args":Landroid/os/Bundle;
    .restart local v18    # "args":Landroid/os/Bundle;
    :goto_13b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3582
    nop

    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3574
    .end local v16    # "token":J
    .end local v18    # "args":Landroid/os/Bundle;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v11    # "isSelf":Z
    .restart local v12    # "useCache":Z
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_140
    move-object/from16 v18, v7

    .line 3584
    .end local v7    # "args":Landroid/os/Bundle;
    .restart local v18    # "args":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3585
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3584
    move-object/from16 v2, v21

    move-object/from16 v6, p2

    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v7, v0

    .line 3587
    .local v7, "b":Landroid/os/Bundle;
    :goto_15d
    if-eqz v7, :cond_1ee

    .line 3588
    const-string/jumbo v0, "value"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 3590
    .local v5, "value":Ljava/lang/String;
    if-eqz v11, :cond_1ea

    .line 3591
    monitor-enter p0
    :try_end_16a
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_16a} :catch_1f1

    .line 3592
    if-eqz v13, :cond_1c7

    .line 3593
    :try_start_16c
    const-string v0, "_track_generation"

    const-class v2, Landroid/util/MemoryIntArray;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3595
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v2, "_generation_index"

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v16, v2

    .line 3597
    .local v16, "index":I
    if-eqz v0, :cond_1bb

    if-ltz v16, :cond_1bb

    .line 3598
    const-string v2, "_generation"

    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3610
    .local v6, "generation":I
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Settings$GenerationTracker;
    :try_end_191
    .catchall {:try_start_16c .. :try_end_191} :catchall_1c2

    move-object/from16 v17, v2

    .line 3611
    .local v17, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v17, :cond_19e

    .line 3612
    :try_start_195
    invoke-virtual/range {v17 .. v17}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_198
    .catchall {:try_start_195 .. :try_end_198} :catchall_199

    goto :goto_19e

    .line 3628
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v6    # "generation":I
    .end local v16    # "index":I
    .end local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_199
    move-exception v0

    move-object v9, v5

    move-object/from16 v22, v7

    goto :goto_1e8

    .line 3614
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v6    # "generation":I
    .restart local v16    # "index":I
    .restart local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_19e
    :goto_19e
    :try_start_19e
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1a4
    .catchall {:try_start_19e .. :try_end_1a4} :catchall_1c2

    move-object/from16 v19, v2

    move-object v2, v3

    move-object v10, v3

    move-object/from16 v3, p2

    move-object v15, v4

    move-object v4, v0

    move-object v9, v5

    .end local v5    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move/from16 v5, v16

    move-object/from16 v22, v7

    .end local v7    # "b":Landroid/os/Bundle;
    .local v22, "b":Landroid/os/Bundle;
    move-object/from16 v7, v19

    :try_start_1b3
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v15, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3617
    nop

    .end local v6    # "generation":I
    .end local v17    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    goto :goto_1ca

    .line 3597
    .end local v9    # "value":Ljava/lang/String;
    .end local v22    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1bb
    move-object v9, v5

    move-object/from16 v22, v7

    .line 3618
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v22    # "b":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1ca

    .line 3628
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v9    # "value":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v22    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :catchall_1c2
    move-exception v0

    move-object v9, v5

    move-object/from16 v22, v7

    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v22    # "b":Landroid/os/Bundle;
    goto :goto_1e8

    .line 3592
    .end local v9    # "value":Ljava/lang/String;
    .end local v22    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1c7
    move-object v9, v5

    move-object/from16 v22, v7

    .line 3621
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v22    # "b":Landroid/os/Bundle;
    :goto_1ca
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e5

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3622
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_1e5

    .line 3626
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3628
    :cond_1e5
    monitor-exit p0

    goto :goto_1ed

    :catchall_1e7
    move-exception v0

    :goto_1e8
    monitor-exit p0
    :try_end_1e9
    .catchall {:try_start_1b3 .. :try_end_1e9} :catchall_1e7

    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_1e9
    throw v0
    :try_end_1ea
    .catch Landroid/os/RemoteException; {:try_start_1e9 .. :try_end_1ea} :catch_1f1

    .line 3590
    .end local v9    # "value":Ljava/lang/String;
    .end local v22    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    .restart local v11    # "isSelf":Z
    .restart local v12    # "useCache":Z
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_1ea
    move-object v9, v5

    move-object/from16 v22, v7

    .line 3637
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v22    # "b":Landroid/os/Bundle;
    :goto_1ed
    return-object v9

    .line 3587
    .end local v9    # "value":Ljava/lang/String;
    .end local v22    # "b":Landroid/os/Bundle;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1ee
    move-object/from16 v22, v7

    .line 3644
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v18    # "args":Landroid/os/Bundle;
    goto :goto_1f2

    .line 3641
    :catch_1f1
    move-exception v0

    .line 3647
    :cond_1f2
    :goto_1f2
    const/4 v9, 0x0

    .line 3649
    .local v9, "c":Landroid/database/Cursor;
    :try_start_1f3
    const-string/jumbo v0, "name=?"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v2
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1f3 .. :try_end_1fa} :catch_2af
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_2ad

    const/4 v10, 0x0

    :try_start_1fb
    invoke-static {v0, v2, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3652
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_230

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_230

    .line 3653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_1fb .. :try_end_213} :catch_2aa
    .catchall {:try_start_1fb .. :try_end_213} :catchall_2ad

    move-wide v15, v2

    .line 3655
    .local v15, "token":J
    :try_start_214
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v21

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_223
    .catchall {:try_start_214 .. :try_end_223} :catchall_22a

    move-object v9, v0

    .line 3658
    :try_start_224
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3659
    nop

    .line 3660
    .end local v15    # "token":J
    move-object v2, v10

    goto :goto_246

    .line 3658
    .restart local v15    # "token":J
    :catchall_22a
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3659
    nop

    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    throw v0

    .line 3661
    .end local v15    # "token":J
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "isSelf":Z
    .restart local v12    # "useCache":Z
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :cond_230
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v16

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v18, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_238
    .catch Landroid/os/RemoteException; {:try_start_224 .. :try_end_238} :catch_2aa
    .catchall {:try_start_224 .. :try_end_238} :catchall_2ad

    const/16 v20, 0x0

    move-object v2, v10

    move-object/from16 v15, v21

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    :try_start_241
    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 3664
    :goto_246
    if-nez v9, :cond_273

    .line 3665
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26c
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_26c} :catch_2a8
    .catchall {:try_start_241 .. :try_end_26c} :catchall_2ad

    .line 3666
    nop

    .line 3684
    if-eqz v9, :cond_272

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3666
    :cond_272
    return-object v2

    .line 3669
    :cond_273
    :try_start_273
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27f

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_280

    :cond_27f
    move-object v15, v2

    :goto_280
    move-object v3, v15

    .line 3670
    .local v3, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_282
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_282} :catch_2a8
    .catchall {:try_start_273 .. :try_end_282} :catchall_2ad

    .line 3671
    :try_start_282
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29d

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3672
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_29d

    .line 3676
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    :cond_29d
    monitor-exit p0
    :try_end_29e
    .catchall {:try_start_282 .. :try_end_29e} :catchall_2a5

    .line 3679
    nop

    .line 3684
    if-eqz v9, :cond_2a4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3679
    :cond_2a4
    return-object v3

    .line 3678
    :catchall_2a5
    move-exception v0

    :try_start_2a6
    monitor-exit p0
    :try_end_2a7
    .catchall {:try_start_2a6 .. :try_end_2a7} :catchall_2a5

    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_2a7
    throw v0
    :try_end_2a8
    .catch Landroid/os/RemoteException; {:try_start_2a7 .. :try_end_2a8} :catch_2a8
    .catchall {:try_start_2a7 .. :try_end_2a8} :catchall_2ad

    .line 3680
    .end local v3    # "value":Ljava/lang/String;
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v11    # "isSelf":Z
    .restart local v12    # "useCache":Z
    .restart local v13    # "needsGenerationTracker":Z
    .restart local v21    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userHandle":I
    :catch_2a8
    move-exception v0

    goto :goto_2b1

    :catch_2aa
    move-exception v0

    move-object v2, v10

    goto :goto_2b1

    .line 3684
    :catchall_2ad
    move-exception v0

    goto :goto_2dc

    .line 3680
    :catch_2af
    move-exception v0

    const/4 v2, 0x0

    .line 3681
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2b1
    :try_start_2b1
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d5
    .catchall {:try_start_2b1 .. :try_end_2d5} :catchall_2ad

    .line 3682
    nop

    .line 3684
    if-eqz v9, :cond_2db

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3682
    :cond_2db
    return-object v2

    .line 3684
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2dc
    if-eqz v9, :cond_2e1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3685
    :cond_2e1
    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userHandle"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3411
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/provider/SettingsStub;->logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3415
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3417
    if-eqz p4, :cond_1e

    .line 3418
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    :cond_1e
    const/4 v7, 0x1

    if-eqz p5, :cond_26

    .line 3421
    const-string v1, "_make_default"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3423
    :cond_26
    if-eqz p7, :cond_2d

    .line 3424
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3426
    :cond_2d
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3427
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3428
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3427
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_48} :catch_4a

    .line 3432
    nop

    .line 3433
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    return v7

    .line 3429
    :catch_4a
    move-exception v0

    .line 3430
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3431
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 3438
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3440
    return v1

    .line 3443
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3444
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_prefix"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const-string v2, "_flags"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3446
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3447
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3448
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3447
    const/4 v6, 0x0

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3450
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "config_set_all_return"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_38

    return v1

    .line 3451
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_38
    move-exception v0

    .line 3453
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
