.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

.field private static final CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

.field private static final LEGACY_SQL_COLUMNS:[Ljava/lang/String;

.field private static final NULL_SETTING_BUNDLE:Landroid/os/Bundle;

.field private static final OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

.field private static final OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

.field private static final OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

.field private static final REMOVED_LEGACY_TABLES:Ljava/util/Set;

.field private static final sAllGlobalSettings:Ljava/util/Set;

.field private static final sAllSecureSettings:Ljava/util/Set;

.field private static final sAllSystemSettings:Ljava/util/Set;

.field static final sGlobalMovedToSecureSettings:Ljava/util/Set;

.field static final sGlobalMovedToSystemSettings:Ljava/util/Set;

.field private static final sReadableGlobalSettings:Ljava/util/Set;

.field private static final sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

.field private static final sReadableSecureSettings:Ljava/util/Set;

.field private static final sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

.field private static final sReadableSystemSettings:Ljava/util/Set;

.field private static final sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

.field private static final sSecureCloneToManagedSettings:Ljava/util/Set;

.field static final sSecureMovedToGlobalSettings:Ljava/util/Set;

.field public static final sSystemCloneFromParentOnDependency:Ljava/util/Map;

.field private static final sSystemCloneToManagedSettings:Ljava/util/Set;

.field static final sSystemMovedToGlobalSettings:Ljava/util/Set;

.field static final sSystemMovedToSecureSettings:Ljava/util/Set;


# instance fields
.field private mConfigMonitorCallback:Landroid/os/RemoteCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private volatile mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

.field private mSyncConfigDisabledUntilReboot:Z

.field private volatile mSysConfigManager:Landroid/os/SystemConfigManager;

.field private volatile mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$mu7ge-HjXHGhA2plL6fvPtYIzrI(Lcom/android/providers/settings/SettingsProvider;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerThread(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/HandlerThread;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/providers/settings/SettingsProvider;)Landroid/content/pm/IPackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsRegistry(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSysConfigManager(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/SystemConfigManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllConfigFlags(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetGlobalSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSecureSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misSettingPreDefined(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;I)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->isSettingPreDefined(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreportDeviceConfigUpdate(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveCallingPackage(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveOwningUserIdForSecureSetting(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateGlobalSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateSecureSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLEGACY_SQL_COLUMNS()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSecureCloneToManagedSettings()Ljava/util/Set;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSystemCloneToManagedSettings()Ljava/util/Set;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 225
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    .line 227
    const-string v1, "favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "old_favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "bluetooth_devices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "bookmarks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "android_metadata"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    .line 245
    const-string v3, "is_preserved_in_restore"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 263
    invoke-static {v2, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 276
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 277
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 280
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5e
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 282
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 284
    :cond_6a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_77
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    .line 286
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 288
    :cond_83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_8f
    if-ge v2, v1, :cond_9b

    aget-object v3, v0, v2

    .line 290
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 295
    :cond_9b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    .line 297
    const-string v1, "device_provisioned"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    .line 303
    const-string v1, "user_setup_complete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 309
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 313
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 315
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 319
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 321
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 325
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 327
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 331
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSystemSettings:Ljava/util/Set;

    .line 333
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSystemSettings(Ljava/util/Set;)V

    .line 337
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 339
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 345
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 350
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    .line 352
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneFromParentOnValueSettings(Ljava/util/Map;)V

    .line 355
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 356
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 357
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 360
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 364
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 365
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 366
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 369
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 373
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 374
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 375
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 378
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 204
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .registers 11

    if-eqz p1, :cond_7a

    .line 2850
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_7a

    .line 2853
    :cond_a
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v0

    .line 2855
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_77

    .line 2858
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 2860
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_7c

    goto :goto_4b

    :sswitch_23
    const-string v5, "is_preserved_in_restore"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v4, v7

    goto :goto_4c

    :sswitch_2d
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v4, v6

    goto :goto_4c

    :sswitch_37
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v4, v8

    goto :goto_4c

    :sswitch_41
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    move v4, v2

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v4, -0x1

    :goto_4c
    if-eqz v4, :cond_6e

    if-eq v4, v8, :cond_67

    if-eq v4, v6, :cond_60

    if-eq v4, v7, :cond_55

    goto :goto_74

    .line 2871
    :cond_55
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_74

    .line 2868
    :cond_60
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_74

    .line 2865
    :cond_67
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_74

    .line 2862
    :cond_6e
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2876
    :cond_77
    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7a
    :goto_7a
    return-void

    nop

    :sswitch_data_7c
    .sparse-switch
        0x171ba -> :sswitch_41
        0x337a8b -> :sswitch_37
        0x6ac9171 -> :sswitch_2d
        0x6faae870 -> :sswitch_23
    .end sparse-switch
.end method

.method private assertCallingUserDenyList(Ljava/util/Set;)V
    .registers 5

    .line 2543
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 2548
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 2549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2551
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_6a

    if-ne p0, v2, :cond_19

    .line 2559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2562
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2564
    sget-object v1, Lcom/android/providers/settings/NonWritableNamespacesForBackgroundUserPrefixes;->DENYLIST:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2565
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    goto :goto_32

    .line 2566
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission denial for flag \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' for background user "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Namespace is added to denylist."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    return-void

    :catchall_6a
    move-exception p0

    .line 2559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2560
    throw p0
.end method

.method private buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 4

    .line 665
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p1, :cond_34

    .line 667
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2f

    goto :goto_5

    :catchall_2f
    move-exception p0

    .line 672
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 674
    throw p0

    :cond_34
    if-eqz p1, :cond_39

    .line 672
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return-object p0
.end method

.method private checkReadableAnnotation(ILjava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_2d

    const/4 p0, 0x1

    if-eq p1, p0, :cond_26

    const/4 p0, 0x2

    if-ne p1, p0, :cond_f

    .line 2392
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 2393
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 2394
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2396
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid settings type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2387
    :cond_26
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 2388
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 2389
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2382
    :cond_2d
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 2383
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 2384
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2399
    :goto_33
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2400
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Settings key: <"

    if-eqz p0, :cond_71

    .line 2407
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2408
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p3, p0, :cond_54

    goto :goto_8b

    .line 2410
    :cond_54
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2401
    :cond_71
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    :goto_8b
    return-void
.end method

.method private clearMonitorCallback()V
    .registers 4

    .line 2672
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2677
    :try_start_f
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2678
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_13

    throw p0
.end method

.method private deleteConfigSetting(Ljava/lang/String;)Z
    .registers 9

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1331
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z

    move-result p0

    return p0
.end method

.method private deleteGlobalSetting(Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    .line 1518
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSecureSetting(Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    .line 1808
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1969
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private dumpForUserLocked(ILjava/io/PrintWriter;)V
    .registers 7

    .line 951
    const-string v0, ")"

    if-nez p1, :cond_56

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONFIG SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 956
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 957
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 958
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 961
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLOBAL SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v1, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 965
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 966
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 967
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 971
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SECURE SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 975
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 976
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 977
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 980
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 984
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 985
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 986
    invoke-virtual {v0, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 990
    :cond_a8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/provider/SettingsStub;->dumpLocked(ILjava/io/PrintWriter;)V

    return-void
.end method

.method private dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V
    .registers 8

    .line 996
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object p0

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getVersionLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_a1

    .line 1001
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1002
    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v3

    .line 1003
    const-string v4, "_id:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    const-string v4, " name:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    .line 1006
    const-string v2, " pkg:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    :cond_5b
    const-string v2, " value:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    .line 1010
    const-string v2, " default:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const-string v2, " defaultSystemSet:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isDefaultFromSystem()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1013
    :cond_89
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    .line 1014
    const-string v2, " tag:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    :cond_9b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_a1
    return-void
.end method

.method private enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V
    .registers 7

    .line 2499
    const-string v0, "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG"

    .line 2500
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 2503
    :goto_d
    const-string v3, "android.permission.WRITE_DEVICE_CONFIG"

    .line 2504
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_16

    move v1, v2

    .line 2507
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-nez p1, :cond_1d

    return-void

    :cond_1d
    if-eqz v1, :cond_23

    .line 2514
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    goto :goto_78

    :cond_23
    if-eqz v0, :cond_79

    .line 2516
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2518
    sget-object v1, Lcom/android/providers/settings/WritableNamespacePrefixes;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2519
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    goto :goto_29

    .line 2525
    :cond_4e
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableFlags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_29

    .line 2526
    :cond_59
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission denial for flag \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'; allowlist permission granted, but must add flag to the allowlist."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2531
    :cond_75
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    :goto_78
    return-void

    .line 2533
    :cond_79
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission denial to mutate flag, must have root, WRITE_DEVICE_CONFIG, or WRITE_ALLOWLISTED_DEVICE_CONFIG"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs enforceHasAtLeastOnePermission([Ljava/lang/String;)V
    .registers 6

    .line 2472
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 2473
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2478
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial, must have one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2479
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V
    .registers 6

    .line 2238
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2239
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_7d

    if-nez v0, :cond_13

    goto :goto_7d

    :cond_13
    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_55

    goto :goto_7d

    .line 2272
    :cond_1d
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    sget-object p1, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 2273
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2279
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2282
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3a

    return-void

    .line 2288
    :cond_3a
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    .line 2293
    :cond_45
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_7d

    .line 2274
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot delete system defined secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2249
    :cond_55
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    return-void

    .line 2254
    :cond_5e
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2257
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6b

    return-void

    .line 2263
    :cond_6b
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    return-void

    .line 2268
    :cond_76
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private enforceSettingReadable(Ljava/lang/String;II)V
    .registers 6

    .line 2325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_d

    return-void

    .line 2328
    :cond_d
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2329
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_87

    .line 2332
    :cond_1e
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_29

    .line 2334
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->checkReadableAnnotation(ILjava/lang/String;I)V

    .line 2342
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x6a101c1b

    if-eq v0, v1, :cond_33

    goto :goto_4f

    :cond_33
    const-string v0, "multi_sim_data_call"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-wide/32 v0, 0xa4abed7

    .line 2347
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2349
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v1, "access global settings MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2355
    :cond_4f
    :goto_4f
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-nez p0, :cond_56

    return-void

    .line 2358
    :cond_56
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    .line 2359
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    .line 2362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Instant App "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " trying to access unexposed setting, this will be an error in the future."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    return-void
.end method

.method private getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12

    .line 1380
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1384
    invoke-direct {p0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    .line 1387
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1388
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1390
    invoke-static {}, Lcom/android/providers/settings/Flags;->loadAconfigDefaults()Z

    .line 1392
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getAconfigDefaultValues()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_57

    if-eqz p1, :cond_3f

    .line 1396
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1398
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_57

    .line 1400
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_57

    :catchall_3d
    move-exception p0

    goto :goto_a8

    .line 1403
    :cond_3f
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1404
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_47

    .line 1411
    :cond_57
    :goto_57
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getAconfigDefaultFlags()Ljava/util/Map;

    move-result-object v5

    :goto_5b
    if-ge v3, v2, :cond_a6

    .line 1414
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1415
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v7

    if-eqz p1, :cond_6f

    .line 1416
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a3

    .line 1417
    :cond_6f
    invoke-static {}, Lcom/android/providers/settings/Flags;->ignoreXmlForReadOnlyFlags()Z

    .line 1418
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_98

    if-eqz v8, :cond_98

    .line 1421
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_98

    add-int/lit8 v8, v8, 0x1

    .line 1423
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1424
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/aconfigd/AconfigdFlagInfo;

    if-eqz v6, :cond_98

    .line 1425
    invoke-virtual {v6}, Landroid/aconfigd/AconfigdFlagInfo;->getIsReadWrite()Z

    move-result v6

    if-nez v6, :cond_98

    goto :goto_a3

    .line 1431
    :cond_98
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    :goto_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 1435
    :cond_a6
    monitor-exit v0

    return-object v4

    .line 1436
    :goto_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_3d

    throw p0
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 1444
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1446
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1449
    invoke-direct {p0, v2, v2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1452
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1454
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1455
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move p1, v2

    :goto_1c
    if-ge p1, v4, :cond_38

    .line 1459
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_33

    .line 1462
    :try_start_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1461
    invoke-direct {p0, v6, v2, v7}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2b} :catch_35
    .catchall {:try_start_24 .. :try_end_2b} :catchall_33

    .line 1467
    :try_start_2b
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1468
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3a

    :catch_35
    :goto_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1471
    :cond_38
    monitor-exit v0

    return-object v5

    .line 1472
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_33

    throw p0
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1612
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 1617
    const-string v0, "android_id"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v0

    .line 1619
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1622
    :try_start_12
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1624
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1626
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1627
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_24
    if-ge p2, v4, :cond_53

    .line 1630
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1632
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v7

    .line 1635
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v8
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_45

    if-nez v8, :cond_37

    goto :goto_50

    .line 1642
    :cond_37
    :try_start_37
    invoke-direct {p0, v6, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_50
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 1651
    :try_start_3a
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1652
    invoke-direct {p0, v0, v7}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    goto :goto_4d

    :catchall_45
    move-exception p0

    goto :goto_55

    .line 1654
    :cond_47
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v8, v2, v7, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1657
    :goto_4d
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_50
    :goto_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 1660
    :cond_53
    monitor-exit v1

    return-object v5

    .line 1661
    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_45

    throw p0
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 1902
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 1904
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1905
    :try_start_8
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v2

    .line 1907
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1909
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1910
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_1a
    if-ge p2, v3, :cond_38

    .line 1913
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_33

    .line 1915
    :try_start_22
    invoke-direct {p0, v5, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_35
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    .line 1921
    :try_start_25
    invoke-direct {p0, p1, v5}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 1924
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v7, v1, v6, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    .line 1926
    invoke-static {v4, v5}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3a

    :catch_35
    :goto_35
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1929
    :cond_38
    monitor-exit v0

    return-object v4

    .line 1930
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_33

    throw p0
.end method

.method private getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 878
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_3
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 880
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 881
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 885
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catchall_1a
    move-exception p0

    .line 880
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private getCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 860
    const-string p0, "ringtone"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 861
    const-string p0, "ringtone_cache"

    return-object p0

    .line 862
    :cond_b
    const-string p0, "notification_sound"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 863
    const-string p0, "notification_sound_cache"

    return-object p0

    .line 864
    :cond_16
    const-string p0, "alarm_alert"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 865
    const-string p0, "alarm_alert_cache"

    return-object p0

    .line 869
    :cond_21
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStub;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 2428
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2430
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2431
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 2430
    invoke-interface {p0, v0, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_15

    return-object p0

    .line 2435
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to lookup info for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 1597
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1599
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x40

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    .line 1602
    :catch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 2443
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2444
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2443
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz p0, :cond_f

    return-object p0

    .line 2451
    :catch_f
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling package doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1204
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1205
    :try_start_3
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1207
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 1481
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1484
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1485
    :try_start_b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1487
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method private getGroupParent(I)I
    .registers 4

    if-nez p1, :cond_3

    return p1

    .line 2461
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2464
    :try_start_7
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 2465
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 2467
    :cond_14
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2468
    throw p0
.end method

.method private static getInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2302
    sget-object p0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    goto :goto_27

    .line 2304
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid settings type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2303
    :cond_22
    sget-object p0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    goto :goto_27

    .line 2301
    :cond_25
    sget-object p0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    :goto_27
    return-object p0
.end method

.method private static getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2312
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    goto :goto_27

    .line 2313
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid settings type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2311
    :cond_22
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    goto :goto_27

    .line 2310
    :cond_25
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    :goto_27
    return-object p0
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .registers 3

    .line 2722
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p0, :cond_c

    .line 2723
    const-string v1, "_user"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_c
    return v0
.end method

.method private static getResetModeEnforcingPermission(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    .line 2777
    const-string v0, "_reset_mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    const/4 v0, 0x1

    if-eq p0, v0, :cond_5a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_25

    .line 2794
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_1d

    return p0

    .line 2795
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to trusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2804
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid reset mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2787
    :cond_3c
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_43

    return p0

    .line 2788
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset untrusted changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2780
    :cond_4b
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_52

    return p0

    .line 2781
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to untrusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    return p0
.end method

.method private static getRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;
    .registers 7

    .line 1185
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1186
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1187
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1188
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v1

    .line 1189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1190
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1192
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object v1
.end method

.method private getRingtoneCacheDir(I)Ljava/io/File;
    .registers 3

    .line 912
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "ringtones"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 914
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1670
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 1673
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1676
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result p2

    .line 1678
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1681
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    .line 1684
    const-string p2, "bluetooth_name"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    if-eqz p0, :cond_2b

    .line 1685
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getEmptyBluetoothNameSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    :cond_2b
    return-object v0

    .line 1686
    :cond_2c
    const-string p2, "android_id"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    if-eqz p0, :cond_3a

    .line 1687
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getAndroidIdDefaultSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    :cond_3a
    return-object v0

    :cond_3b
    if-eqz p0, :cond_41

    .line 1690
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getNullSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    :cond_41
    return-object v0

    .line 1695
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1696
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1697
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1698
    :try_start_4f
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_55
    move-exception p0

    .line 1699
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_55

    throw p0

    .line 1703
    :cond_58
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1704
    :try_start_5b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_63
    move-exception p0

    .line 1706
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw p0
.end method

.method private static getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 2

    if-eqz p0, :cond_b

    .line 2754
    const-string v0, "_flags"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    goto :goto_f

    .line 2755
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static getSettingMakeDefault(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 2759
    const-string v0, "_make_default"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static getSettingOverrideableByRestore(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 2763
    const-string v0, "_overrideable_by_restore"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2750
    const-string v0, "_prefix"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method private static getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2746
    const-string v0, "_tag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method private static getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2742
    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method private getSettingsNamesLocked(II)Ljava/util/List;
    .registers 3

    .line 2321
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 12

    .line 1718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1717
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1725
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x3

    invoke-virtual {v1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 1729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1731
    :try_start_1b
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_81
    .catchall {:try_start_1b .. :try_end_23} :catchall_7f

    .line 1737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v2, v7, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v8

    if-eqz v4, :cond_60

    if-eqz v1, :cond_3f

    .line 1745
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1746
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 v5, 0x1

    .line 1749
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x0

    move-object v1, v8

    move-object v2, v0

    move-object v3, v4

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 1754
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1756
    invoke-direct {p0, v8, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1752
    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to update instant app android id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    if-eqz v1, :cond_74

    .line 1760
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6f

    goto :goto_74

    .line 1765
    :cond_6f
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1761
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->generateSsaidLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1762
    invoke-direct {p0, v8, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :catchall_7f
    move-exception p0

    goto :goto_8e

    :catch_81
    move-exception p0

    .line 1734
    :try_start_82
    const-string p1, "SettingsProvider"

    const-string p2, "Failed to get Instant App Android ID"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_7f

    .line 1737
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_8e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1738
    throw p0
.end method

.method private static getSyncDisabledMode(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    .line 2768
    const-string v0, "_disabled_mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    if-eqz p0, :cond_2a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_2a

    .line 2773
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sync disabled mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    :goto_2a
    return p0
.end method

.method private getSyncDisabledModeConfig()I
    .registers 3

    .line 1257
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1261
    :try_start_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1262
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw p0
.end method

.method private getSyncDisabledModeConfigLocked()I
    .registers 5

    .line 1303
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 1308
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    .line 1310
    :try_start_a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    .line 1313
    :cond_17
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    if-nez v1, :cond_27

    .line 1316
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    .line 1323
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :catchall_25
    move-exception v1

    goto :goto_33

    .line 1319
    :cond_27
    :try_start_27
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_25

    xor-int/lit8 v1, v1, 0x1

    .line 1323
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :goto_33
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1324
    throw v1
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1939
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 1942
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1945
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 1948
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 1950
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 2814
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 2815
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2816
    invoke-static {p0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    .line 2819
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2821
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasWriteSecureSettingsPermission()Z
    .registers 2

    .line 2139
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 1215
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z

    move-result p0

    return p0
.end method

.method private insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z
    .registers 18

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 1509
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z
    .registers 18

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    move/from16 v9, p7

    .line 1798
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v7, p4

    .line 1960
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private static isCallerSystemOrShellOrRootOnDebuggableBuild()Z
    .registers 2

    .line 2808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    .line 2809
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method private static isKeyValid(Ljava/lang/String;)Z
    .registers 2

    .line 2880
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isNewSsaidSetting(Ljava/lang/String;)Z
    .registers 2

    .line 1710
    const-string p0, "android_id"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private isSecureSettingAccessible(Ljava/lang/String;)Z
    .registers 13

    .line 2155
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xd67ed7c

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2b

    const v1, 0x2b17f0eb

    if-eq v0, v1, :cond_21

    const v1, 0x66237763

    if-eq v0, v1, :cond_17

    goto :goto_35

    :cond_17
    const-string v0, "bluetooth_address"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    move p1, v3

    goto :goto_36

    :cond_21
    const-string v0, "android_id"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    move p1, v2

    goto :goto_36

    :cond_2b
    const-string v0, "bluetooth_name"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    move p1, v4

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, -0x1

    :goto_36
    if-eqz p1, :cond_b1

    const/16 v0, 0x2710

    if-eq p1, v4, :cond_7b

    if-eq p1, v2, :cond_41

    :cond_3e
    :goto_3e
    move v3, v4

    goto/16 :goto_be

    .line 2179
    :cond_41
    sget-boolean p1, Landroid/os/Build;->IS_MIUI:Z

    if-eqz p1, :cond_3e

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-lt p1, v0, :cond_3e

    .line 2182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2181
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2182
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 2183
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v5

    .line 2184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "SettingsProvider#isSecureSettingAccessible"

    const/16 v6, 0x2735

    .line 2183
    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_be

    goto :goto_3e

    .line 2168
    :cond_7b
    sget-boolean p1, Landroid/os/Build;->IS_MIUI:Z

    if-eqz p1, :cond_3e

    const-string p1, "rothko"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    goto :goto_3e

    .line 2172
    :cond_8a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2171
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-lt p1, v0, :cond_3e

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2175
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2176
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p0

    if-eqz p0, :cond_be

    goto :goto_3e

    .line 2164
    :cond_b1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_be

    goto :goto_3e

    :cond_be
    :goto_be
    return v3
.end method

.method private isSettingPreDefined(Ljava/lang/String;I)Z
    .registers 3

    if-nez p2, :cond_9

    .line 2632
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x2

    if-ne p2, p0, :cond_13

    .line 2634
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1d

    .line 2636
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p1, 0x4

    if-ne p2, p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method private isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_15

    .line 1535
    :try_start_6
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 1536
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/UserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_10
    move-exception p0

    .line 1538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    throw p0

    :cond_15
    const/4 p0, 0x0

    .line 1538
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2730
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    .line 2734
    const-string v0, "android_id"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v1

    :cond_10
    if-eqz p1, :cond_1b

    .line 2738
    const-string p0, "_track_generation"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private isValidMediaUri(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    if-eqz p2, :cond_98

    .line 2108
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2110
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-string v1, "settings"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return v1

    .line 2116
    :cond_18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 2117
    const-string v0, " URI: "

    const-string v2, "mutateSystemSetting for setting: "

    const-string v3, "SettingsProvider"

    if-nez p0, :cond_4a

    .line 2118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: failure to find mimeType (no access from this context?)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2123
    :cond_4a
    const-string v4, "audio/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/ogg"

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/x-flac"

    .line 2124
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "video/"

    .line 2126
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/mp4"

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 2127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: associated MIME type:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a recognized audio or video type"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_98
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    .line 434
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 435
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startWatchingUserRestrictionChanges()V

    return-void
.end method

.method private mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    if-eqz p2, :cond_b

    .line 1774
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$4;-><init>(Lcom/android/providers/settings/SettingsProvider;Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z
    .registers 20

    move-object v0, p0

    move/from16 v1, p5

    .line 1345
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 1348
    iget-object v12, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    .line 1369
    :try_start_13
    monitor-exit v12

    const/4 v0, 0x0

    return v0

    :catchall_16
    move-exception v0

    goto :goto_6f

    .line 1363
    :cond_18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v6, p3

    .line 1364
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1363
    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1365
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    move-object v3, v8

    move/from16 v4, p6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1358
    :cond_39
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1359
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1351
    :cond_51
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1352
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1369
    :goto_6f
    monitor-exit v12
    :try_end_70
    .catchall {:try_start_13 .. :try_end_70} :catchall_16

    throw v0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1547
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p6

    .line 1555
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1558
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 1562
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v0, v7, v2, v8, v3}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    return v3

    .line 1566
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 1569
    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6e

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_47

    const/4 v4, 0x4

    if-eq v1, v4, :cond_38

    .line 1591
    :try_start_34
    monitor-exit v15

    return v3

    :catchall_36
    move-exception v0

    goto :goto_87

    .line 1587
    :cond_38
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    move/from16 v8, p8

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    monitor-exit v15

    return v0

    .line 1582
    :cond_47
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object v11, v2

    move/from16 v12, p7

    invoke-virtual/range {v4 .. v13}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v15

    return v0

    .line 1578
    :cond_5e
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v15

    return v0

    .line 1572
    :cond_6e
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object v11, v2

    move/from16 v12, p7

    move/from16 v14, p9

    invoke-virtual/range {v4 .. v14}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v15

    return v0

    .line 1591
    :goto_87
    monitor-exit v15
    :try_end_88
    .catchall {:try_start_34 .. :try_end_88} :catchall_36

    throw v0
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1839
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 24

    move-object v0, p0

    move-object v3, p1

    move/from16 v1, p6

    .line 1847
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1850
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v5, p2

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1f

    return v6

    .line 1859
    :cond_1f
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_26

    return v6

    .line 1866
    :cond_26
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    .line 1869
    iget-object v13, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v2, 0x1

    if-eq v1, v2, :cond_70

    const/4 v2, 0x2

    if-eq v1, v2, :cond_61

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4b

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3d

    .line 1891
    :try_start_39
    monitor-exit v13

    return v6

    :catchall_3b
    move-exception v0

    goto :goto_88

    .line 1887
    :cond_3d
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v11, p8

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    monitor-exit v13

    return v0

    .line 1882
    :cond_4b
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move v2, v4

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v10

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v13

    return v0

    .line 1878
    :cond_61
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move v2, v4

    move-object v3, p1

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v13

    return v0

    .line 1872
    :cond_70
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move v2, v4

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v10

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v13

    return v0

    .line 1891
    :goto_88
    monitor-exit v13
    :try_end_89
    .catchall {:try_start_39 .. :try_end_89} :catchall_3b

    throw v0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 1994
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z
    .registers 23

    move-object v0, p0

    move-object/from16 v3, p1

    move/from16 v1, p5

    .line 2000
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 2001
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v2, :cond_42

    .line 2004
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2005
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 2004
    invoke-static {v2, v4, v7, v5, v11}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_42

    .line 2007
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed to write system settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2014
    :cond_42
    invoke-static/range {p4 .. p4}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 2016
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v5, p2

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2017
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is disallowed to change system setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2023
    :cond_71
    invoke-direct {p0, v1, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V

    .line 2026
    invoke-direct {p0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_99

    .line 2030
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not the owning userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2036
    :cond_99
    invoke-direct {p0, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_a6

    .line 2038
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->isValidMediaUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a6

    return v12

    .line 2046
    :cond_a6
    iget-object v14, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v14

    if-eq v1, v11, :cond_10a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_de

    const/4 v2, 0x4

    if-eq v1, v2, :cond_cf

    .line 2070
    :try_start_b4
    const-string v0, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    goto :goto_121

    :catchall_cc
    move-exception v0

    goto/16 :goto_12b

    .line 2065
    :cond_cf
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    move/from16 v2, p4

    move-object v3, v7

    move/from16 v4, p6

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_121

    .line 2059
    :cond_de
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move v6, v10

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    goto :goto_121

    .line 2055
    :cond_f4
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 p2, v0

    move/from16 p3, v5

    move/from16 p4, v4

    move-object/from16 p5, p1

    move/from16 p6, v1

    move-object/from16 p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    goto :goto_121

    .line 2049
    :cond_10a
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v6

    move v6, v10

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    .line 2073
    :goto_121
    monitor-exit v14
    :try_end_122
    .catchall {:try_start_b4 .. :try_end_122} :catchall_cc

    if-nez v0, :cond_125

    return v12

    :cond_125
    if-eqz v13, :cond_12a

    .line 2082
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_12a
    return v11

    .line 2073
    :goto_12b
    :try_start_12b
    monitor-exit v14
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_cc

    throw v0
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 2835
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object p0

    .line 2838
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 2840
    aget-object v2, p0, v1

    .line 2841
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2842
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    return-object p0
.end method

.method private static packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 4

    .line 2825
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2826
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 2828
    :cond_d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2829
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0
.end method

.method private packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;
    .registers 8

    if-nez p5, :cond_19

    if-eqz p4, :cond_16

    .line 2607
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_16

    .line 2610
    :cond_b
    const-string p0, "value"

    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 2608
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p0

    .line 2612
    :cond_19
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 2613
    const-string v0, "value"

    if-eqz p4, :cond_2d

    .line 2614
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 2613
    :goto_2e
    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_3f

    .line 2617
    :try_start_36
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p4

    if-eqz p4, :cond_45

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_62

    :cond_3f
    :goto_3f
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->isSettingPreDefined(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_53

    .line 2619
    :cond_45
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2620
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2619
    invoke-virtual {p0, p5, p1, p2}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_60

    .line 2623
    :cond_53
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2624
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2623
    invoke-virtual {p0, p5, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationDataForUnsetSettings(Landroid/os/Bundle;I)V

    .line 2626
    :goto_60
    monitor-exit v0

    return-object p5

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_36 .. :try_end_63} :catchall_3d

    throw p0
.end method

.method private packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;
    .registers 6

    .line 2645
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2646
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p3, :cond_23

    .line 2648
    iget-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2650
    :try_start_f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    const/4 p3, 0x4

    const/4 v1, 0x0

    .line 2651
    invoke-static {p3, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p3

    .line 2650
    invoke-virtual {p0, v0, p3, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 2653
    monitor-exit p2

    goto :goto_23

    :catchall_20
    move-exception p0

    monitor-exit p2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    :goto_23
    return-object v0
.end method

.method private registerBroadcastReceivers()V
    .registers 5

    .line 1028
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1029
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1030
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1059
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1085
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method private reportDeviceConfigAccess(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 2685
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2686
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2687
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 2690
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2691
    :try_start_1d
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_3f

    .line 2692
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2693
    const-string v3, "monitor_callback_type"

    const-string v4, "access_callback"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    const-string v3, "calling_package"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    const-string v0, "namespace"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_41

    .line 2699
    :cond_3f
    :goto_3f
    monitor-exit v1

    return-void

    :goto_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_3d

    throw p0
.end method

.method private reportDeviceConfigUpdate(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 2706
    :cond_3
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2707
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 2710
    :cond_16
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2711
    :try_start_19
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_36

    .line 2712
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2713
    const-string v2, "monitor_callback_type"

    const-string v3, "namespace_updated_callback"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    const-string v2, "namespace"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 2718
    :cond_36
    :goto_36
    monitor-exit v0

    return-void

    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_34

    throw p0
.end method

.method private resetConfigSetting(ILjava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move v6, p1

    .line 1339
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z

    return-void
.end method

.method private resetGlobalSetting(IILjava/lang/String;)V
    .registers 13

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p1

    move v8, p2

    .line 1527
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    return-void
.end method

.method private resetSecureSetting(IILjava/lang/String;)V
    .registers 13

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p1

    move v8, p2

    .line 1830
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    return-void
.end method

.method private resetSystemSetting(IILjava/lang/String;)V
    .registers 12

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p1

    move v6, p2

    .line 1987
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    return-void
.end method

.method private resolveCallingPackage()Ljava/lang/String;
    .registers 3

    .line 2884
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    .line 2887
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    .line 2886
    :cond_f
    const-string p0, "com.android.shell"

    goto :goto_14

    .line 2885
    :cond_12
    const-string p0, "root"

    :goto_14
    return-object p0
.end method

.method private static resolveCallingUserIdEnforcingPermissions(I)I
    .registers 9

    .line 2596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_7

    return p0

    .line 2599
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "get/set setting for user"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p0

    .line 2599
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I
    .registers 4

    .line 2220
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result p0

    if-eq p0, p1, :cond_d

    .line 2221
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return p0

    .line 2227
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSettings(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 2228
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSecureSettings(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    goto :goto_23

    :cond_22
    return p1

    :cond_23
    :goto_23
    return p0
.end method

.method private resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I
    .registers 4

    .line 2194
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .registers 8

    .line 2201
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2202
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result v1

    if-eq v1, p1, :cond_38

    .line 2204
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2208
    :try_start_18
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2209
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2e

    if-eqz v0, :cond_30

    .line 2213
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2e
    move-exception p0

    goto :goto_34

    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :goto_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    throw p0

    .line 2216
    :cond_38
    :goto_38
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I
    .registers 7

    .line 1225
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1226
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1228
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_12
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result v2

    if-eqz v2, :cond_1d

    .line 1230
    monitor-exit v1

    const/4 p0, 0x2

    return p0

    :catchall_1b
    move-exception p0

    goto :goto_2b

    :cond_1d
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1232
    invoke-static {v2, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v2

    .line 1233
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->setConfigSettingsLocked(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    .line 1235
    monitor-exit v1

    return p0

    .line 1236
    :goto_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_1b

    throw p0
.end method

.method private setMonitorCallback(Landroid/os/RemoteCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2662
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2667
    :try_start_11
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2668
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    throw p0
.end method

.method private setSyncDisabledModeConfig(I)V
    .registers 4

    .line 1244
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1248
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfigLocked(I)V

    .line 1249
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_13

    throw p0
.end method

.method private setSyncDisabledModeConfigLocked(I)V
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move v1, v0

    goto :goto_f

    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    goto :goto_f

    :cond_9
    const/4 v2, 0x2

    if-ne p1, v2, :cond_38

    move v12, v1

    move v1, v0

    move v0, v12

    .line 1282
    :goto_f
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    .line 1284
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    if-eqz v1, :cond_1d

    .line 1286
    :try_start_17
    const-string v0, "1"

    :goto_19
    move-object v5, v0

    goto :goto_20

    :catchall_1b
    move-exception v0

    goto :goto_34

    :cond_1d
    const-string v0, "0"

    goto :goto_19

    .line 1287
    :goto_20
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v4, "device_config_sync_disabled"

    const-string v8, "android"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z
    :try_end_30
    .catchall {:try_start_17 .. :try_end_30} :catchall_1b

    .line 1293
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-void

    :goto_34
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1294
    throw v0

    .line 1279
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startWatchingUserRestrictionChanges()V
    .registers 2

    .line 1093
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$3;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1181
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 1024
    :cond_3
    const-string p0, "{null}"

    return-object p0
.end method

.method private updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 16

    const/4 v6, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 1497
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 16

    const/4 v6, 0x3

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    .line 1820
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x3

    .line 1978
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2144
    sget-object p0, Landroid/provider/settings/validators/SystemSettingsValidators;->VALIDATORS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/settings/validators/Validator;

    if-eqz p0, :cond_30

    .line 2145
    invoke-interface {p0, p2}, Landroid/provider/settings/validators/Validator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_30

    .line 2146
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for setting: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method private static warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V
    .registers 3

    const/16 v0, 0x16

    if-gt p0, v0, :cond_1a

    .line 2578
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SettingsProvider"

    if-eqz p0, :cond_14

    .line 2579
    const-string p0, "You shouldn\'t not change private system settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 2582
    :cond_14
    const-string p0, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void

    .line 2586
    :cond_1a
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2587
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot change private secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2589
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot keep your settings in the secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeFallBackSettingsFiles(Ljava/util/List;)V
    .registers 8

    .line 3031
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4b

    .line 3033
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3034
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3035
    invoke-static {v3}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3036
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fallback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3038
    :try_start_2e
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_48

    .line 3040
    :catch_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write fallback file for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsProvider"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4b
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 7

    .line 734
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    .line 736
    aget-object v3, p2, v1

    .line 737
    invoke-virtual {p0, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_f

    add-int/lit8 v2, v2, 0x1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    .line 444
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I

    move-result v5

    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :cond_kaorios_settings_stock
    return-object v9
    :cond_kaorios_settings_stock

    .line 445
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_2de

    goto/16 :goto_128

    :sswitch_e
    const-string v0, "SET_ALL_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x8

    goto/16 :goto_129

    :sswitch_1a
    const-string v0, "DELETE_global"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x10

    goto/16 :goto_129

    :sswitch_26
    const-string v0, "LIST_system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x18

    goto/16 :goto_129

    :sswitch_32
    const-string v0, "LIST_secure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x17

    goto/16 :goto_129

    :sswitch_3e
    const-string v0, "DELETE_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xf

    goto/16 :goto_129

    :sswitch_4a
    const-string v0, "UNREGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x15

    goto/16 :goto_129

    :sswitch_56
    const-string v0, "LIST_global"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x16

    goto/16 :goto_129

    :sswitch_62
    const-string v0, "LIST_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x13

    goto/16 :goto_129

    :sswitch_6e
    const-string v0, "RESET_system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xe

    goto/16 :goto_129

    :sswitch_7a
    const-string v0, "RESET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xd

    goto/16 :goto_129

    :sswitch_86
    const-string v0, "GET_system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x3

    goto/16 :goto_129

    :sswitch_91
    const-string v0, "GET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x2

    goto/16 :goto_129

    :sswitch_9c
    const-string v0, "RESET_global"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xc

    goto/16 :goto_129

    :sswitch_a8
    const-string v0, "RESET_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xb

    goto/16 :goto_129

    :sswitch_b4
    const-string v0, "GET_global"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x1

    goto/16 :goto_129

    :sswitch_bf
    const-string v0, "GET_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    move v0, v1

    goto :goto_129

    :sswitch_c9
    const-string v0, "PUT_system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x7

    goto :goto_129

    :sswitch_d3
    const-string v0, "PUT_secure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x6

    goto :goto_129

    :sswitch_dd
    const-string v0, "PUT_global"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x5

    goto :goto_129

    :sswitch_e7
    const-string v0, "GET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0xa

    goto :goto_129

    :sswitch_f2
    const-string v0, "PUT_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/4 v0, 0x4

    goto :goto_129

    :sswitch_fc
    const-string v0, "SET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x9

    goto :goto_129

    :sswitch_107
    const-string v0, "REGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x14

    goto :goto_129

    :sswitch_112
    const-string v0, "DELETE_system"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x12

    goto :goto_129

    :sswitch_11d
    const-string v0, "DELETE_secure"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    const/16 v0, 0x11

    goto :goto_129

    :cond_128
    :goto_128
    const/4 v0, -0x1

    :goto_129
    const-string v2, "SettingsProvider"

    const-string v3, "result_settings_list"

    const-string v4, "result_rows_deleted"

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_344

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call() with invalid method: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_294

    .line 593
    :pswitch_149
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 595
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 594
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 587
    :pswitch_15a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 589
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 588
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 581
    :pswitch_16b
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 583
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 582
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 578
    :pswitch_17c
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->clearMonitorCallback()V

    goto/16 :goto_294

    .line 573
    :pswitch_181
    const-string p1, "_monitor_callback_key"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 575
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setMonitorCallback(Landroid/os/RemoteCallback;)V

    goto/16 :goto_294

    .line 566
    :pswitch_18e
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 568
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p3

    .line 567
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 569
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigAccess(Ljava/lang/String;)V

    return-object p2

    .line 560
    :pswitch_1a2
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    .line 561
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 562
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 554
    :pswitch_1af
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 555
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 556
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 548
    :pswitch_1bc
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 549
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 550
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 542
    :pswitch_1c9
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->deleteConfigSetting(Ljava/lang/String;)Z

    move-result p0

    .line 543
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 544
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 537
    :pswitch_1d6
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 538
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 539
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSystemSetting(IILjava/lang/String;)V

    goto/16 :goto_294

    .line 532
    :pswitch_1e3
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 533
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 534
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSecureSetting(IILjava/lang/String;)V

    goto/16 :goto_294

    .line 527
    :pswitch_1f0
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 528
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 529
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetGlobalSetting(IILjava/lang/String;)V

    goto/16 :goto_294

    .line 522
    :pswitch_1fd
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 523
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetConfigSetting(ILjava/lang/String;)V

    goto/16 :goto_294

    .line 516
    :pswitch_20a
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 517
    const-string p2, "config_get_sync_disabled_mode_return"

    .line 518
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfig()I

    move-result p0

    .line 517
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 512
    :pswitch_219
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledMode(Landroid/os/Bundle;)I

    move-result p1

    .line 513
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfig(I)V

    goto/16 :goto_294

    .line 504
    :pswitch_222
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 505
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 506
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 507
    const-string v0, "config_set_all_return"

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    .line 507
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3

    .line 492
    :pswitch_239
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 494
    const-string v0, "miui_dkt_mode"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_253

    const-string v0, "persist.sys.scout.miui_desktop_mode_disabled"

    .line 495
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 496
    const-string p0, "miui desktop mode is explicitly disabled"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 500
    :cond_253
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result p3

    .line 501
    invoke-direct {p0, p2, p1, v5, p3}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_294

    .line 484
    :pswitch_25b
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 487
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 488
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_294

    .line 476
    :pswitch_272
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 479
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 480
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_294

    .line 471
    :pswitch_289
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result p3

    .line 473
    invoke-direct {p0, p2, p1, p3}, Lcom/android/providers/settings/SettingsProvider;->insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    :goto_294
    return-object v8

    .line 466
    :pswitch_295
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x1

    .line 468
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 467
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 457
    :pswitch_2a7
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x2

    .line 462
    invoke-direct {p0, p3, p2}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 459
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 452
    :pswitch_2b9
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x0

    .line 454
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 453
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 447
    :pswitch_2cb
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x4

    .line 449
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 448
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_2de
    .sparse-switch
        -0x750f4775 -> :sswitch_11d
        -0x73ee30bd -> :sswitch_112
        -0x332e6225 -> :sswitch_107
        -0x132cde7e -> :sswitch_fc
        -0x7c1916e -> :sswitch_f2
        -0x2eb948a -> :sswitch_e7
        -0x118110d -> :sswitch_dd
        0x12fa46c7 -> :sswitch_d3
        0x141b5d7f -> :sswitch_c9
        0x1d62846b -> :sswitch_bf
        0x240c04cc -> :sswitch_b4
        0x295ef852 -> :sswitch_a8
        0x300878b3 -> :sswitch_9c
        0x381e5ca0 -> :sswitch_91
        0x393f7358 -> :sswitch_86
        0x441ad087 -> :sswitch_7a
        0x453be73f -> :sswitch_6e
        0x55988a03 -> :sswitch_62
        0x5c420a64 -> :sswitch_56
        0x70190474 -> :sswitch_4a
        0x7034e056 -> :sswitch_3e
        0x70546238 -> :sswitch_32
        0x717578f0 -> :sswitch_26
        0x76de60b7 -> :sswitch_1a
        0x7de137dd -> :sswitch_e
    .end sparse-switch

    :pswitch_data_344
    .packed-switch 0x0
        :pswitch_2cb
        :pswitch_2b9
        :pswitch_2a7
        :pswitch_295
        :pswitch_289
        :pswitch_272
        :pswitch_25b
        :pswitch_239
        :pswitch_222
        :pswitch_219
        :pswitch_20a
        :pswitch_1fd
        :pswitch_1f0
        :pswitch_1e3
        :pswitch_1d6
        :pswitch_1c9
        :pswitch_1bc
        :pswitch_1af
        :pswitch_1a2
        :pswitch_18e
        :pswitch_181
        :pswitch_17c
        :pswitch_16b
        :pswitch_15a
        :pswitch_149
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9

    .line 751
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 754
    sget-object p2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    .line 758
    :cond_11
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 762
    :cond_1a
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v2, -0x4a16fc5d

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p3, v2, :cond_46

    const v2, -0x3604a489

    if-eq p3, v2, :cond_3c

    const v2, -0x34e38dd1    # -1.0252847E7f

    if-eq p3, v2, :cond_32

    goto :goto_50

    :cond_32
    const-string p3, "system"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    move p2, v4

    goto :goto_51

    :cond_3c
    const-string p3, "secure"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    move p2, v3

    goto :goto_51

    :cond_46
    const-string p3, "global"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    move p2, v1

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p2, -0x1

    :goto_51
    if-eqz p2, :cond_84

    if-eq p2, v3, :cond_79

    if-ne p2, v4, :cond_62

    .line 772
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 773
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 776
    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad Uri path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 768
    :cond_79
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 769
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 764
    :cond_84
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 765
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 934
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 935
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2e

    .line 937
    :try_start_7
    iget-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getKnownUsersLocked()Landroid/util/SparseBooleanArray;

    move-result-object p3

    .line 938
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    .line 940
    invoke-virtual {p3, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUserLocked(ILjava/io/PrintWriter;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1e

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :catchall_1e
    move-exception p0

    goto :goto_30

    .line 943
    :cond_20
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 945
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/providers/settings/GenerationRegistry;->dump(Ljava/io/PrintWriter;)V

    .line 946
    monitor-exit p1

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_34

    .line 943
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 944
    throw p0

    .line 946
    :goto_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_2e

    throw p0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 924
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 926
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 927
    :try_start_8
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0, v0}, Lcom/android/providers/settings/SettingsProtoDumpUtil;->dumpProtoLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/util/proto/ProtoOutputStream;)V

    .line 928
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 930
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_12
    move-exception p0

    .line 928
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 608
    new-instance p0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 609
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 610
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 612
    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14

    .line 684
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 687
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 691
    :cond_e
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    return-object v2

    .line 696
    :cond_1b
    const-string v3, "value"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 698
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    const v3, -0x4a16fc5d

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p2, v3, :cond_4c

    const v3, -0x3604a489

    if-eq p2, v3, :cond_42

    const v3, -0x34e38dd1    # -1.0252847E7f

    if-eq p2, v3, :cond_38

    goto :goto_56

    :cond_38
    const-string p2, "system"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    move p2, v7

    goto :goto_57

    :cond_42
    const-string p2, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    move p2, v6

    goto :goto_57

    :cond_4c
    const-string p2, "global"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_56

    move p2, v4

    goto :goto_57

    :cond_56
    :goto_56
    const/4 p2, -0x1

    :goto_57
    if-eqz p2, :cond_9c

    if-eq p2, v6, :cond_85

    if-ne p2, v7, :cond_6e

    .line 714
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-direct {p0, v1, v5, p1, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 716
    sget-object p0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 720
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad Uri path:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 708
    :cond_85
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 707
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 710
    sget-object p0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 701
    :cond_9c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 700
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_b3

    .line 703
    sget-object p0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_b3
    return-object v2
.end method

.method public onCreate()Z
    .registers 5

    .line 413
    invoke-static {}, Landroid/provider/Settings;->setInSystemServer()V

    .line 415
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 417
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 418
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/SystemConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    .line 419
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SettingsProvider"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 421
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 422
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 424
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_a4

    .line 425
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->cacheSystemPackageNamesAndSystemSignature(Landroid/content/Context;)V

    .line 426
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 427
    :try_start_57
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mmigrateAllLegacySettingsIfNeededLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 428
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 429
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsForUserLocked(I)Z

    goto :goto_66

    :catchall_7a
    move-exception p0

    goto :goto_a2

    .line 431
    :cond_7c
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$msyncSsaidTableOnStartLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 432
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_57 .. :try_end_82} :catchall_7a

    .line 433
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    const-string v0, "settings"

    new-instance v1, Lcom/android/providers/settings/SettingsService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 438
    const-string v0, "device_config"

    new-instance v1, Lcom/android/providers/settings/DeviceConfigService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/DeviceConfigService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    .line 432
    :goto_a2
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7a

    throw p0

    :catchall_a4
    move-exception p0

    .line 424
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 823
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 824
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 825
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Access files from the settings of another user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    :cond_19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 829
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 829
    invoke-static {v2, v3, v1, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_53

    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to modify system settings files."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_53
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 838
    sget-object v1, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 839
    const-string p1, "ringtone"

    goto :goto_8a

    .line 840
    :cond_62
    sget-object v1, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 841
    const-string p1, "notification_sound"

    goto :goto_8a

    .line 842
    :cond_6d
    sget-object v1, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 843
    const-string p1, "alarm_alert"

    goto :goto_8a

    .line 846
    :cond_78
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 847
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 854
    :goto_8a
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 855
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 850
    :cond_97
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Direct file access no longer supported; ringtone playback is available through android.media.Ringtone"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    move-object/from16 v5, p1
    move-object/from16 v6, p3
    move-object/from16 v7, p4

    .line 623
    new-instance p5, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x1

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 624
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 627
    sget-object p4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1b

    .line 628
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 631
    :cond_1b
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, -0x4a16fc5d

    const/4 v4, 0x2

    if-eq v2, v3, :cond_46

    const v1, -0x3604a489

    if-eq v2, v1, :cond_3c

    const v1, -0x34e38dd1    # -1.0252847E7f

    if-eq v2, v1, :cond_32

    goto :goto_4f

    :cond_32
    const-string v1, "system"

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4f

    move v1, v4

    goto :goto_50

    :cond_3c
    const-string v1, "secure"

    invoke-virtual {p4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4f

    move v1, v0

    goto :goto_50

    :cond_46
    const-string v2, "global"

    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4f

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v1, -0x1

    :goto_50
    if-eqz v1, :cond_99

    if-eq v1, v0, :cond_83

    if-ne v1, v4, :cond_6c

    .line 650
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 651
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_67

    .line 652
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 653
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 655
    :cond_67
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 659
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Uri path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 641
    :cond_83
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 642
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_94

    .line 643
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 644
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 646
    :cond_94
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 633
    :cond_99
    iget-object p1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p1, :cond_a6

    .line 634
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 635
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 637
    :cond_a6
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0
.end method

.method public scheduleWriteFallbackFilesJob()V
    .registers 10

    .line 2987
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2988
    const-string v0, "jobscheduler"

    .line 2989
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_f

    return-void

    .line 2994
    :cond_f
    const-string v1, "SettingsProviderJobsNamespace"

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    const/4 v1, 0x1

    .line 2996
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_1d

    return-void

    .line 3000
    :cond_1d
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, 0x0

    .line 3002
    invoke-static {v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v4

    .line 3001
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v4

    .line 3004
    invoke-static {v1, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v5

    .line 3003
    invoke-static {v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x2

    .line 3006
    invoke-static {v6, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v6

    .line 3005
    invoke-static {v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x3

    .line 3008
    invoke-static {v7, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v7

    .line 3007
    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x4

    .line 3010
    invoke-static {v8, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v3

    .line 3009
    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v3

    .line 3011
    const-string v8, "global"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v8, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const-string v4, "system"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    const-string v4, "secure"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const-string v4, "ssaid"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    const-string v4, "config"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3017
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/providers/settings/WriteFallbackSettingsFilesJobService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 3019
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v2, 0x5265c00

    .line 3020
    invoke-virtual {p0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3021
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3022
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3023
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 3017
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    .line 787
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 790
    sget-object p3, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    return v1

    .line 794
    :cond_11
    const-string p3, "name"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 795
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    return v1

    .line 798
    :cond_1e
    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 800
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const p4, -0x4a16fc5d

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p3, p4, :cond_50

    const p4, -0x3604a489

    if-eq p3, p4, :cond_46

    const p4, -0x34e38dd1    # -1.0252847E7f

    if-eq p3, p4, :cond_3c

    goto :goto_59

    :cond_3c
    const-string p3, "system"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    move v1, v3

    goto :goto_5a

    :cond_46
    const-string p3, "secure"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    move v1, v2

    goto :goto_5a

    :cond_50
    const-string p3, "global"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v1, -0x1

    :goto_5a
    if-eqz v1, :cond_91

    if-eq v1, v2, :cond_82

    if-ne v1, v3, :cond_6b

    .line 812
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 813
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, v4, p1}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 816
    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid Uri path:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 807
    :cond_82
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 808
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    .line 802
    :cond_91
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 803
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method
