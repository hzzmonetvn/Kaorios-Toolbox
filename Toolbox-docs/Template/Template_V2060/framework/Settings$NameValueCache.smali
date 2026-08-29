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

.field private final blacklist mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGenerationTrackers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
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

.field private final blacklist mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private final blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/provider/Settings$GenerationTracker$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$wb_V0X9Wt6aU2LZtNv8KpjFtc0I(Landroid/provider/Settings$NameValueCache;Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V

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

    .line 3684
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

    .line 3740
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

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "getCommand":Ljava/lang/String;
    .end local p3    # "setCommand":Ljava/lang/String;
    .end local p4    # "deleteCommand":Ljava/lang/String;
    .end local p5    # "providerHolder":Landroid/provider/Settings$ContentProviderHolder;
    .end local p6    # "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "uri":Landroid/net/Uri;
    .local v2, "getCommand":Ljava/lang/String;
    .local v3, "setCommand":Ljava/lang/String;
    .local v4, "deleteCommand":Ljava/lang/String;
    .local v7, "providerHolder":Landroid/provider/Settings$ContentProviderHolder;
    .local v8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct/range {v0 .. v8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    .line 3742
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V
    .registers 13
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

    .line 3746
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3693
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3699
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    .line 3721
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3725
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3747
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3748
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3749
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3750
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3751
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3752
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3753
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3754
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3755
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3756
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3757
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    .line 3758
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {p8, v0, v1, v2, v3}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 3760
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private blacklist getStringsForPrefixStripPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 27
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

    .line 4100
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Landroid/provider/Settings$GenerationTracker$Key;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    move-object v5, v0

    .line 4102
    .local v5, "trackerKey":Landroid/provider/Settings$GenerationTracker$Key;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 4103
    .local v10, "namespace":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v0

    .line 4104
    .local v11, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    .line 4105
    .local v12, "substringLength":I
    const/4 v4, -0x1

    .line 4106
    .local v4, "currentGeneration":I
    const/4 v6, 0x0

    .line 4107
    .local v6, "needsGenerationTracker":Z
    monitor-enter p0

    .line 4108
    :try_start_22
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4109
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_85

    .line 4110
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v7

    if-eqz v7, :cond_41

    .line 4118
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4119
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    const/4 v6, 0x1

    goto :goto_7d

    .line 4123
    :cond_41
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 4124
    .local v7, "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_7d

    .line 4125
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_73

    .line 4126
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4128
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 4129
    nop

    .line 4131
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4129
    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    .end local v8    # "name":Ljava/lang/String;
    :cond_71
    goto :goto_55

    :cond_72
    goto :goto_7b

    .line 4135
    :cond_73
    invoke-virtual {v11, v7}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 4137
    const-string v3, ""

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4139
    :goto_7b
    monitor-exit p0

    return-object v11

    .line 4142
    .end local v7    # "cachedSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7d
    :goto_7d
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v7
    :try_end_81
    .catchall {:try_start_22 .. :try_end_81} :catchall_24c

    move v4, v7

    move v13, v4

    move v14, v6

    goto :goto_88

    .line 4144
    :cond_85
    const/4 v6, 0x1

    move v13, v4

    move v14, v6

    .line 4146
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v4    # "currentGeneration":I
    .end local v6    # "needsGenerationTracker":Z
    .local v13, "currentGeneration":I
    .local v14, "needsGenerationTracker":Z
    :goto_88
    :try_start_88
    monitor-exit p0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_246

    .line 4147
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_8e

    .line 4149
    return-object v11

    .line 4154
    :cond_8e
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v15, p1

    invoke-virtual {v0, v15}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v16

    .line 4155
    .local v16, "cp":Landroid/content/IContentProvider;
    if-nez v16, :cond_b7

    .line 4156
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get strings for prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because cp is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4157
    return-object v11

    .line 4161
    :cond_b7
    :try_start_b7
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v4, v21

    .line 4162
    .local v4, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    const/4 v0, 0x0

    if-eqz v14, :cond_cb

    .line 4164
    const-string v6, "_track_generation"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    :cond_cb
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v6

    if-eqz v6, :cond_108

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    if-eq v6, v7, :cond_108

    .line 4176
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_df} :catch_244

    .line 4179
    .local v6, "token":J
    :try_start_df
    invoke-virtual {v15}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v17

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v8}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v8

    .line 4180
    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    iget-object v8, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;
    :try_end_ef
    .catchall {:try_start_df .. :try_end_ef} :catchall_100

    .line 4179
    const/16 v20, 0x0

    move-object/from16 v21, v4

    move-object/from16 v19, v8

    .end local v4    # "args":Landroid/os/Bundle;
    .local v21, "args":Landroid/os/Bundle;
    :try_start_f5
    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_f9
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_fe

    .line 4182
    .local v4, "b":Landroid/os/Bundle;
    :try_start_f9
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    nop

    .line 4184
    .end local v6    # "token":J
    goto :goto_122

    .line 4182
    .end local v4    # "b":Landroid/os/Bundle;
    .restart local v6    # "token":J
    :catchall_fe
    move-exception v0

    goto :goto_103

    .end local v21    # "args":Landroid/os/Bundle;
    .local v4, "args":Landroid/os/Bundle;
    :catchall_100
    move-exception v0

    move-object/from16 v21, v4

    .end local v4    # "args":Landroid/os/Bundle;
    .restart local v21    # "args":Landroid/os/Bundle;
    :goto_103
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4183
    nop

    .end local v5    # "trackerKey":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v10    # "namespace":Ljava/lang/String;
    .end local v11    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "substringLength":I
    .end local v13    # "currentGeneration":I
    .end local v14    # "needsGenerationTracker":Z
    .end local v16    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0

    .line 4175
    .end local v6    # "token":J
    .end local v21    # "args":Landroid/os/Bundle;
    .restart local v4    # "args":Landroid/os/Bundle;
    .restart local v5    # "trackerKey":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v10    # "namespace":Ljava/lang/String;
    .restart local v11    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "substringLength":I
    .restart local v13    # "currentGeneration":I
    .restart local v14    # "needsGenerationTracker":Z
    .restart local v16    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_108
    move-object/from16 v21, v4

    .line 4186
    .end local v4    # "args":Landroid/os/Bundle;
    .restart local v21    # "args":Landroid/os/Bundle;
    invoke-virtual {v15}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v17

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 4187
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 4186
    const/16 v20, 0x0

    move-object/from16 v19, v4

    invoke-interface/range {v16 .. v21}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 4189
    .local v4, "b":Landroid/os/Bundle;
    :goto_122
    if-nez v4, :cond_125

    .line 4191
    return-object v11

    .line 4195
    :cond_125
    const-string/jumbo v6, "value"

    const-class v7, Ljava/util/HashMap;

    .line 4196
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 4197
    .local v6, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v6, :cond_133

    .line 4198
    return-object v11

    .line 4201
    :cond_133
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_162

    .line 4202
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_13d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_161

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4204
    .restart local v8    # "name":Ljava/lang/String;
    invoke-static {v10, v8}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4205
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15f

    .line 4206
    nop

    .line 4208
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 4206
    invoke-virtual {v11, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4210
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    :cond_15f
    const/4 v0, 0x0

    goto :goto_13d

    :cond_161
    goto :goto_18c

    .line 4212
    :cond_162
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 4213
    .local v7, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 4214
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 4215
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 4213
    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4216
    nop

    .end local v7    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_16a

    .line 4219
    :cond_18c
    :goto_18c
    monitor-enter p0
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_f9 .. :try_end_18d} :catch_244

    .line 4220
    if-eqz v14, :cond_1eb

    .line 4221
    :try_start_18f
    const-string v0, "_track_generation"

    const-class v7, Landroid/util/MemoryIntArray;

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 4223
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v7, "_generation_index"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 4225
    .local v7, "index":I
    if-eqz v0, :cond_1dc

    if-ltz v7, :cond_1dc

    .line 4226
    const-string v8, "_generation"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 4236
    .local v8, "generation":I
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Settings$GenerationTracker;
    :try_end_1b2
    .catchall {:try_start_18f .. :try_end_1b2} :catchall_1e5

    .line 4237
    .local v3, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v3, :cond_1bf

    .line 4238
    :try_start_1b4
    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->destroy()V
    :try_end_1b7
    .catchall {:try_start_1b4 .. :try_end_1b7} :catchall_1b8

    goto :goto_1bf

    .line 4266
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v3    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v7    # "index":I
    .end local v8    # "generation":I
    :catchall_1b8
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    goto/16 :goto_242

    .line 4240
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v3    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    .restart local v7    # "index":I
    .restart local v8    # "generation":I
    :cond_1bf
    :goto_1bf
    :try_start_1bf
    iget-object v9, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;
    :try_end_1c1
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_1e5

    move-object/from16 v17, v4

    .end local v4    # "b":Landroid/os/Bundle;
    .local v17, "b":Landroid/os/Bundle;
    :try_start_1c3
    new-instance v4, Landroid/provider/Settings$GenerationTracker;

    move-object/from16 v19, v9

    iget-object v9, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1c9
    .catchall {:try_start_1c3 .. :try_end_1c9} :catchall_1d8

    move-object/from16 v22, v6

    move-object v6, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v22

    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .local v6, "array":Landroid/util/MemoryIntArray;
    .local v19, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1d0
    invoke-direct/range {v4 .. v9}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4243
    move v13, v8

    .line 4244
    .end local v3    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v8    # "generation":I
    goto :goto_1ef

    .line 4266
    .end local v7    # "index":I
    .end local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v6, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1d8
    move-exception v0

    move-object/from16 v19, v6

    .end local v6    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_242

    .line 4225
    .end local v17    # "b":Landroid/os/Bundle;
    .end local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v6    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "index":I
    :cond_1dc
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move-object v6, v0

    .line 4245
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v4    # "b":Landroid/os/Bundle;
    .local v6, "array":Landroid/util/MemoryIntArray;
    .restart local v17    # "b":Landroid/os/Bundle;
    .restart local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v6}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_1ef

    .line 4266
    .end local v7    # "index":I
    .end local v17    # "b":Landroid/os/Bundle;
    .end local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "b":Landroid/os/Bundle;
    .local v6, "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1e5
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v19, v6

    .end local v4    # "b":Landroid/os/Bundle;
    .end local v6    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "b":Landroid/os/Bundle;
    .restart local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_242

    .line 4220
    .end local v17    # "b":Landroid/os/Bundle;
    .end local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "b":Landroid/os/Bundle;
    .restart local v6    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1eb
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    .line 4248
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v6    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "b":Landroid/os/Bundle;
    .restart local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1ef
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4249
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_23f

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v3

    if-ne v13, v3, :cond_23f

    .line 4255
    new-instance v3, Landroid/util/ArrayMap;

    .line 4256
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 4257
    .local v3, "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_212
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_234

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4258
    .local v6, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 4259
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 4260
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 4258
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4261
    nop

    .end local v6    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_212

    .line 4263
    :cond_234
    const-string v4, ""

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4264
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mPrefixToValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4266
    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    .end local v3    # "namesToValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_23f
    monitor-exit p0

    .line 4267
    return-object v11

    .line 4266
    :catchall_241
    move-exception v0

    :goto_242
    monitor-exit p0
    :try_end_243
    .catchall {:try_start_1d0 .. :try_end_243} :catchall_241

    .end local v5    # "trackerKey":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v10    # "namespace":Ljava/lang/String;
    .end local v11    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "substringLength":I
    .end local v13    # "currentGeneration":I
    .end local v14    # "needsGenerationTracker":Z
    .end local v16    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_243
    throw v0
    :try_end_244
    .catch Landroid/os/RemoteException; {:try_start_243 .. :try_end_244} :catch_244

    .line 4268
    .end local v17    # "b":Landroid/os/Bundle;
    .end local v19    # "flagsToValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "args":Landroid/os/Bundle;
    .restart local v5    # "trackerKey":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v10    # "namespace":Ljava/lang/String;
    .restart local v11    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "substringLength":I
    .restart local v13    # "currentGeneration":I
    .restart local v14    # "needsGenerationTracker":Z
    .restart local v16    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_244
    move-exception v0

    .line 4270
    .local v0, "e":Landroid/os/RemoteException;
    return-object v11

    .line 4146
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "cp":Landroid/content/IContentProvider;
    :catchall_246
    move-exception v0

    move-object/from16 v15, p1

    move v4, v13

    move v6, v14

    goto :goto_24f

    .end local v13    # "currentGeneration":I
    .end local v14    # "needsGenerationTracker":Z
    .local v4, "currentGeneration":I
    .local v6, "needsGenerationTracker":Z
    :catchall_24c
    move-exception v0

    move-object/from16 v15, p1

    :goto_24f
    :try_start_24f
    monitor-exit p0
    :try_end_250
    .catchall {:try_start_24f .. :try_end_250} :catchall_251

    throw v0

    :catchall_251
    move-exception v0

    goto :goto_24f
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 6

    .line 4081
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 4082
    return v1

    .line 4084
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 4085
    return v1

    .line 4087
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 4088
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 4091
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 4092
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 4094
    .local v4, "isTestOnly":Z
    :goto_30
    if-nez v4, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_47

    .line 4095
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

    .line 4094
    :goto_48
    return v1

    .line 4089
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Landroid/provider/Settings$GenerationTracker$Key;)V
    .registers 4
    .param p1, "key"    # Landroid/provider/Settings$GenerationTracker$Key;

    .line 3726
    monitor-enter p0

    .line 3727
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3729
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_1a

    .line 3730
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3731
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    :cond_1a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    nop

    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    monitor-exit p0

    .line 3735
    return-void

    .line 3734
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_22

    throw v0
.end method


# virtual methods
.method public greylist-max-o clearGenerationTrackerForTest()V
    .registers 4

    .line 4275
    monitor-enter p0

    .line 4276
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_22

    .line 4279
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 4276
    if-ge v0, v1, :cond_18

    .line 4277
    :try_start_c
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4279
    .end local v0    # "i":I
    :cond_18
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 4280
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 4281
    monitor-exit p0

    .line 4282
    return-void

    .line 4281
    :catchall_22
    move-exception v0

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0
.end method

.method public blacklist deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 14
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3822
    const-string v1, "Can\'t delete key "

    const-string v2, "Settings"

    const/4 v3, 0x0

    :try_start_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 3823
    .local v9, "arg":Landroid/os/Bundle;
    const-string v0, "_user"

    invoke-virtual {v9, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3824
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v4
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_4f

    .line 3825
    .local v4, "cp":Landroid/content/IContentProvider;
    if-nez v4, :cond_36

    .line 3826
    :try_start_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " because cp is null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_32} :catch_33

    .line 3827
    return v3

    .line 3831
    .end local v4    # "cp":Landroid/content/IContentProvider;
    .end local v9    # "arg":Landroid/os/Bundle;
    :catch_33
    move-exception v0

    move-object v8, p2

    goto :goto_51

    .line 3829
    .restart local v4    # "cp":Landroid/content/IContentProvider;
    .restart local v9    # "arg":Landroid/os/Bundle;
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v5

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3830
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_46} :catch_4f

    .line 3829
    move-object v8, p2

    .end local p2    # "name":Ljava/lang/String;
    .local v8, "name":Ljava/lang/String;
    :try_start_47
    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4d

    .line 3834
    nop

    .line 3835
    .end local v4    # "cp":Landroid/content/IContentProvider;
    .end local v9    # "arg":Landroid/os/Bundle;
    const/4 p2, 0x1

    return p2

    .line 3831
    :catch_4d
    move-exception v0

    goto :goto_51

    .end local v8    # "name":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    :catch_4f
    move-exception v0

    move-object v8, p2

    .line 3832
    .end local p2    # "name":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v8    # "name":Ljava/lang/String;
    :goto_51
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " in "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3833
    return v3
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 25
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    if-eqz p2, :cond_b

    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "0"

    return-object v0

    .line 3841
    :cond_b
    move-object/from16 v1, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne v8, v0, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v9

    :goto_1c
    move v10, v0

    .line 3842
    .local v10, "isSelf":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v11

    .line 3843
    .local v11, "attributionSource":Landroid/content/AttributionSource;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v11, :cond_2e

    .line 3845
    invoke-virtual {v11}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result v0

    goto :goto_2f

    :cond_2e
    move v0, v9

    :goto_2f
    move v12, v0

    .line 3846
    .local v12, "deviceId":I
    new-instance v0, Landroid/provider/Settings$GenerationTracker$Key;

    invoke-direct {v0, v6, v12}, Landroid/provider/Settings$GenerationTracker$Key;-><init>(Ljava/lang/String;I)V

    move-object v14, v0

    .line 3847
    .local v14, "key":Landroid/provider/Settings$GenerationTracker$Key;
    if-eqz v10, :cond_40

    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_40

    move v0, v2

    goto :goto_41

    :cond_40
    move v0, v9

    :goto_41
    move/from16 v19, v0

    .line 3848
    .local v19, "useCache":Z
    const/4 v3, 0x0

    .line 3851
    .local v3, "needsGenerationTracker":Z
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 3853
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-nez v0, :cond_61

    .line 3854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v4, 0x2710

    if-ge v0, v4, :cond_5f

    goto :goto_61

    :cond_5f
    move v0, v9

    goto :goto_62

    :cond_61
    :goto_61
    move v0, v2

    .line 3856
    .local v0, "isSystemCaller":Z
    :goto_62
    if-nez v0, :cond_7b

    .line 3857
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3858
    .local v4, "redactedValue":Ljava/lang/String;
    if-eqz v4, :cond_7b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7b

    .line 3859
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->enableRedactedValueForReadable()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 3860
    return-object v4

    .line 3865
    .end local v0    # "isSystemCaller":Z
    .end local v4    # "redactedValue":Ljava/lang/String;
    :cond_7b
    if-eqz v19, :cond_b4

    .line 3866
    monitor-enter p0

    .line 3867
    :try_start_7e
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3868
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_ac

    .line 3869
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_b1

    .line 3881
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3869
    if-eqz v4, :cond_9c

    .line 3878
    :try_start_90
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3879
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3880
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ac

    .line 3881
    :cond_9c
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 3885
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 3888
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_ac
    :goto_ac
    monitor-exit p0

    .line 3893
    const/4 v3, 0x1

    move/from16 v20, v3

    goto :goto_b6

    .line 3888
    :catchall_b1
    move-exception v0

    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_90 .. :try_end_b3} :catchall_b1

    throw v0

    .line 3865
    :cond_b4
    move/from16 v20, v3

    .line 3906
    .end local v3    # "needsGenerationTracker":Z
    .local v20, "needsGenerationTracker":Z
    :goto_b6
    invoke-static {}, Landroid/provider/Settings$NameValueCache;->isCallerExemptFromReadableRestriction()Z

    move-result v0

    if-nez v0, :cond_13b

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 3907
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 3916
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 3917
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3918
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 3919
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_f5

    .line 3920
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_f5

    .line 3921
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v0, :cond_f5

    goto :goto_f6

    :cond_f5
    move v2, v9

    .line 3923
    .local v2, "targetSdkCheckOk":Z
    :goto_f6
    if-eqz v2, :cond_f9

    goto :goto_13b

    .line 3924
    :cond_f9
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings key: <"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3908
    .end local v0    # "maxTargetSdk":I
    .end local v2    # "targetSdkCheckOk":Z
    .end local v3    # "application":Landroid/app/Application;
    :cond_11c
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings key: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3934
    :cond_13b
    :goto_13b
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3935
    .local v2, "cp":Landroid/content/IContentProvider;
    const/4 v15, 0x0

    if-nez v2, :cond_165

    .line 3936
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because cp is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    return-object v15

    .line 3944
    :cond_165
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v0, :cond_241

    .line 3946
    :try_start_169
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3947
    .local v7, "args":Landroid/os/Bundle;
    if-nez v10, :cond_175

    .line 3948
    const-string v0, "_user"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3950
    :cond_175
    if-eqz v20, :cond_17c

    .line 3951
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3966
    :cond_17c
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_1b2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_1b2

    .line 3967
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_190
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_190} :catch_23e

    move-wide/from16 v16, v3

    .line 3969
    .local v16, "token":J
    :try_start_192
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3970
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3969
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_1a6
    .catchall {:try_start_192 .. :try_end_1a6} :catchall_1ac

    .line 3973
    .local v0, "b":Landroid/os/Bundle;
    :try_start_1a6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .line 3975
    .end local v16    # "token":J
    move-object v3, v0

    goto :goto_1c9

    .line 3973
    .end local v0    # "b":Landroid/os/Bundle;
    .restart local v16    # "token":J
    :catchall_1ac
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3974
    nop

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "isSelf":Z
    .end local v11    # "attributionSource":Landroid/content/AttributionSource;
    .end local v12    # "deviceId":I
    .end local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v19    # "useCache":Z
    .end local v20    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userId":I
    throw v0

    .line 3976
    .end local v16    # "token":J
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v12    # "deviceId":I
    .restart local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v19    # "useCache":Z
    .restart local v20    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userId":I
    :cond_1b2
    invoke-virtual {v13}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3977
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3976
    move-object/from16 v6, p2

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v3, v0

    .line 3979
    .local v3, "b":Landroid/os/Bundle;
    :goto_1c9
    if-eqz v3, :cond_23c

    .line 3980
    const-string/jumbo v0, "value"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 3982
    .local v4, "value":Ljava/lang/String;
    if-eqz v10, :cond_23b

    .line 3983
    monitor-enter p0
    :try_end_1d6
    .catch Landroid/os/RemoteException; {:try_start_1a6 .. :try_end_1d6} :catch_23e

    .line 3984
    if-eqz v20, :cond_21e

    .line 3985
    :try_start_1d8
    const-string v0, "_track_generation"

    const-class v5, Landroid/util/MemoryIntArray;

    invoke-virtual {v3, v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3987
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v5, "_generation_index"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 3989
    .local v16, "index":I
    if-eqz v0, :cond_215

    if-ltz v16, :cond_215

    .line 3990
    const-string v5, "_generation"

    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 4002
    .local v17, "generation":I
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/Settings$GenerationTracker;

    .line 4003
    .local v5, "oldTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v5, :cond_200

    .line 4004
    invoke-virtual {v5}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 4006
    :cond_200
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v13, Landroid/provider/Settings$GenerationTracker;
    :try_end_204
    .catchall {:try_start_1d8 .. :try_end_204} :catchall_21b

    :try_start_204
    iget-object v15, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_206
    .catchall {:try_start_204 .. :try_end_206} :catchall_212

    move-object/from16 v18, v15

    const/4 v9, 0x0

    move-object v15, v0

    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .local v15, "array":Landroid/util/MemoryIntArray;
    :try_start_20a
    invoke-direct/range {v13 .. v18}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/provider/Settings$GenerationTracker$Key;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v6, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4009
    nop

    .end local v5    # "oldTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v17    # "generation":I
    goto :goto_21f

    .line 4020
    .end local v15    # "array":Landroid/util/MemoryIntArray;
    .end local v16    # "index":I
    :catchall_212
    move-exception v0

    const/4 v9, 0x0

    goto :goto_237

    .line 3989
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v16    # "index":I
    :cond_215
    move-object v9, v15

    move-object v15, v0

    .line 4010
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v15    # "array":Landroid/util/MemoryIntArray;
    invoke-static {v15}, Landroid/provider/Settings;->-$$Nest$smmaybeCloseGenerationArray(Landroid/util/MemoryIntArray;)V

    goto :goto_21f

    .line 4020
    .end local v15    # "array":Landroid/util/MemoryIntArray;
    .end local v16    # "index":I
    :catchall_21b
    move-exception v0

    move-object v9, v15

    goto :goto_237

    .line 3984
    :cond_21e
    move-object v9, v15

    .line 4013
    :goto_21f
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4014
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_234

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v5

    if-nez v5, :cond_234

    .line 4018
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4020
    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    :cond_234
    monitor-exit p0

    goto :goto_23b

    :catchall_236
    move-exception v0

    :goto_237
    monitor-exit p0
    :try_end_238
    .catchall {:try_start_20a .. :try_end_238} :catchall_236

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "isSelf":Z
    .end local v11    # "attributionSource":Landroid/content/AttributionSource;
    .end local v12    # "deviceId":I
    .end local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v19    # "useCache":Z
    .end local v20    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_238
    throw v0
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_238 .. :try_end_239} :catch_239

    .line 4033
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "value":Ljava/lang/String;
    .end local v7    # "args":Landroid/os/Bundle;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v12    # "deviceId":I
    .restart local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v19    # "useCache":Z
    .restart local v20    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catch_239
    move-exception v0

    goto :goto_242

    .line 4029
    .restart local v3    # "b":Landroid/os/Bundle;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_23b
    :goto_23b
    return-object v4

    .line 3979
    .end local v4    # "value":Ljava/lang/String;
    :cond_23c
    move-object v9, v15

    .line 4036
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v7    # "args":Landroid/os/Bundle;
    goto :goto_242

    .line 4033
    :catch_23e
    move-exception v0

    move-object v9, v15

    goto :goto_242

    .line 3944
    :cond_241
    move-object v9, v15

    .line 4039
    :goto_242
    const/4 v13, 0x0

    .line 4041
    .local v13, "c":Landroid/database/Cursor;
    :try_start_243
    const-string/jumbo v0, "name=?"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v9}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 4044
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_286

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v0, v3, :cond_286

    .line 4045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_262
    .catch Landroid/os/RemoteException; {:try_start_243 .. :try_end_262} :catch_2fa
    .catchall {:try_start_243 .. :try_end_262} :catchall_2f6

    move-wide v15, v3

    .line 4047
    .local v15, "token":J
    :try_start_263
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_26b
    .catchall {:try_start_263 .. :try_end_26b} :catchall_27c

    const/4 v7, 0x0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    :try_start_270
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_274
    .catchall {:try_start_270 .. :try_end_274} :catchall_27a

    move-object v13, v0

    .line 4050
    :try_start_275
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    nop

    .line 4052
    .end local v15    # "token":J
    goto :goto_298

    .line 4050
    .restart local v15    # "token":J
    :catchall_27a
    move-exception v0

    goto :goto_281

    :catchall_27c
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    :goto_281
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4051
    nop

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "isSelf":Z
    .end local v11    # "attributionSource":Landroid/content/AttributionSource;
    .end local v12    # "deviceId":I
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v19    # "useCache":Z
    .end local v20    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userId":I
    throw v0

    .line 4044
    .end local v15    # "token":J
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v12    # "deviceId":I
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v19    # "useCache":Z
    .restart local v20    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userId":I
    :cond_286
    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 4053
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v13, v0

    .line 4056
    :goto_298
    if-nez v13, :cond_2c5

    .line 4057
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_2be
    .catch Landroid/os/RemoteException; {:try_start_275 .. :try_end_2be} :catch_2f4
    .catchall {:try_start_275 .. :try_end_2be} :catchall_32a

    .line 4058
    nop

    .line 4076
    if-eqz v13, :cond_2c4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4058
    :cond_2c4
    return-object v18

    .line 4061
    :cond_2c5
    :try_start_2c5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d1

    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2d3

    :cond_2d1
    move-object/from16 v15, v18

    .line 4062
    .local v15, "value":Ljava/lang/String;
    :goto_2d3
    monitor-enter p0
    :try_end_2d4
    .catch Landroid/os/RemoteException; {:try_start_2c5 .. :try_end_2d4} :catch_2f4
    .catchall {:try_start_2c5 .. :try_end_2d4} :catchall_32a

    .line 4063
    :try_start_2d4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 4064
    .restart local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_2e9

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v3

    if-nez v3, :cond_2e9

    .line 4068
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4070
    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    :cond_2e9
    monitor-exit p0
    :try_end_2ea
    .catchall {:try_start_2d4 .. :try_end_2ea} :catchall_2f1

    .line 4071
    nop

    .line 4076
    if-eqz v13, :cond_2f0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4071
    :cond_2f0
    return-object v15

    .line 4070
    :catchall_2f1
    move-exception v0

    :try_start_2f2
    monitor-exit p0
    :try_end_2f3
    .catchall {:try_start_2f2 .. :try_end_2f3} :catchall_2f1

    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "isSelf":Z
    .end local v11    # "attributionSource":Landroid/content/AttributionSource;
    .end local v12    # "deviceId":I
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .end local v19    # "useCache":Z
    .end local v20    # "needsGenerationTracker":Z
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_2f3
    throw v0
    :try_end_2f4
    .catch Landroid/os/RemoteException; {:try_start_2f3 .. :try_end_2f4} :catch_2f4
    .catchall {:try_start_2f3 .. :try_end_2f4} :catchall_32a

    .line 4072
    .end local v6    # "queryArgs":Landroid/os/Bundle;
    .end local v15    # "value":Ljava/lang/String;
    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v10    # "isSelf":Z
    .restart local v11    # "attributionSource":Landroid/content/AttributionSource;
    .restart local v12    # "deviceId":I
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "key":Landroid/provider/Settings$GenerationTracker$Key;
    .restart local v19    # "useCache":Z
    .restart local v20    # "needsGenerationTracker":Z
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catch_2f4
    move-exception v0

    goto :goto_2ff

    .line 4076
    :catchall_2f6
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_32b

    .line 4072
    :catch_2fa
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v9, p2

    .line 4073
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2ff
    :try_start_2ff
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    :try_end_323
    .catchall {:try_start_2ff .. :try_end_323} :catchall_32a

    .line 4074
    nop

    .line 4076
    if-eqz v13, :cond_329

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4074
    :cond_329
    return-object v18

    .line 4076
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_32a
    move-exception v0

    :goto_32b
    if-eqz v13, :cond_330

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4077
    :cond_330
    throw v0
.end method

.method public blacklist putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 24
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "makeDefault"    # Z
    .param p6, "userId"    # I
    .param p7, "overrideableByRestore"    # Z

    .line 3766
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const-string v11, " in "

    const-string v12, "Can\'t set key "

    const-string v13, "Settings"

    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v9}, Landroid/provider/SettingsStub;->logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    const/4 v14, 0x0

    :try_start_18
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3770
    .local v8, "arg":Landroid/os/Bundle;
    const-string/jumbo v0, "value"

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    const-string v0, "_user"
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_84

    move/from16 v15, p6

    :try_start_27
    invoke-virtual {v8, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3772
    if-eqz v10, :cond_31

    .line 3773
    const-string v0, "_tag"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    :cond_31
    const/4 v0, 0x1

    if-eqz p5, :cond_39

    .line 3776
    const-string v3, "_make_default"

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3778
    :cond_39
    if-eqz p7, :cond_40

    .line 3779
    const-string v3, "_overrideable_by_restore"

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3781
    :cond_40
    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v3, v2}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 3782
    .local v3, "cp":Landroid/content/IContentProvider;
    if-nez v3, :cond_6d

    .line 3783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " because cp is null"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    return v14

    .line 3786
    :cond_6d
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v5}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v5

    .line 3787
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3786
    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_80} :catch_82

    .line 3791
    nop

    .line 3792
    .end local v3    # "cp":Landroid/content/IContentProvider;
    .end local v8    # "arg":Landroid/os/Bundle;
    return v0

    .line 3788
    :catch_82
    move-exception v0

    goto :goto_87

    :catch_84
    move-exception v0

    move/from16 v15, p6

    .line 3789
    .local v0, "e":Landroid/os/RemoteException;
    :goto_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3790
    return v14
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

    .line 3797
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3799
    return v1

    .line 3802
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3803
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    const-string v0, "_flags"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3805
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3806
    .local v2, "cp":Landroid/content/IContentProvider;
    if-nez v2, :cond_3d

    .line 3807
    const-string v0, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set strings for prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because cp is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    return v1

    .line 3810
    :cond_3d
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3811
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3810
    const/4 v6, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 3813
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "config_set_all_return"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_58} :catch_59

    return v1

    .line 3814
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_59
    move-exception v0

    .line 3816
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
