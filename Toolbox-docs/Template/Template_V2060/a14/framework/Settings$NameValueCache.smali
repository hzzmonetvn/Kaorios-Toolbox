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
.method public static synthetic blacklist $r8$lambda$2DNQdOeQfCVSjuZrIDaOSXA0otU(Landroid/provider/Settings$NameValueCache;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3093
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

    .line 3137
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

    .line 3139
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

    .line 3143
    .local p8, "callerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    .line 3119
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3122
    new-instance v0, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/provider/Settings$NameValueCache$$ExternalSyntheticLambda0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;

    .line 3144
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 3145
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3146
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3147
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3148
    iput-object p5, p0, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    .line 3149
    iput-object p6, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    .line 3150
    iput-object p7, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 3151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    .line 3152
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mAllFields:Landroid/util/ArraySet;

    .line 3153
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 3154
    invoke-static {p8, v1, v0, v2}, Landroid/provider/Settings;->-$$Nest$smgetPublicSettingsForClass(Ljava/lang/Class;Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 3156
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;)V

    return-void
.end method

.method private static blacklist isCallerExemptFromReadableRestriction()Z
    .registers 6

    .line 3432
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3433
    return v1

    .line 3435
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_15

    .line 3436
    return v1

    .line 3438
    :cond_15
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 3439
    .local v0, "application":Landroid/app/Application;
    const/4 v2, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_49

    .line 3442
    :cond_23
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 3443
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_2f

    move v4, v1

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 3445
    .local v4, "isTestOnly":Z
    :goto_30
    if-nez v4, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_47

    .line 3446
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

    .line 3445
    :goto_48
    return v1

    .line 3440
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "isTestOnly":Z
    :cond_49
    :goto_49
    return v2
.end method

.method private synthetic blacklist lambda$new$0(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 3123
    monitor-enter p0

    .line 3124
    :try_start_1
    const-string v0, "Settings"

    const-string v1, "Error accessing generation tracker - removing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3126
    .local v0, "tracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_1a

    .line 3127
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3128
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3130
    :cond_1a
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    nop

    .end local v0    # "tracker":Landroid/provider/Settings$GenerationTracker;
    monitor-exit p0

    .line 3132
    return-void

    .line 3131
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

    .line 3603
    monitor-enter p0

    .line 3604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 3605
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v1}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3604
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3607
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3608
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3609
    monitor-exit p0

    .line 3610
    return-void

    .line 3609
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

    .line 3210
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3211
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3212
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3213
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3214
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallDeleteCommand:Ljava/lang/String;

    .line 3213
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_28

    .line 3218
    nop

    .line 3219
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    const/4 v0, 0x1

    return v0

    .line 3215
    :catch_28
    move-exception v0

    .line 3216
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

    .line 3217
    const/4 v1, 0x0

    return v1
.end method

.method public greylist getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 26
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .line 3224
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

    .line 3225
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

    .line 3226
    .local v12, "useCache":Z
    const/4 v3, 0x0

    .line 3227
    .local v3, "needsGenerationTracker":Z
    if-eqz v12, :cond_59

    .line 3228
    monitor-enter p0

    .line 3229
    :try_start_22
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    .line 3230
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_52

    .line 3231
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 3240
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3241
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 3242
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 3243
    :cond_40
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 3247
    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit p0

    return-object v2

    .line 3250
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_52
    :goto_52
    monitor-exit p0

    .line 3256
    const/4 v3, 0x1

    move v13, v3

    goto :goto_5a

    .line 3250
    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_22 .. :try_end_58} :catchall_56

    throw v0

    .line 3227
    :cond_59
    move v13, v3

    .line 3269
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

    .line 3270
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFields:Landroid/util/ArraySet;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 3279
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 3280
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mReadableFieldsWithMaxTargetSdk:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3281
    .local v0, "maxTargetSdk":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    .line 3282
    .local v3, "application":Landroid/app/Application;
    if-eqz v3, :cond_99

    .line 3283
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_99

    .line 3284
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt v4, v0, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v10

    .line 3286
    .local v2, "targetSdkCheckOk":Z
    :goto_9a
    if-eqz v2, :cond_9d

    goto :goto_df

    .line 3287
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

    .line 3271
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

    .line 3297
    :cond_df
    :goto_df
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v14, p1

    invoke-virtual {v0, v14}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v21

    .line 3303
    .local v21, "cp":Landroid/content/IContentProvider;
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v0, :cond_1d9

    .line 3305
    :try_start_ec
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3306
    .local v7, "args":Landroid/os/Bundle;
    if-nez v11, :cond_f9

    .line 3307
    const-string v0, "_user"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3309
    :cond_f9
    if-eqz v13, :cond_100

    .line 3310
    const-string v0, "_track_generation"

    invoke-virtual {v7, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3325
    :cond_100
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_140

    .line 3326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_ec .. :try_end_114} :catch_1d8

    move-wide/from16 v16, v2

    .line 3328
    .local v16, "token":J
    :try_start_116
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3329
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;
    :try_end_126
    .catchall {:try_start_116 .. :try_end_126} :catchall_138

    .line 3328
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

    .line 3332
    .local v0, "b":Landroid/os/Bundle;
    :try_start_130
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3333
    nop

    .line 3334
    .end local v16    # "token":J
    move-object v7, v0

    goto :goto_15d

    .line 3332
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

    .line 3333
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

    .line 3325
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

    .line 3335
    .end local v7    # "args":Landroid/os/Bundle;
    .restart local v18    # "args":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v0}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v0

    .line 3336
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 3335
    move-object/from16 v2, v21

    move-object/from16 v6, p2

    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    move-object v7, v0

    .line 3338
    .local v7, "b":Landroid/os/Bundle;
    :goto_15d
    if-eqz v7, :cond_1d5

    .line 3339
    const-string/jumbo v0, "value"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 3341
    .local v5, "value":Ljava/lang/String;
    if-eqz v11, :cond_1d1

    .line 3342
    monitor-enter p0
    :try_end_16a
    .catch Landroid/os/RemoteException; {:try_start_130 .. :try_end_16a} :catch_1d8

    .line 3343
    if-eqz v13, :cond_1ae

    .line 3344
    :try_start_16c
    const-string v0, "_track_generation"

    const-class v2, Landroid/util/MemoryIntArray;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3346
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v2, "_generation_index"

    const/4 v3, -0x1

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v16, v2

    .line 3348
    .local v16, "index":I
    if-eqz v0, :cond_1a5

    if-ltz v16, :cond_1a5

    .line 3349
    const-string v2, "_generation"

    invoke-virtual {v7, v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3359
    .local v6, "generation":I
    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    iget-object v2, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_18f
    .catchall {:try_start_16c .. :try_end_18f} :catchall_1a9

    move-object/from16 v17, v2

    move-object v2, v3

    move-object v10, v3

    move-object/from16 v3, p2

    move-object v15, v4

    move-object v4, v0

    move-object v9, v5

    .end local v5    # "value":Ljava/lang/String;
    .local v9, "value":Ljava/lang/String;
    move/from16 v5, v16

    move-object/from16 v20, v7

    .end local v7    # "b":Landroid/os/Bundle;
    .local v20, "b":Landroid/os/Bundle;
    move-object/from16 v7, v17

    :try_start_19e
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v15, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b1

    .line 3348
    .end local v6    # "generation":I
    .end local v9    # "value":Ljava/lang/String;
    .end local v20    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1a5
    move-object v9, v5

    move-object/from16 v20, v7

    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v20    # "b":Landroid/os/Bundle;
    goto :goto_1b1

    .line 3371
    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v9    # "value":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v20    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :catchall_1a9
    move-exception v0

    move-object v9, v5

    move-object/from16 v20, v7

    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v20    # "b":Landroid/os/Bundle;
    goto :goto_1cf

    .line 3343
    .end local v9    # "value":Ljava/lang/String;
    .end local v20    # "b":Landroid/os/Bundle;
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1ae
    move-object v9, v5

    move-object/from16 v20, v7

    .line 3364
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v20    # "b":Landroid/os/Bundle;
    :goto_1b1
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1cc

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3365
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 3369
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    :cond_1cc
    monitor-exit p0

    goto :goto_1d4

    :catchall_1ce
    move-exception v0

    :goto_1cf
    monitor-exit p0
    :try_end_1d0
    .catchall {:try_start_19e .. :try_end_1d0} :catchall_1ce

    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_1d0
    throw v0
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1d0 .. :try_end_1d1} :catch_1d8

    .line 3341
    .end local v9    # "value":Ljava/lang/String;
    .end local v20    # "b":Landroid/os/Bundle;
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
    :cond_1d1
    move-object v9, v5

    move-object/from16 v20, v7

    .line 3380
    .end local v5    # "value":Ljava/lang/String;
    .end local v7    # "b":Landroid/os/Bundle;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v20    # "b":Landroid/os/Bundle;
    :goto_1d4
    return-object v9

    .line 3338
    .end local v9    # "value":Ljava/lang/String;
    .end local v20    # "b":Landroid/os/Bundle;
    .restart local v7    # "b":Landroid/os/Bundle;
    :cond_1d5
    move-object/from16 v20, v7

    .line 3387
    .end local v7    # "b":Landroid/os/Bundle;
    .end local v18    # "args":Landroid/os/Bundle;
    goto :goto_1d9

    .line 3384
    :catch_1d8
    move-exception v0

    .line 3390
    :cond_1d9
    :goto_1d9
    const/4 v9, 0x0

    .line 3392
    .local v9, "c":Landroid/database/Cursor;
    :try_start_1da
    const-string/jumbo v0, "name=?"

    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    move-result-object v2
    :try_end_1e1
    .catch Landroid/os/RemoteException; {:try_start_1da .. :try_end_1e1} :catch_296
    .catchall {:try_start_1da .. :try_end_1e1} :catchall_294

    const/4 v10, 0x0

    :try_start_1e2
    invoke-static {v0, v2, v10}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3395
    .local v6, "queryArgs":Landroid/os/Bundle;
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v0

    if-eqz v0, :cond_217

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v0, v2, :cond_217

    .line 3396
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1e2 .. :try_end_1fa} :catch_291
    .catchall {:try_start_1e2 .. :try_end_1fa} :catchall_294

    move-wide v15, v2

    .line 3398
    .local v15, "token":J
    :try_start_1fb
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, v21

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_20a
    .catchall {:try_start_1fb .. :try_end_20a} :catchall_211

    move-object v9, v0

    .line 3401
    :try_start_20b
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3402
    nop

    .line 3403
    .end local v15    # "token":J
    move-object v2, v10

    goto :goto_22d

    .line 3401
    .restart local v15    # "token":J
    :catchall_211
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3402
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

    .line 3404
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
    :cond_217
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v16

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v18, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE_PROJECTION:[Ljava/lang/String;
    :try_end_21f
    .catch Landroid/os/RemoteException; {:try_start_20b .. :try_end_21f} :catch_291
    .catchall {:try_start_20b .. :try_end_21f} :catchall_294

    const/16 v20, 0x0

    move-object v2, v10

    move-object/from16 v15, v21

    move-object/from16 v17, v0

    move-object/from16 v19, v6

    :try_start_228
    invoke-interface/range {v15 .. v20}, Landroid/content/IContentProvider;->query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v9, v0

    .line 3407
    :goto_22d
    if-nez v9, :cond_25a

    .line 3408
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
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_228 .. :try_end_253} :catch_28f
    .catchall {:try_start_228 .. :try_end_253} :catchall_294

    .line 3409
    nop

    .line 3427
    if-eqz v9, :cond_259

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3409
    :cond_259
    return-object v2

    .line 3412
    :cond_25a
    :try_start_25a
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_266

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_267

    :cond_266
    move-object v15, v2

    :goto_267
    move-object v3, v15

    .line 3413
    .local v3, "value":Ljava/lang/String;
    monitor-enter p0
    :try_end_269
    .catch Landroid/os/RemoteException; {:try_start_25a .. :try_end_269} :catch_28f
    .catchall {:try_start_25a .. :try_end_269} :catchall_294

    .line 3414
    :try_start_269
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_284

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3415
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v0

    if-nez v0, :cond_284

    .line 3419
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3421
    :cond_284
    monitor-exit p0
    :try_end_285
    .catchall {:try_start_269 .. :try_end_285} :catchall_28c

    .line 3422
    nop

    .line 3427
    if-eqz v9, :cond_28b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3422
    :cond_28b
    return-object v3

    .line 3421
    :catchall_28c
    move-exception v0

    :try_start_28d
    monitor-exit p0
    :try_end_28e
    .catchall {:try_start_28d .. :try_end_28e} :catchall_28c

    .end local v9    # "c":Landroid/database/Cursor;
    .end local v11    # "isSelf":Z
    .end local v12    # "useCache":Z
    .end local v13    # "needsGenerationTracker":Z
    .end local v21    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "userHandle":I
    :try_start_28e
    throw v0
    :try_end_28f
    .catch Landroid/os/RemoteException; {:try_start_28e .. :try_end_28f} :catch_28f
    .catchall {:try_start_28e .. :try_end_28f} :catchall_294

    .line 3423
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
    :catch_28f
    move-exception v0

    goto :goto_298

    :catch_291
    move-exception v0

    move-object v2, v10

    goto :goto_298

    .line 3427
    :catchall_294
    move-exception v0

    goto :goto_2c3

    .line 3423
    :catch_296
    move-exception v0

    const/4 v2, 0x0

    .line 3424
    .local v0, "e":Landroid/os/RemoteException;
    :goto_298
    :try_start_298
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
    :try_end_2bc
    .catchall {:try_start_298 .. :try_end_2bc} :catchall_294

    .line 3425
    nop

    .line 3427
    if-eqz v9, :cond_2c2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3425
    :cond_2c2
    return-object v2

    .line 3427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2c3
    if-eqz v9, :cond_2c8

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3428
    :cond_2c8
    throw v0
.end method

.method public blacklist getStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;
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
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3451
    .local p3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    invoke-virtual {v8, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3452
    .local v9, "namespace":Ljava/lang/String;
    invoke-static {v9}, Landroid/provider/Settings$Config;->enforceReadPermission(Ljava/lang/String;)V

    .line 3453
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v0

    .line 3454
    .local v10, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 3455
    .local v3, "currentGeneration":I
    const/4 v4, 0x0

    .line 3457
    .local v4, "needsGenerationTracker":Z
    monitor-enter p0

    .line 3458
    :try_start_1b
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_222

    .line 3459
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    if-eqz v0, :cond_bb

    .line 3460
    :try_start_25
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3466
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_33
    if-ltz v5, :cond_4b

    .line 3467
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3468
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 3469
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    .end local v6    # "key":Ljava/lang/String;
    :cond_48
    add-int/lit8 v5, v5, -0x1

    goto :goto_33

    .end local v5    # "i":I
    :cond_4b
    goto :goto_ac

    .line 3473
    :cond_4c
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 3474
    .local v5, "prefixCached":Z
    if-eqz v5, :cond_ac

    .line 3478
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 3479
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3480
    .local v6, "name":Ljava/lang/String;
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 3481
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    .end local v6    # "name":Ljava/lang/String;
    :cond_7d
    goto :goto_5e

    :cond_7e
    goto :goto_aa

    .line 3485
    :cond_7f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_80
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_aa

    .line 3486
    iget-object v6, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3489
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a7

    .line 3490
    iget-object v7, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    .end local v6    # "key":Ljava/lang/String;
    :cond_a7
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 3494
    .end local v2    # "i":I
    :cond_aa
    :goto_aa
    monitor-exit p0

    return-object v10

    .line 3497
    .end local v5    # "prefixCached":Z
    :cond_ac
    :goto_ac
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v5
    :try_end_b0
    .catchall {:try_start_25 .. :try_end_b0} :catchall_b4

    move v3, v5

    move v11, v3

    move v12, v4

    goto :goto_be

    .line 3501
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :catchall_b4
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    goto/16 :goto_227

    .line 3499
    .restart local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_bb
    const/4 v4, 0x1

    move v11, v3

    move v12, v4

    .line 3501
    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    .end local v3    # "currentGeneration":I
    .end local v4    # "needsGenerationTracker":Z
    .local v11, "currentGeneration":I
    .local v12, "needsGenerationTracker":Z
    :goto_be
    :try_start_be
    monitor-exit p0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_21a

    .line 3503
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    if-nez v0, :cond_c4

    .line 3505
    return-object v10

    .line 3510
    :cond_c4
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    move-object/from16 v13, p1

    invoke-virtual {v0, v13}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v20

    .line 3513
    .local v20, "cp":Landroid/content/IContentProvider;
    :try_start_cc
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v7, v0

    .line 3514
    .local v7, "args":Landroid/os/Bundle;
    const-string v0, "_prefix"

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_cc .. :try_end_d7} :catch_216

    .line 3515
    const/4 v0, 0x0

    if-eqz v12, :cond_e5

    .line 3516
    :try_start_da
    const-string v3, "_track_generation"

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_da .. :try_end_df} :catch_e0

    goto :goto_e5

    .line 3596
    .end local v7    # "args":Landroid/os/Bundle;
    :catch_e0
    move-exception v0

    :goto_e1
    move-object/from16 v19, v9

    goto/16 :goto_219

    .line 3528
    .restart local v7    # "args":Landroid/os/Bundle;
    :cond_e5
    :goto_e5
    :try_start_e5
    const-string v3, "device_policy_manager"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_e5 .. :try_end_eb} :catch_216

    if-eqz v3, :cond_129

    .line 3529
    :try_start_ed
    invoke-static {}, Landroid/provider/Settings;->isInSystemServer()Z

    move-result v3

    if-eqz v3, :cond_129

    .line 3530
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_129

    .line 3531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_ed .. :try_end_101} :catch_e0

    .line 3534
    .local v3, "token":J
    :try_start_101
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v5}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v5

    .line 3535
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/16 v18, 0x0

    .line 3534
    move-object/from16 v14, v20

    move-object/from16 v17, v5

    move-object/from16 v19, v7

    invoke-interface/range {v14 .. v19}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_11d
    .catchall {:try_start_101 .. :try_end_11d} :catchall_123

    .line 3537
    .local v5, "b":Landroid/os/Bundle;
    :try_start_11d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3538
    nop

    .line 3539
    .end local v3    # "token":J
    move-object v14, v5

    goto :goto_147

    .line 3537
    .end local v5    # "b":Landroid/os/Bundle;
    .restart local v3    # "token":J
    :catchall_123
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3538
    nop

    .end local v9    # "namespace":Ljava/lang/String;
    .end local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .end local v20    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v0
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_129} :catch_e0

    .line 3541
    .end local v3    # "token":J
    .restart local v9    # "namespace":Ljava/lang/String;
    .restart local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "currentGeneration":I
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v20    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_129
    :try_start_129
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v15

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3542
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mCallListCommand:Ljava/lang/String;

    const/16 v18, 0x0

    .line 3541
    move-object/from16 v14, v20

    move-object/from16 v17, v3

    move-object/from16 v19, v7

    invoke-interface/range {v14 .. v19}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    move-object v5, v3

    move-object v14, v5

    .line 3544
    .local v14, "b":Landroid/os/Bundle;
    :goto_147
    if-nez v14, :cond_14a

    .line 3546
    return-object v10

    .line 3550
    :cond_14a
    const-string/jumbo v3, "value"

    const-class v4, Ljava/util/HashMap;

    .line 3551
    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move-object v15, v3

    .line 3553
    .local v15, "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_15a
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_15a} :catch_216

    if-nez v3, :cond_197

    .line 3554
    :try_start_15c
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_164
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3555
    .local v4, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_15c .. :try_end_174} :catch_192

    move-object/from16 v6, p3

    :try_start_176
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    .line 3556
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_18d} :catch_e0

    .line 3558
    .end local v4    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_18d
    const/4 v0, 0x0

    goto :goto_164

    :cond_18f
    move-object/from16 v6, p3

    goto :goto_19c

    .line 3596
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v15    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_192
    move-exception v0

    move-object/from16 v6, p3

    goto/16 :goto_e1

    .line 3560
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v14    # "b":Landroid/os/Bundle;
    .restart local v15    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_197
    move-object/from16 v6, p3

    :try_start_199
    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3563
    :goto_19c
    monitor-enter p0
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_199 .. :try_end_19d} :catch_216

    .line 3564
    if-eqz v12, :cond_1ea

    .line 3565
    :try_start_19f
    const-string v0, "_track_generation"

    const-class v3, Landroid/util/MemoryIntArray;

    invoke-virtual {v14, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MemoryIntArray;

    .line 3567
    .local v0, "array":Landroid/util/MemoryIntArray;
    const-string v3, "_generation_index"

    const/4 v4, -0x1

    invoke-virtual {v14, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v16, v3

    .line 3569
    .local v16, "index":I
    if-eqz v0, :cond_1dd

    if-ltz v16, :cond_1dd

    .line 3570
    const-string v3, "_generation"

    invoke-virtual {v14, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v6, v2

    .line 3578
    .local v6, "generation":I
    iget-object v5, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    new-instance v4, Landroid/provider/Settings$GenerationTracker;

    iget-object v3, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackerErrorHandler:Ljava/util/function/Consumer;
    :try_end_1c3
    .catchall {:try_start_19f .. :try_end_1c3} :catchall_1e4

    move-object v2, v4

    move-object/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v9

    move-object v9, v4

    .end local v9    # "namespace":Ljava/lang/String;
    .local v19, "namespace":Ljava/lang/String;
    move-object v4, v0

    move-object/from16 v21, v0

    move-object v0, v5

    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .local v21, "array":Landroid/util/MemoryIntArray;
    move/from16 v5, v16

    move-object/from16 v22, v7

    .end local v7    # "args":Landroid/os/Bundle;
    .local v22, "args":Landroid/os/Bundle;
    move-object/from16 v7, v18

    :try_start_1d5
    invoke-direct/range {v2 .. v7}, Landroid/provider/Settings$GenerationTracker;-><init>(Ljava/lang/String;Landroid/util/MemoryIntArray;IILjava/util/function/Consumer;)V

    invoke-virtual {v0, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    move v11, v6

    goto :goto_1ee

    .line 3569
    .end local v6    # "generation":I
    .end local v19    # "namespace":Ljava/lang/String;
    .end local v21    # "array":Landroid/util/MemoryIntArray;
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v0    # "array":Landroid/util/MemoryIntArray;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    :cond_1dd
    move-object/from16 v21, v0

    move-object/from16 v22, v7

    move-object/from16 v19, v9

    .end local v0    # "array":Landroid/util/MemoryIntArray;
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v19    # "namespace":Ljava/lang/String;
    .restart local v21    # "array":Landroid/util/MemoryIntArray;
    .restart local v22    # "args":Landroid/os/Bundle;
    goto :goto_1ee

    .line 3594
    .end local v16    # "index":I
    .end local v19    # "namespace":Ljava/lang/String;
    .end local v21    # "array":Landroid/util/MemoryIntArray;
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    :catchall_1e4
    move-exception v0

    move-object/from16 v22, v7

    move-object/from16 v19, v9

    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v19    # "namespace":Ljava/lang/String;
    .restart local v22    # "args":Landroid/os/Bundle;
    goto :goto_212

    .line 3564
    .end local v19    # "namespace":Ljava/lang/String;
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v7    # "args":Landroid/os/Bundle;
    .restart local v9    # "namespace":Ljava/lang/String;
    :cond_1ea
    move-object/from16 v22, v7

    move-object/from16 v19, v9

    .line 3584
    .end local v7    # "args":Landroid/os/Bundle;
    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v19    # "namespace":Ljava/lang/String;
    .restart local v22    # "args":Landroid/os/Bundle;
    :goto_1ee
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20f

    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mGenerationTrackers:Landroid/util/ArrayMap;

    .line 3585
    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->getCurrentGeneration()I

    move-result v0

    if-ne v11, v0, :cond_20f

    .line 3590
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 3592
    iget-object v0, v1, Landroid/provider/Settings$NameValueCache;->mValues:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    :cond_20f
    monitor-exit p0

    .line 3595
    return-object v10

    .line 3594
    :catchall_211
    move-exception v0

    :goto_212
    monitor-exit p0
    :try_end_213
    .catchall {:try_start_1d5 .. :try_end_213} :catchall_211

    .end local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .end local v19    # "namespace":Ljava/lang/String;
    .end local v20    # "cp":Landroid/content/IContentProvider;
    .end local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .end local p1    # "cr":Landroid/content/ContentResolver;
    .end local p2    # "prefix":Ljava/lang/String;
    .end local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_213
    throw v0
    :try_end_214
    .catch Landroid/os/RemoteException; {:try_start_213 .. :try_end_214} :catch_214

    .line 3596
    .end local v14    # "b":Landroid/os/Bundle;
    .end local v15    # "flagsToValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "args":Landroid/os/Bundle;
    .restart local v10    # "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "currentGeneration":I
    .restart local v12    # "needsGenerationTracker":Z
    .restart local v19    # "namespace":Ljava/lang/String;
    .restart local v20    # "cp":Landroid/content/IContentProvider;
    .restart local p0    # "this":Landroid/provider/Settings$NameValueCache;
    .restart local p1    # "cr":Landroid/content/ContentResolver;
    .restart local p2    # "prefix":Ljava/lang/String;
    .restart local p3    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_214
    move-exception v0

    goto :goto_219

    .end local v19    # "namespace":Ljava/lang/String;
    .restart local v9    # "namespace":Ljava/lang/String;
    :catch_216
    move-exception v0

    move-object/from16 v19, v9

    .line 3598
    .end local v9    # "namespace":Ljava/lang/String;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "namespace":Ljava/lang/String;
    :goto_219
    return-object v10

    .line 3501
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v19    # "namespace":Ljava/lang/String;
    .end local v20    # "cp":Landroid/content/IContentProvider;
    .restart local v9    # "namespace":Ljava/lang/String;
    :catchall_21a
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    move v3, v11

    move v4, v12

    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v19    # "namespace":Ljava/lang/String;
    goto :goto_227

    .end local v11    # "currentGeneration":I
    .end local v12    # "needsGenerationTracker":Z
    .end local v19    # "namespace":Ljava/lang/String;
    .local v3, "currentGeneration":I
    .local v4, "needsGenerationTracker":Z
    .restart local v9    # "namespace":Ljava/lang/String;
    :catchall_222
    move-exception v0

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    .end local v9    # "namespace":Ljava/lang/String;
    .restart local v19    # "namespace":Ljava/lang/String;
    :goto_227
    :try_start_227
    monitor-exit p0
    :try_end_228
    .catchall {:try_start_227 .. :try_end_228} :catchall_229

    throw v0

    :catchall_229
    move-exception v0

    goto :goto_227
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

    .line 3162
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/provider/SettingsStub;->logAtSettingsChanged(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    :try_start_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3166
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    const-string v1, "_user"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3168
    if-eqz p4, :cond_1e

    .line 3169
    const-string v1, "_tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    :cond_1e
    const/4 v7, 0x1

    if-eqz p5, :cond_26

    .line 3172
    const-string v1, "_make_default"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3174
    :cond_26
    if-eqz p7, :cond_2d

    .line 3175
    const-string v1, "_overrideable_by_restore"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3177
    :cond_2d
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 3178
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iget-object v3, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    .line 3179
    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 3178
    move-object v5, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_48} :catch_4a

    .line 3183
    nop

    .line 3184
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    return v7

    .line 3180
    :catch_4a
    move-exception v0

    .line 3181
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

    .line 3182
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

    .line 3189
    .local p3, "keyValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3191
    return v1

    .line 3194
    :cond_6
    :try_start_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3195
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "_prefix"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    const-string v2, "_flags"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3197
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p1}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 3198
    .local v2, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v4}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v4

    .line 3199
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mCallSetAllCommand:Ljava/lang/String;

    const/4 v6, 0x0

    .line 3198
    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3201
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "config_set_all_return"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_38

    return v1

    .line 3202
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v3    # "bundle":Landroid/os/Bundle;
    :catch_38
    move-exception v0

    .line 3204
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method
