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

.field private static final sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

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

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

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

.method static bridge synthetic -$$Nest$mcancelUserJob(Lcom/android/providers/settings/SettingsProvider;Landroid/content/Context;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->cancelUserJob(Landroid/content/Context;I)V

    return-void
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

    .line 229
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    .line 231
    const-string v1, "favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "old_favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "bluetooth_devices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "bookmarks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "android_metadata"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 243
    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    .line 249
    const-string v3, "is_preserved_in_restore"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 267
    invoke-static {v2, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    .line 279
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 280
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 281
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 284
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5e
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 286
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 288
    :cond_6a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_77
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    .line 290
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 292
    :cond_83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_8f
    if-ge v2, v1, :cond_9b

    aget-object v3, v0, v2

    .line 294
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 299
    :cond_9b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    .line 301
    const-string v1, "device_provisioned"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    .line 307
    const-string v1, "user_setup_complete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 313
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 317
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 319
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 323
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 325
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 329
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 331
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 335
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSystemSettings:Ljava/util/Set;

    .line 337
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSystemSettings(Ljava/util/Set;)V

    .line 341
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 343
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 347
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 349
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 354
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    .line 356
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneFromParentOnValueSettings(Ljava/util/Map;)V

    .line 359
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 360
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 361
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 364
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 368
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 369
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 370
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 373
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 377
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 378
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 379
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 382
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 400
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 208
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 386
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7c

    .line 3033
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_7c

    .line 3036
    :cond_c
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v2

    .line 3038
    new-array v3, v2, [Ljava/lang/String;

    move v4, v1

    :goto_13
    if-ge v4, v2, :cond_79

    .line 3041
    invoke-virtual {p0, v4}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 3043
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_7e

    goto :goto_50

    :sswitch_25
    const-string v7, "is_preserved_in_restore"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_50

    :cond_2e
    const/4 v6, 0x3

    goto :goto_50

    :sswitch_30
    const-string v7, "value"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_50

    :cond_39
    const/4 v6, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto :goto_50

    :cond_44
    move v6, v0

    goto :goto_50

    :sswitch_46
    const-string v7, "_id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_50

    :cond_4f
    move v6, v1

    :goto_50
    packed-switch v6, :pswitch_data_90

    goto :goto_77

    .line 3054
    :pswitch_54
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_77

    .line 3051
    :pswitch_5f
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_77

    .line 3048
    :pswitch_66
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_77

    .line 3045
    :pswitch_6d
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    :goto_77
    add-int/2addr v4, v0

    goto :goto_13

    .line 3059
    :cond_79
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_7c
    :goto_7c
    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        0x171ba -> :sswitch_46
        0x337a8b -> :sswitch_3b
        0x6ac9171 -> :sswitch_30
        0x6faae870 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_66
        :pswitch_5f
        :pswitch_54
    .end packed-switch
.end method

.method private assertCallingUserDenyList(Ljava/util/Set;)V
    .registers 5

    .line 2666
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_68

    .line 2671
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 2672
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2674
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_6d

    if-eq p0, v2, :cond_69

    if-nez p0, :cond_18

    goto :goto_69

    .line 2682
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2687
    sget-object v1, Lcom/android/providers/settings/NonWritableNamespacesForBackgroundUserPrefixes;->DENYLIST:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2688
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_31

    .line 2689
    :cond_44
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

    :cond_68
    :goto_68
    return-void

    .line 2682
    :cond_69
    :goto_69
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2683
    throw p0
.end method

.method private buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 4

    .line 681
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p1, :cond_34

    .line 683
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 684
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

    .line 688
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 690
    throw p0

    :cond_34
    if-eqz p1, :cond_39

    .line 688
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return-object p0
.end method

.method private cancelUserJob(Landroid/content/Context;I)V
    .registers 4

    .line 3228
    const-string p0, "jobscheduler"

    .line 3229
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_b

    return-void

    .line 3234
    :cond_b
    const-string p1, "SettingsProviderJobsNamespace"

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 3238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cancel job for userid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " because user is removed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private checkReadableAnnotation(ILjava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_2d

    const/4 p0, 0x1

    if-eq p1, p0, :cond_26

    const/4 p0, 0x2

    if-ne p1, p0, :cond_f

    .line 2473
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 2474
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 2475
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2477
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

    .line 2468
    :cond_26
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 2469
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 2470
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2463
    :cond_2d
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 2464
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 2465
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2480
    :goto_33
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2481
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Settings key: <"

    if-eqz p0, :cond_71

    .line 2488
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2489
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p3, p0, :cond_54

    goto :goto_8b

    .line 2491
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

    .line 2482
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

    .line 2855
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2860
    :try_start_f
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2861
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

    .line 1355
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

    .line 1559
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

    .line 1855
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2022
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private dumpForUserLocked(ILjava/io/PrintWriter;)V
    .registers 7

    .line 967
    const-string v0, ")"

    if-nez p1, :cond_56

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONFIG SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 972
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 973
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 974
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 977
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

    .line 978
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v1, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 981
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 982
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 983
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 987
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

    .line 988
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 991
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 992
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 993
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 996
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

    .line 997
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 1000
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 1001
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1002
    invoke-virtual {v0, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 1006
    :cond_a8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/provider/SettingsStub;->dumpLocked(ILjava/io/PrintWriter;)V

    return-void
.end method

.method private dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V
    .registers 9

    .line 1012
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object p0

    .line 1013
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

    .line 1014
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_b1

    .line 1017
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1018
    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v3

    .line 1019
    const-string v4, "_id:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    const-string v4, " name:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 1022
    const-string v2, " pkg:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    :cond_5f
    const-string v2, " value:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 1026
    const-string v2, " default:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    const-string v2, " defaultSystemSet:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isDefaultFromSystem()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1029
    :cond_8d
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 1030
    const-string v2, " tag:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    :cond_9f
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v2

    if-nez v2, :cond_aa

    .line 1035
    const-string v2, " notPreservedInRestore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    :cond_aa
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_21

    :cond_b1
    return-void
.end method

.method private enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V
    .registers 14

    .line 2580
    const-string v0, "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG"

    .line 2581
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 2584
    :goto_d
    const-string v3, "android.permission.WRITE_DEVICE_CONFIG"

    .line 2585
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    move p1, v2

    goto :goto_18

    :cond_17
    move p1, v1

    :goto_18
    if-eqz p1, :cond_1e

    .line 2594
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    return-void

    :cond_1e
    if-eqz v0, :cond_cb

    if-eqz v0, :cond_27

    .line 2598
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getAllowlistedDeviceConfigNamespaces()Ljava/util/Set;

    move-result-object p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 2600
    :goto_28
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2c
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_83

    .line 2603
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->getFlagNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2606
    const-string v6, "device_config_overrides"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 2609
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2610
    const-string v8, ":"

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v7, v9, :cond_7e

    if-eq v8, v9, :cond_7e

    add-int/lit8 v7, v7, 0x1

    .line 2611
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_7e

    add-int/lit8 v9, v8, 0x1

    .line 2612
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_7e

    .line 2613
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2619
    :cond_7e
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_9e

    .line 2623
    :cond_83
    sget-object v5, Lcom/android/providers/settings/WritableNamespacePrefixes;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_89
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2624
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_89

    move v5, v2

    goto :goto_9e

    :cond_9d
    move v5, v1

    :goto_9e
    if-nez v5, :cond_2c

    .line 2631
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableFlags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    goto :goto_2c

    .line 2632
    :cond_ab
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission denial for flag \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'; allowlist permission granted, but must add flag to the allowlist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2637
    :cond_c7
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    return-void

    .line 2639
    :cond_cb
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission denial to mutate flag, must have root, WRITE_DEVICE_CONFIG, or WRITE_ALLOWLISTED_DEVICE_CONFIG"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs enforceHasAtLeastOnePermission([Ljava/lang/String;)V
    .registers 6

    .line 2553
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 2554
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2559
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial, must have one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
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

    .line 2319
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2320
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_7e

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_7e

    if-nez v0, :cond_14

    goto/16 :goto_7e

    :cond_14
    const/4 v0, 0x1

    if-eq p1, v0, :cond_56

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_56

    goto :goto_7e

    .line 2353
    :cond_1e
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    sget-object p1, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 2354
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    .line 2360
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2363
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3b

    goto :goto_7e

    .line 2369
    :cond_3b
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_7e

    .line 2374
    :cond_46
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    return-void

    .line 2355
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot delete system defined secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2330
    :cond_56
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    goto :goto_7e

    .line 2335
    :cond_5f
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2338
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6c

    goto :goto_7e

    .line 2344
    :cond_6c
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    goto :goto_7e

    .line 2349
    :cond_77
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method private enforceSettingReadable(Ljava/lang/String;II)V
    .registers 6

    .line 2406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_e

    goto/16 :goto_82

    .line 2409
    :cond_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2410
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_82

    .line 2413
    :cond_1f
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2a

    .line 2415
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->checkReadableAnnotation(ILjava/lang/String;I)V

    .line 2423
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "multi_sim_data_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_4a

    :cond_36
    const-wide/32 v0, 0xa4abed7

    .line 2428
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2430
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v1, "access global settings MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    :cond_4a
    :goto_4a
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-nez p0, :cond_51

    goto :goto_82

    .line 2439
    :cond_51
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    .line 2440
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_82

    .line 2443
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

    :cond_82
    :goto_82
    return-void
.end method

.method private getAllConfigFlagNamespaces()Ljava/util/HashSet;
    .registers 5

    const/4 v0, 0x0

    .line 1400
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 1401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1402
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1403
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    if-eqz v2, :cond_12

    .line 1406
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_12

    const/4 v3, 0x0

    .line 1408
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1409
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_38
    return-object v0
.end method

.method private getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12

    .line 1421
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1423
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1425
    invoke-direct {p0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    .line 1428
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1429
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1433
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getAconfigDefaultValues()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_54

    if-eqz p1, :cond_3c

    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1439
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_54

    .line 1441
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_54

    :catchall_3a
    move-exception p0

    goto :goto_a2

    .line 1444
    :cond_3c
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 1445
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_44

    .line 1452
    :cond_54
    :goto_54
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getAconfigDefaultFlags()Ljava/util/Map;

    move-result-object v5

    :goto_58
    if-ge v3, v2, :cond_a0

    .line 1455
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1456
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v7

    if-eqz p1, :cond_6c

    .line 1457
    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 1459
    :cond_6c
    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_92

    if-eqz v8, :cond_92

    .line 1462
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_92

    add-int/lit8 v8, v8, 0x1

    .line 1464
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1465
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/aconfigd/AconfigdFlagInfo;

    if-eqz v6, :cond_92

    .line 1466
    invoke-virtual {v6}, Landroid/aconfigd/AconfigdFlagInfo;->getIsReadWrite()Z

    move-result v6

    if-nez v6, :cond_92

    goto :goto_9d

    .line 1472
    :cond_92
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 1476
    :cond_a0
    monitor-exit v0

    return-object v4

    .line 1477
    :goto_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_3a

    throw p0
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 1485
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1487
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1490
    invoke-direct {p0, v2, v2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1493
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1495
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1496
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move p1, v2

    :goto_1c
    if-ge p1, v4, :cond_38

    .line 1500
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_33

    .line 1503
    :try_start_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1502
    invoke-direct {p0, v6, v2, v7}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2b} :catch_35
    .catchall {:try_start_24 .. :try_end_2b} :catchall_33

    .line 1508
    :try_start_2b
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1509
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3a

    :catch_35
    :goto_35
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1512
    :cond_38
    monitor-exit v0

    return-object v5

    .line 1513
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_33

    throw p0
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1659
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 1664
    const-string v0, "android_id"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v0

    .line 1666
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1668
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1669
    :try_start_12
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1671
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1673
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1674
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_24
    if-ge p2, v4, :cond_53

    .line 1677
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1679
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v7

    .line 1682
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v8
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_45

    if-nez v8, :cond_37

    goto :goto_50

    .line 1689
    :cond_37
    :try_start_37
    invoke-direct {p0, v6, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_50
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 1698
    :try_start_3a
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1699
    invoke-direct {p0, v0, v7}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    goto :goto_4d

    :catchall_45
    move-exception p0

    goto :goto_55

    .line 1701
    :cond_47
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v8, v2, v7, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1704
    :goto_4d
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_50
    :goto_50
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 1707
    :cond_53
    monitor-exit v1

    return-object v5

    .line 1708
    :goto_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_45

    throw p0
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 1955
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 1957
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1958
    :try_start_8
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v2

    .line 1960
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1962
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1963
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_1a
    if-ge p2, v3, :cond_38

    .line 1966
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_33

    .line 1968
    :try_start_22
    invoke-direct {p0, v5, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_35
    .catchall {:try_start_22 .. :try_end_25} :catchall_33

    .line 1974
    :try_start_25
    invoke-direct {p0, p1, v5}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 1977
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v7, v1, v6, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    .line 1979
    invoke-static {v4, v5}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    goto :goto_35

    :catchall_33
    move-exception p0

    goto :goto_3a

    :catch_35
    :goto_35
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1982
    :cond_38
    monitor-exit v0

    return-object v4

    .line 1983
    :goto_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_33

    throw p0
.end method

.method private getAllowlistedDeviceConfigNamespaces()Ljava/util/Set;
    .registers 10

    .line 2705
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    monitor-enter v0

    .line 2706
    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2707
    monitor-exit v0

    return-object v0

    :catchall_b
    move-exception p0

    goto/16 :goto_c3

    .line 2709
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->deviceConfigWritableNamespacesApi()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2710
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableNamespaces()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 2712
    :cond_1c
    sget-object v1, Lcom/android/providers/settings/WritableNamespaces;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2714
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_b

    .line 2718
    :try_start_25
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getAllApexDirectories()Ljava/util/List;

    move-result-object p0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_b0
    .catchall {:try_start_25 .. :try_end_2b} :catchall_83

    const/4 v3, 0x0

    .line 2723
    :goto_2c
    :try_start_2c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a9

    .line 2724
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2725
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "etc"

    const-string v6, "writable_namespaces"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2727
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_83

    if-eqz v5, :cond_a6

    .line 2728
    :try_start_55
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_85
    .catchall {:try_start_55 .. :try_end_5f} :catchall_83

    .line 2731
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 2732
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2734
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 2735
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_7d

    goto :goto_5f

    :catchall_7d
    move-exception v6

    goto :goto_87

    .line 2738
    :cond_7f
    :try_start_7f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_85
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_a6

    :catchall_83
    move-exception p0

    goto :goto_bf

    :catch_85
    move-exception v5

    goto :goto_90

    .line 2728
    :goto_87
    :try_start_87
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v5

    :try_start_8c
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8f
    throw v6
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_85
    .catchall {:try_start_8c .. :try_end_90} :catchall_83

    .line 2739
    :goto_90
    :try_start_90
    const-string v6, "SettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caught an exception parsing file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_90 .. :try_end_a6} :catchall_83

    :cond_a6
    :goto_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 2745
    :cond_a9
    :try_start_a9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2747
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_a9 .. :try_end_af} :catchall_b

    return-object p0

    :catch_b0
    move-exception p0

    .line 2720
    :try_start_b1
    const-string v3, "SettingsProvider"

    const-string v4, "Caught a RemoteException obtaining APEX directories: "

    invoke-static {v3, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_83

    .line 2745
    :try_start_ba
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :goto_bf
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2746
    throw p0

    .line 2748
    :goto_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_b

    throw p0
.end method

.method private getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 894
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_3
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 896
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 897
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 901
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catchall_1a
    move-exception p0

    .line 896
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private getCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 876
    const-string p0, "ringtone"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 877
    const-string p0, "ringtone_cache"

    return-object p0

    .line 878
    :cond_b
    const-string p0, "notification_sound"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 879
    const-string p0, "notification_sound_cache"

    return-object p0

    .line 880
    :cond_16
    const-string p0, "alarm_alert"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 881
    const-string p0, "alarm_alert_cache"

    return-object p0

    .line 885
    :cond_21
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStub;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 2509
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2511
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2512
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 2511
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

    .line 2516
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

    .line 1644
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1646
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x40

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    .line 1649
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

    .line 2524
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2525
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2524
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz p0, :cond_f

    return-object p0

    .line 2532
    :catch_f
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling package doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1226
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1227
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

    .line 1229
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private static getFlagNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2651
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    .line 2654
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 1522
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1525
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1526
    :try_start_b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1528
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method private getGroupParent(I)I
    .registers 4

    if-nez p1, :cond_3

    return p1

    .line 2542
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2545
    :try_start_7
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 2546
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 2548
    :cond_14
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2549
    throw p0
.end method

.method private static getInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2383
    sget-object p0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2385
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

    .line 2384
    :cond_22
    sget-object p0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2382
    :cond_25
    sget-object p0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2393
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2394
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

    .line 2392
    :cond_22
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2391
    :cond_25
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .registers 3

    .line 2905
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p0, :cond_d

    .line 2906
    const-string v1, "_user"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    return v0
.end method

.method private static getResetModeEnforcingPermission(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    .line 2960
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

    .line 2977
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_5a

    .line 2978
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to trusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2987
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

    .line 2970
    :cond_3c
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_5a

    .line 2971
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset untrusted changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2963
    :cond_4b
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_5a

    .line 2964
    :cond_52
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to untrusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    :goto_5a
    return p0
.end method

.method private static getRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;
    .registers 7

    .line 1207
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1208
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1209
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1210
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v1

    .line 1211
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

    .line 1212
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1214
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object v1
.end method

.method private getRingtoneCacheDir(I)Ljava/io/File;
    .registers 3

    .line 928
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "ringtones"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 930
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1717
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 1720
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1723
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result p2

    .line 1725
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1728
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    .line 1731
    const-string p2, "bluetooth_name"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2c

    .line 1732
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getEmptyBluetoothNameSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object v0

    .line 1733
    :cond_2d
    const-string p2, "android_id"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    if-eqz p0, :cond_3c

    .line 1734
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getAndroidIdDefaultSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3c
    return-object v0

    :cond_3d
    if-eqz p0, :cond_44

    .line 1737
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getNullSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_44
    return-object v0

    .line 1742
    :cond_45
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1743
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1744
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1745
    :try_start_52
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_58
    move-exception p0

    .line 1746
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_58

    throw p0

    .line 1750
    :cond_5b
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1751
    :try_start_5e
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_66
    move-exception p0

    .line 1753
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_66

    throw p0
.end method

.method private static getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 2

    if-eqz p0, :cond_b

    .line 2937
    const-string v0, "_flags"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0

    .line 2938
    :cond_b
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method private static getSettingMakeDefault(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 2942
    const-string v0, "_make_default"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static getSettingOverrideableByRestore(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 2946
    const-string v0, "_overrideable_by_restore"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2933
    const-string v0, "_prefix"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2929
    const-string v0, "_tag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    .line 2925
    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSettingsNamesLocked(II)Ljava/util/List;
    .registers 3

    .line 2402
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 12

    .line 1765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1764
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1772
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x3

    invoke-virtual {v0, v7, p2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    .line 1776
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1778
    :try_start_1b
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5, p2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_82
    .catchall {:try_start_1b .. :try_end_23} :catchall_7f

    .line 1784
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1787
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v3, v7, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v3

    if-eqz v1, :cond_5f

    if-eqz v0, :cond_3f

    .line 1792
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1793
    invoke-direct {p0, v3, v0}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 v5, 0x1

    .line 1796
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1801
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p1, v7, p2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1803
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1799
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to update instant app android id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5f
    move-object v1, v3

    if-eqz v0, :cond_74

    .line 1807
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v2

    if-nez v2, :cond_74

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6f

    goto :goto_74

    .line 1812
    :cond_6f
    invoke-direct {p0, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1808
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->generateSsaidLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1809
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :catchall_7f
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :catch_82
    move-exception v0

    move-object p0, v0

    .line 1781
    :try_start_84
    const-string p1, "SettingsProvider"

    const-string p2, "Failed to get Instant App Android ID"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_7f

    .line 1784
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1785
    throw p0
.end method

.method private static getSyncDisabledMode(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    .line 2951
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

    .line 2956
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

    .line 1281
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1286
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw p0
.end method

.method private getSyncDisabledModeConfigLocked()I
    .registers 5

    .line 1327
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 1332
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    .line 1334
    :try_start_a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    .line 1337
    :cond_17
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    if-nez v1, :cond_27

    .line 1340
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    .line 1347
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :catchall_25
    move-exception v1

    goto :goto_33

    .line 1343
    :cond_27
    :try_start_27
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_25

    xor-int/lit8 v1, v1, 0x1

    .line 1347
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :goto_33
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1348
    throw v1
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1992
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 1995
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1998
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 2001
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2002
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 2003
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 2997
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 2998
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2999
    invoke-static {p0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    .line 3002
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

    .line 3004
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

    .line 2220
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

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

    .line 1237
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

    .line 1550
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
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

    .line 1845
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
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

    .line 2013
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private static isCallerSystemOrShellOrRootOnDebuggableBuild()Z
    .registers 2

    .line 2991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    .line 2992
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_19

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    return v0

    :cond_19
    :goto_19
    const/4 v0, 0x1

    return v0
.end method

.method private static isKeyValid(Ljava/lang/String;)Z
    .registers 2

    .line 3063
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->isBinary(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private isNewSsaidSetting(Ljava/lang/String;)Z
    .registers 2

    .line 1757
    const-string p0, "android_id"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1758
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isSecureSettingAccessible(Ljava/lang/String;)Z
    .registers 11

    .line 2236
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/16 v0, 0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ac

    goto :goto_30

    :sswitch_10
    const-string v4, "bluetooth_address"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_30

    :cond_19
    const/4 v3, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v4, "android_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_30

    :cond_24
    move v3, v2

    goto :goto_30

    :sswitch_26
    const-string v4, "bluetooth_name"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_30

    :cond_2f
    move v3, v1

    :goto_30
    packed-switch v3, :pswitch_data_ba

    return v2

    .line 2245
    :pswitch_34
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_41

    return v2

    :cond_41
    return v1

    .line 2260
    :pswitch_42
    sget-boolean p1, Landroid/os/Build;->IS_MIUI:Z

    if-eqz p1, :cond_7d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-lt p1, v0, :cond_7d

    .line 2263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2262
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2263
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 2264
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    .line 2265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "SettingsProvider#isSecureSettingAccessible"

    const/16 v4, 0x2735

    .line 2264
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7c

    goto :goto_7d

    :cond_7c
    return v1

    :cond_7d
    :goto_7d
    return v2

    .line 2249
    :pswitch_7e
    sget-boolean p1, Landroid/os/Build;->IS_MIUI:Z

    if-nez p1, :cond_83

    return v2

    .line 2253
    :cond_83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2252
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    if-lt p1, v0, :cond_ab

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2256
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_ab

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2257
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result p0

    if-eqz p0, :cond_aa

    goto :goto_ab

    :cond_aa
    return v1

    :cond_ab
    :goto_ab
    return v2

    :sswitch_data_ac
    .sparse-switch
        0xd67ed7c -> :sswitch_26
        0x2b17f0eb -> :sswitch_1b
        0x66237763 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_42
        :pswitch_34
    .end packed-switch
.end method

.method private isSettingPreDefined(Ljava/lang/String;I)Z
    .registers 3

    if-nez p2, :cond_9

    .line 2809
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x2

    if-ne p2, p0, :cond_13

    .line 2811
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1d

    .line 2813
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1d
    const/4 p1, 0x4

    if-ne p2, p1, :cond_21

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method private isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7

    .line 1574
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_15

    .line 1576
    :try_start_6
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 1577
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/UserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_10
    move-exception p0

    .line 1579
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1580
    throw p0

    :cond_15
    const/4 p0, 0x0

    .line 1579
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2913
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    .line 2917
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
    if-eqz p1, :cond_1c

    .line 2921
    const-string p0, "_track_generation"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method private isValidMediaUri(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 2162
    const-string v0, " URI: "

    const-string v1, "SettingsProvider"

    if-eqz p2, :cond_da

    .line 2163
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2165
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2164
    const-string v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    return v3

    .line 2177
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_20} :catch_bf

    if-eqz v2, :cond_27

    .line 2183
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v3

    :goto_28
    if-eqz v2, :cond_43

    .line 2186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2188
    :try_start_2e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_3e

    .line 2190
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4f

    :catchall_3e
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2191
    throw p0

    .line 2193
    :cond_43
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 2198
    :goto_4f
    const-string v2, "mutateSystemSetting for setting: "

    if-nez p0, :cond_71

    .line 2199
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

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2204
    :cond_71
    const-string v4, "audio/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "application/ogg"

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "application/x-flac"

    .line 2205
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "video/"

    .line 2207
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "application/mp4"

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    .line 2208
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

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2179
    :catch_bf
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidMediaUri: cannot get calling app info for setting: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_da
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    .line 446
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 447
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startWatchingUserRestrictionChanges()V

    return-void
.end method

.method private mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    if-eqz p2, :cond_b

    .line 1821
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$4;-><init>(Lcom/android/providers/settings/SettingsProvider;Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z
    .registers 20

    move/from16 v0, p5

    .line 1369
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v3

    .line 1372
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4e

    const/4 p2, 0x2

    if-eq v0, p2, :cond_36

    const/4 p1, 0x4

    if-eq v0, p1, :cond_18

    .line 1393
    :try_start_12
    monitor-exit v12

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    .line 1387
    :cond_18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object/from16 v6, p3

    .line 1388
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 1387
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1389
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x4

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v12

    return p0

    .line 1382
    :cond_36
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1383
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    monitor-exit v12

    return p0

    .line 1375
    :cond_4e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1376
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p2

    move/from16 v6, p4

    move-object v8, v3

    move-object v3, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result p0

    monitor-exit v12

    return p0

    .line 1393
    :goto_6d
    monitor-exit v12
    :try_end_6e
    .catchall {:try_start_12 .. :try_end_6e} :catchall_15

    throw p0
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

    .line 1588
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 22

    move/from16 v1, p6

    .line 1596
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1599
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 1603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    return v4

    .line 1607
    :cond_1b
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 1610
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, v7, p1}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 1616
    iget-object v11, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v2, 0x1

    if-eq v1, v2, :cond_70

    const/4 v2, 0x2

    if-eq v1, v2, :cond_61

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4e

    const/4 v2, 0x4

    if-eq v1, v2, :cond_40

    .line 1638
    :try_start_3c
    monitor-exit v11

    return v4

    :catchall_3e
    move-exception v0

    goto :goto_85

    .line 1634
    :cond_40
    iget-object v5, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v10, p3

    move/from16 v9, p8

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 1629
    :cond_4e
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 1625
    :cond_61
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 1619
    :cond_70
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 1638
    :goto_85
    monitor-exit v11
    :try_end_86
    .catchall {:try_start_3c .. :try_end_86} :catchall_3e

    throw v0

    .line 1611
    :cond_87
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can not modify settings for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

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

    .line 1886
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 24

    move/from16 v0, p6

    .line 1894
    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1897
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v1

    .line 1901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v7, p2

    invoke-direct {p0, p1, v1, v7, v2}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    return v3

    .line 1906
    :cond_1d
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v1, :cond_24

    return v3

    .line 1913
    :cond_24
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    .line 1916
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v10, p1}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1922
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_79

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_58

    const/4 p1, 0x4

    if-eq v0, p1, :cond_4a

    .line 1944
    :try_start_45
    monitor-exit v1

    return v3

    :catchall_47
    move-exception v0

    move-object p0, v0

    goto :goto_90

    .line 1940
    :cond_4a
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x2

    move-object/from16 v9, p3

    move/from16 v8, p8

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1935
    :cond_58
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v4, 0x2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p7

    move v5, v6

    move-object v6, p1

    invoke-virtual/range {v3 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1931
    :cond_6b
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v5, 0x2

    move-object v7, p1

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1925
    :cond_79
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v12, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v4, 0x2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v11, p7

    move/from16 v13, p9

    move v5, v6

    move-object v6, p1

    invoke-virtual/range {v3 .. v13}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result p0

    monitor-exit v1

    return p0

    .line 1944
    :goto_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_45 .. :try_end_91} :catchall_47

    throw p0

    .line 1917
    :cond_92
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can not modify settings for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 2047
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z
    .registers 23

    move-object/from16 v3, p1

    move/from16 v0, p5

    .line 2053
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 2054
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_41

    .line 2057
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2058
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2057
    invoke-static {v1, v2, v7, v4, v11}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2060
    const-string p0, "SettingsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to write system settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2067
    :cond_41
    invoke-static/range {p4 .. p4}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v1

    .line 2069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object/from16 v4, p2

    invoke-direct {p0, v3, v1, v4, v2}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2070
    const-string p0, "SettingsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is disallowed to change system setting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2076
    :cond_70
    invoke-direct {p0, v0, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V

    .line 2079
    invoke-direct {p0, v1, v3}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_98

    .line 2083
    const-string p0, "SettingsProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not the owning userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 2088
    :cond_98
    invoke-direct {p0, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_a5

    .line 2090
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->isValidMediaUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    return v12

    .line 2096
    :cond_a5
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5, v7, v3}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2103
    iget-object v14, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v14

    if-eq v0, v11, :cond_110

    const/4 v1, 0x2

    if-eq v0, v1, :cond_fa

    const/4 v1, 0x3

    if-eq v0, v1, :cond_eb

    const/4 v1, 0x4

    if-eq v0, v1, :cond_dc

    .line 2127
    :try_start_c1
    const-string p0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v12

    goto :goto_124

    :catchall_d9
    move-exception v0

    move-object p0, v0

    goto :goto_12e

    .line 2122
    :cond_dc
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    move-object/from16 v5, p3

    move/from16 v2, p4

    move/from16 v4, p6

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)Z

    move-result p0

    goto :goto_124

    .line 2116
    :cond_eb
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    goto :goto_124

    .line 2112
    :cond_fa
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object/from16 p2, p0

    move-object/from16 p5, p1

    move/from16 p6, v0

    move-object/from16 p7, v1

    move/from16 p4, v2

    move/from16 p3, v3

    invoke-virtual/range {p2 .. p7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    goto :goto_124

    .line 2106
    :cond_110
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result p0

    .line 2130
    :goto_124
    monitor-exit v14
    :try_end_125
    .catchall {:try_start_c1 .. :try_end_125} :catchall_d9

    if-nez p0, :cond_128

    return v12

    :cond_128
    if-eqz v13, :cond_12d

    .line 2138
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    :cond_12d
    return v11

    .line 2130
    :goto_12e
    :try_start_12e
    monitor-exit v14
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_d9

    throw p0

    .line 2097
    :cond_130
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can not modify settings for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 3018
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object p0

    .line 3021
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 3023
    aget-object v2, p0, v1

    .line 3024
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3025
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

.method private packageNamespacesForCallResult(Ljava/util/HashSet;)Landroid/os/Bundle;
    .registers 3

    .line 2836
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 2837
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method private static packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .registers 4

    .line 3008
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3009
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 3011
    :cond_d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 3012
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0
.end method

.method private packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;
    .registers 8

    if-nez p5, :cond_19

    if-eqz p4, :cond_16

    .line 2784
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_16

    .line 2787
    :cond_b
    const-string p0, "value"

    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 2785
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p0

    .line 2789
    :cond_19
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 2790
    const-string v0, "value"

    if-eqz p4, :cond_2d

    .line 2791
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 2790
    :goto_2e
    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_3f

    .line 2794
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

    .line 2796
    :cond_45
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2797
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2796
    invoke-virtual {p0, p5, p1, p2}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_60

    .line 2800
    :cond_53
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2801
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2800
    invoke-virtual {p0, p5, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationDataForUnsetSettings(Landroid/os/Bundle;I)V

    .line 2803
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

    .line 2822
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2823
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p3, :cond_23

    .line 2825
    iget-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2827
    :try_start_f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    const/4 p3, 0x4

    const/4 v1, 0x0

    .line 2828
    invoke-static {p3, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p3

    .line 2827
    invoke-virtual {p0, v0, p3, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 2830
    monitor-exit p2

    return-object v0

    :catchall_20
    move-exception p0

    monitor-exit p2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_20

    throw p0

    :cond_23
    return-object v0
.end method

.method private registerBroadcastReceivers()V
    .registers 5

    .line 1049
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1050
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1051
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1081
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1107
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

    goto :goto_19

    .line 2868
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2869
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2870
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :goto_19
    return-void

    .line 2873
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2874
    :try_start_1d
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_3f

    .line 2875
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2876
    const-string v3, "monitor_callback_type"

    const-string v4, "access_callback"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    const-string v3, "calling_package"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    const-string v0, "namespace"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2880
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_41

    .line 2882
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

    goto :goto_15

    .line 2889
    :cond_3
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2890
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_15
    return-void

    .line 2893
    :cond_16
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2894
    :try_start_19
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_36

    .line 2895
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2896
    const-string v2, "monitor_callback_type"

    const-string v3, "namespace_updated_callback"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    const-string v2, "namespace"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 2901
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

    move v6, p1

    move-object v3, p2

    .line 1363
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

    move v5, p1

    move v8, p2

    move-object v3, p3

    .line 1568
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

    move v5, p1

    move v8, p2

    move-object v3, p3

    .line 1877
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

    move v4, p1

    move v6, p2

    move-object v3, p3

    .line 2040
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    return-void
.end method

.method private resolveCallingPackage()Ljava/lang/String;
    .registers 3

    .line 3067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    .line 3070
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3069
    :cond_f
    const-string p0, "com.android.shell"

    return-object p0

    .line 3068
    :cond_12
    const-string p0, "root"

    return-object p0
.end method

.method private static resolveCallingUserIdEnforcingPermissions(I)I
    .registers 9

    .line 2773
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_7

    return p0

    .line 2776
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2777
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "get/set setting for user"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p0

    .line 2776
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I
    .registers 4

    .line 2301
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result p0

    if-eq p0, p1, :cond_d

    .line 2302
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_23

    .line 2308
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSettings(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 2309
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

    .line 2275
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .registers 8

    .line 2282
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2283
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result v1

    if-eq v1, p1, :cond_38

    .line 2285
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2289
    :try_start_18
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2290
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2e

    if-eqz v0, :cond_30

    .line 2294
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

    .line 2295
    throw p0

    .line 2297
    :cond_38
    :goto_38
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I
    .registers 7

    .line 1247
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1248
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1250
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1251
    :try_start_12
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result v2

    if-eqz v2, :cond_38

    .line 1252
    const-string p0, "SettingsProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "did not write settings for prefix \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because sync is disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 1254
    monitor-exit v1

    return p0

    :catchall_36
    move-exception p0

    goto :goto_46

    :cond_38
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1256
    invoke-static {v2, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v2

    .line 1257
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->setConfigSettingsLocked(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    .line 1259
    monitor-exit v1

    return p0

    .line 1260
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_36

    throw p0
.end method

.method private setMonitorCallback(Landroid/os/RemoteCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2845
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2849
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2850
    :try_start_11
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2851
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

    .line 1268
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1271
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1272
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfigLocked(I)V

    .line 1273
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

    .line 1306
    :goto_f
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    .line 1308
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    if-eqz v1, :cond_1d

    .line 1310
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

    .line 1311
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

    .line 1317
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-void

    :goto_34
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1318
    throw v0

    .line 1303
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startWatchingUserRestrictionChanges()V
    .registers 2

    .line 1115
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$3;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1203
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 1045
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

    .line 1538
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

    .line 1867
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x3

    .line 2031
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2225
    sget-object p0, Landroid/provider/settings/validators/SystemSettingsValidators;->VALIDATORS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/settings/validators/Validator;

    if-eqz p0, :cond_30

    .line 2226
    invoke-interface {p0, p2}, Landroid/provider/settings/validators/Validator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_30

    .line 2227
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

    .line 2755
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SettingsProvider"

    if-eqz p0, :cond_14

    .line 2756
    const-string p0, "You shouldn\'t not change private system settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2759
    :cond_14
    const-string p0, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2763
    :cond_1a
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2764
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot change private secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2766
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot keep your settings in the secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeFallBackSettingsFiles(Ljava/util/List;)V
    .registers 8

    .line 3247
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4b

    .line 3249
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3250
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3251
    invoke-static {v3}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 3252
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fallback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3254
    :try_start_2e
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_48

    .line 3256
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

    .line 750
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    .line 752
    aget-object v3, p2, v1

    .line 753
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

    .line 456
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I

    move-result v3

    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :cond_kaorios_settings_stock
    return-object v9
    :cond_kaorios_settings_stock

    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "SettingsProvider"

    const-string v1, "result_settings_list"

    const/4 v2, 0x0

    const/4 v8, 0x0

    const-string v4, "result_rows_deleted"

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_32e

    goto/16 :goto_16c

    :sswitch_19
    const-string v6, "SET_ALL_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_16c

    :cond_23
    const/16 v5, 0x19

    goto/16 :goto_16c

    :sswitch_27
    const-string v6, "DELETE_global"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_16c

    :cond_31
    const/16 v5, 0x18

    goto/16 :goto_16c

    :sswitch_35
    const-string v6, "LIST_system"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto/16 :goto_16c

    :cond_3f
    const/16 v5, 0x17

    goto/16 :goto_16c

    :sswitch_43
    const-string v6, "LIST_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto/16 :goto_16c

    :cond_4d
    const/16 v5, 0x16

    goto/16 :goto_16c

    :sswitch_51
    const-string v6, "DELETE_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5b

    goto/16 :goto_16c

    :cond_5b
    const/16 v5, 0x15

    goto/16 :goto_16c

    :sswitch_5f
    const-string v6, "UNREGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    goto/16 :goto_16c

    :cond_69
    const/16 v5, 0x14

    goto/16 :goto_16c

    :sswitch_6d
    const-string v6, "LIST_namespaces_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_77

    goto/16 :goto_16c

    :cond_77
    const/16 v5, 0x13

    goto/16 :goto_16c

    :sswitch_7b
    const-string v6, "LIST_global"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_85

    goto/16 :goto_16c

    :cond_85
    const/16 v5, 0x12

    goto/16 :goto_16c

    :sswitch_89
    const-string v6, "LIST_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_93

    goto/16 :goto_16c

    :cond_93
    const/16 v5, 0x11

    goto/16 :goto_16c

    :sswitch_97
    const-string v6, "RESET_system"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a1

    goto/16 :goto_16c

    :cond_a1
    const/16 v5, 0x10

    goto/16 :goto_16c

    :sswitch_a5
    const-string v6, "RESET_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_af

    goto/16 :goto_16c

    :cond_af
    const/16 v5, 0xf

    goto/16 :goto_16c

    :sswitch_b3
    const-string v6, "GET_system"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bd

    goto/16 :goto_16c

    :cond_bd
    const/16 v5, 0xe

    goto/16 :goto_16c

    :sswitch_c1
    const-string v6, "GET_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cb

    goto/16 :goto_16c

    :cond_cb
    const/16 v5, 0xd

    goto/16 :goto_16c

    :sswitch_cf
    const-string v6, "RESET_global"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d9

    goto/16 :goto_16c

    :cond_d9
    const/16 v5, 0xc

    goto/16 :goto_16c

    :sswitch_dd
    const-string v6, "RESET_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    goto/16 :goto_16c

    :cond_e7
    const/16 v5, 0xb

    goto/16 :goto_16c

    :sswitch_eb
    const-string v6, "GET_global"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    goto/16 :goto_16c

    :cond_f5
    const/16 v5, 0xa

    goto/16 :goto_16c

    :sswitch_f9
    const-string v6, "GET_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_103

    goto/16 :goto_16c

    :cond_103
    const/16 v5, 0x9

    goto/16 :goto_16c

    :sswitch_107
    const-string v6, "PUT_system"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_111

    goto/16 :goto_16c

    :cond_111
    const/16 v5, 0x8

    goto/16 :goto_16c

    :sswitch_115
    const-string v6, "PUT_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11e

    goto :goto_16c

    :cond_11e
    const/4 v5, 0x7

    goto :goto_16c

    :sswitch_120
    const-string v6, "PUT_global"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_129

    goto :goto_16c

    :cond_129
    const/4 v5, 0x6

    goto :goto_16c

    :sswitch_12b
    const-string v6, "GET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_134

    goto :goto_16c

    :cond_134
    const/4 v5, 0x5

    goto :goto_16c

    :sswitch_136
    const-string v6, "PUT_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13f

    goto :goto_16c

    :cond_13f
    const/4 v5, 0x4

    goto :goto_16c

    :sswitch_141
    const-string v6, "SET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14a

    goto :goto_16c

    :cond_14a
    const/4 v5, 0x3

    goto :goto_16c

    :sswitch_14c
    const-string v6, "REGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_155

    goto :goto_16c

    :cond_155
    const/4 v5, 0x2

    goto :goto_16c

    :sswitch_157
    const-string v6, "DELETE_system"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_160

    goto :goto_16c

    :cond_160
    const/4 v5, 0x1

    goto :goto_16c

    :sswitch_162
    const-string v6, "DELETE_secure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16b

    goto :goto_16c

    :cond_16b
    move v5, v2

    :goto_16c
    packed-switch v5, :pswitch_data_398

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call() with invalid method: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30e

    .line 516
    :pswitch_185
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 517
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 518
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 519
    const-string v0, "config_set_all_return"

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    .line 519
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3

    .line 560
    :pswitch_19c
    invoke-direct {p0, p2, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 561
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 562
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 609
    :pswitch_1a9
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 611
    invoke-direct {p0, v3, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 610
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 603
    :pswitch_1ba
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 605
    invoke-direct {p0, v3, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 604
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 554
    :pswitch_1cb
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->deleteConfigSetting(Ljava/lang/String;)Z

    move-result p0

    .line 555
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 556
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 594
    :pswitch_1d8
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->clearMonitorCallback()V

    goto/16 :goto_30e

    .line 585
    :pswitch_1dd
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlagNamespaces()Ljava/util/HashSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->packageNamespacesForCallResult(Ljava/util/HashSet;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 597
    :pswitch_1e6
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 599
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 598
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 578
    :pswitch_1f7
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 579
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 580
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p3

    .line 579
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 581
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigAccess(Ljava/lang/String;)V

    return-object p2

    .line 549
    :pswitch_20b
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 550
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 551
    invoke-direct {p0, v3, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSystemSetting(IILjava/lang/String;)V

    goto/16 :goto_30e

    .line 544
    :pswitch_218
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 545
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 546
    invoke-direct {p0, v3, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSecureSetting(IILjava/lang/String;)V

    goto/16 :goto_30e

    .line 478
    :pswitch_225
    invoke-direct {p0, p2, v3}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x1

    .line 480
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v5

    move-object v0, p0

    move-object v2, p2

    .line 479
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_235
    move-object v0, p0

    move-object v2, p2

    .line 469
    invoke-direct {v0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x2

    .line 474
    invoke-direct {v0, p3, v2}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 471
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_245
    move-object v0, p0

    .line 539
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p0

    .line 540
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-direct {v0, v3, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->resetGlobalSetting(IILjava/lang/String;)V

    goto/16 :goto_30e

    :pswitch_253
    move-object v0, p0

    .line 534
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p0

    .line 535
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 536
    invoke-direct {v0, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->resetConfigSetting(ILjava/lang/String;)V

    goto/16 :goto_30e

    :pswitch_261
    move-object v0, p0

    move-object v2, p2

    .line 464
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x0

    .line 466
    invoke-direct {v0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v5

    .line 465
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_271
    move-object v0, p0

    move-object v2, p2

    .line 459
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x4

    .line 461
    invoke-direct {v0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v5

    .line 460
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_281
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, p2

    .line 504
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 506
    const-string p2, "miui_dkt_mode"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a0

    const-string p2, "persist.sys.scout.miui_desktop_mode_disabled"

    .line 507
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2a0

    .line 508
    const-string p1, "miui desktop mode is explicitly disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30e

    .line 512
    :cond_2a0
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result p0

    .line 513
    invoke-direct {v0, v1, p1, v3, p0}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto/16 :goto_30e

    :pswitch_2a9
    move-object v0, p0

    move-object v1, p2

    .line 496
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    .line 497
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 499
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    .line 500
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_30e

    :pswitch_2c1
    move-object v0, p0

    move-object v2, p2

    .line 488
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    move v5, v3

    .line 489
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 491
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, p0

    .line 492
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_30e

    :pswitch_2db
    move-object v0, p0

    .line 528
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 529
    const-string p1, "config_get_sync_disabled_mode_return"

    .line 530
    invoke-direct {v0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfig()I

    move-result p2

    .line 529
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :pswitch_2eb
    move-object v0, p0

    move-object v1, p2

    .line 483
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 484
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result p1

    .line 485
    invoke-direct {v0, v1, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_30e

    :pswitch_2f9
    move-object v0, p0

    .line 524
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledMode(Landroid/os/Bundle;)I

    move-result p0

    .line 525
    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfig(I)V

    goto :goto_30e

    :pswitch_302
    move-object v0, p0

    .line 589
    const-string p0, "_monitor_callback_key"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallback;

    .line 591
    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->setMonitorCallback(Landroid/os/RemoteCallback;)V

    :goto_30e
    return-object v8

    :pswitch_30f
    move-object v0, p0

    move-object v1, p2

    .line 572
    invoke-direct {v0, v1, v3}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    .line 573
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 574
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_31e
    move-object v0, p0

    move-object v1, p2

    .line 566
    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 567
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 568
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    nop

    :sswitch_data_32e
    .sparse-switch
        -0x750f4775 -> :sswitch_162
        -0x73ee30bd -> :sswitch_157
        -0x332e6225 -> :sswitch_14c
        -0x132cde7e -> :sswitch_141
        -0x7c1916e -> :sswitch_136
        -0x2eb948a -> :sswitch_12b
        -0x118110d -> :sswitch_120
        0x12fa46c7 -> :sswitch_115
        0x141b5d7f -> :sswitch_107
        0x1d62846b -> :sswitch_f9
        0x240c04cc -> :sswitch_eb
        0x295ef852 -> :sswitch_dd
        0x300878b3 -> :sswitch_cf
        0x381e5ca0 -> :sswitch_c1
        0x393f7358 -> :sswitch_b3
        0x441ad087 -> :sswitch_a5
        0x453be73f -> :sswitch_97
        0x55988a03 -> :sswitch_89
        0x5c420a64 -> :sswitch_7b
        0x6e7d5988 -> :sswitch_6d
        0x70190474 -> :sswitch_5f
        0x7034e056 -> :sswitch_51
        0x70546238 -> :sswitch_43
        0x717578f0 -> :sswitch_35
        0x76de60b7 -> :sswitch_27
        0x7de137dd -> :sswitch_19
    .end sparse-switch

    :pswitch_data_398
    .packed-switch 0x0
        :pswitch_31e
        :pswitch_30f
        :pswitch_302
        :pswitch_2f9
        :pswitch_2eb
        :pswitch_2db
        :pswitch_2c1
        :pswitch_2a9
        :pswitch_281
        :pswitch_271
        :pswitch_261
        :pswitch_253
        :pswitch_245
        :pswitch_235
        :pswitch_225
        :pswitch_218
        :pswitch_20b
        :pswitch_1f7
        :pswitch_1e6
        :pswitch_1dd
        :pswitch_1d8
        :pswitch_1cb
        :pswitch_1ba
        :pswitch_1a9
        :pswitch_19c
        :pswitch_185
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 767
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 770
    sget-object p2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    .line 774
    :cond_11
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 778
    :cond_1a
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_84

    goto :goto_48

    :sswitch_28
    const-string v2, "system"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto :goto_48

    :cond_31
    const/4 p3, 0x2

    goto :goto_48

    :sswitch_33
    const-string v2, "secure"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 p3, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v2, "global"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto :goto_48

    :cond_47
    move p3, v1

    :goto_48
    packed-switch p3, :pswitch_data_92

    .line 792
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

    .line 788
    :pswitch_62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 789
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 784
    :pswitch_6d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 785
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 780
    :pswitch_78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 781
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    nop

    :sswitch_data_84
    .sparse-switch
        -0x4a16fc5d -> :sswitch_3e
        -0x3604a489 -> :sswitch_33
        -0x34e38dd1 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_78
        :pswitch_6d
        :pswitch_62
    .end packed-switch
.end method

.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 950
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 951
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_2e

    .line 953
    :try_start_7
    iget-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getKnownUsersLocked()Landroid/util/SparseBooleanArray;

    move-result-object p3

    .line 954
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_20

    .line 956
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

    .line 959
    :cond_20
    :try_start_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/providers/settings/GenerationRegistry;->dump(Ljava/io/PrintWriter;)V

    .line 962
    monitor-exit p1

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_34

    .line 959
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 960
    throw p0

    .line 962
    :goto_34
    monitor-exit p1
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_2e

    throw p0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 940
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 942
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 943
    :try_start_8
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0, v0}, Lcom/android/providers/settings/SettingsProtoDumpUtil;->dumpProtoLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/util/proto/ProtoOutputStream;)V

    .line 944
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 946
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_12
    move-exception p0

    .line 944
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 624
    new-instance p0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 625
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 628
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

.method injectServices(Landroid/os/UserManager;Landroid/content/pm/IPackageManager;Landroid/os/SystemConfigManager;)V
    .registers 4

    .line 3077
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 3078
    iput-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 3079
    iput-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15

    const/4 v0, 0x0

    .line 700
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 703
    sget-object v2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    return-object v3

    .line 707
    :cond_f
    const-string v2, "name"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-static {v5}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    return-object v3

    .line 712
    :cond_1c
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 714
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a6

    goto :goto_4e

    :sswitch_2e
    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_4e

    :cond_37
    const/4 p2, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_4e

    :cond_42
    const/4 p2, 0x1

    goto :goto_4e

    :sswitch_44
    const-string v2, "global"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_4e

    :cond_4d
    move p2, v0

    :goto_4e
    packed-switch p2, :pswitch_data_b4

    .line 736
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

    .line 730
    :pswitch_68
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-direct {p0, v5, v6, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 732
    sget-object p0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 724
    :pswitch_79
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .line 723
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 726
    sget-object p0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_8f
    move-object v4, p0

    .line 717
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 716
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a5

    .line 719
    sget-object p0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_a5
    return-object v3

    :sswitch_data_a6
    .sparse-switch
        -0x4a16fc5d -> :sswitch_44
        -0x3604a489 -> :sswitch_39
        -0x34e38dd1 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_79
        :pswitch_68
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 5

    .line 425
    invoke-static {}, Landroid/provider/Settings;->setInSystemServer()V

    .line 427
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 428
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 429
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 430
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/SystemConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    .line 431
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SettingsProvider"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 433
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 434
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    .line 435
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 436
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_6 .. :try_end_4d} :catchall_a4

    .line 437
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->cacheSystemPackageNamesAndSystemSignature(Landroid/content/Context;)V

    .line 438
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_57
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mmigrateAllLegacySettingsIfNeededLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 440
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

    .line 441
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsForUserLocked(I)Z

    goto :goto_66

    :catchall_7a
    move-exception p0

    goto :goto_a2

    .line 443
    :cond_7c
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$msyncSsaidTableOnStartLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 444
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_57 .. :try_end_82} :catchall_7a

    .line 445
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    const-string v0, "settings"

    new-instance v1, Lcom/android/providers/settings/SettingsService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 450
    const-string v0, "device_config"

    new-instance v1, Lcom/android/providers/settings/DeviceConfigService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/DeviceConfigService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    .line 444
    :goto_a2
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_7a

    throw p0

    :catchall_a4
    move-exception p0

    .line 436
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 839
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 840
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 841
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Access files from the settings of another user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    :cond_19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 845
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 845
    invoke-static {v2, v3, v1, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_53

    .line 848
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

    .line 851
    :cond_53
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 854
    sget-object v1, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 855
    const-string p1, "ringtone"

    goto :goto_8a

    .line 856
    :cond_62
    sget-object v1, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 857
    const-string p1, "notification_sound"

    goto :goto_8a

    .line 858
    :cond_6d
    sget-object v1, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 859
    const-string p1, "alarm_alert"

    goto :goto_8a

    .line 862
    :cond_78
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 863
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 870
    :goto_8a
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 871
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 866
    :cond_97
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Direct file access no longer supported; ringtone playback is available through android.media.Ringtone"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    move-object/from16 v4, p1
    move-object/from16 v5, p3
    move-object/from16 v6, p4

    const/4 p5, 0x0

    .line 639
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 640
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 643
    sget-object p4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 644
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3, p5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 647
    :cond_1b
    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_a2

    :goto_28
    move p5, v2

    goto :goto_49

    :sswitch_2a
    const-string p5, "system"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_33

    goto :goto_28

    :cond_33
    const/4 p5, 0x2

    goto :goto_49

    :sswitch_35
    const-string p5, "secure"

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3e

    goto :goto_28

    :cond_3e
    move p5, v1

    goto :goto_49

    :sswitch_40
    const-string v1, "global"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_49

    goto :goto_28

    :cond_49
    :goto_49
    packed-switch p5, :pswitch_data_b0

    .line 675
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

    .line 666
    :pswitch_63
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 667
    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_74

    .line 668
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 669
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 671
    :cond_74
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 657
    :pswitch_79
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 658
    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_8a

    .line 659
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 660
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 662
    :cond_8a
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 649
    :pswitch_8f
    iget-object p1, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p1, :cond_9c

    .line 650
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 651
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 653
    :cond_9c
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x4a16fc5d -> :sswitch_40
        -0x3604a489 -> :sswitch_35
        -0x34e38dd1 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_79
        :pswitch_63
    .end packed-switch
.end method

.method public scheduleWriteFallbackFilesJob()V
    .registers 11

    .line 3178
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3179
    const-string v0, "jobscheduler"

    .line 3180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_f

    goto :goto_85

    .line 3185
    :cond_f
    const-string v1, "SettingsProviderJobsNamespace"

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 3187
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 3191
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_85

    .line 3195
    :cond_20
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, 0x0

    .line 3197
    invoke-static {v3, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v3

    .line 3196
    invoke-static {v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    .line 3199
    invoke-static {v4, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v5

    .line 3198
    invoke-static {v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x2

    .line 3201
    invoke-static {v6, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v6

    .line 3200
    invoke-static {v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x3

    .line 3203
    invoke-static {v7, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v7

    .line 3202
    invoke-static {v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x4

    .line 3205
    invoke-static {v8, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v8

    .line 3204
    invoke-static {v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(I)Ljava/io/File;

    move-result-object v8

    .line 3206
    const-string v9, "global"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    const-string v3, "system"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v3, "secure"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ssaid"

    invoke-virtual {v2, v5, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v3, "config"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    invoke-static {v7}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_86

    :goto_85
    return-void

    .line 3218
    :cond_86
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/providers/settings/WriteFallbackSettingsFilesJobService;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v1, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 3220
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v1, 0x5265c00

    .line 3221
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3222
    invoke-virtual {p0, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3223
    invoke-virtual {p0, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3224
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 3218
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    .line 803
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 806
    sget-object p3, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    return v1

    .line 810
    :cond_11
    const-string p3, "name"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 811
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    return v1

    .line 814
    :cond_1e
    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 816
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const/4 p3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_96

    :goto_31
    move v1, p3

    goto :goto_52

    :sswitch_33
    const-string p4, "system"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_31

    :cond_3c
    const/4 v1, 0x2

    goto :goto_52

    :sswitch_3e
    const-string p4, "secure"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto :goto_31

    :cond_47
    const/4 v1, 0x1

    goto :goto_52

    :sswitch_49
    const-string p4, "global"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    goto :goto_31

    :cond_52
    :goto_52
    packed-switch v1, :pswitch_data_a4

    .line 832
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

    .line 828
    :pswitch_6c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 829
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, v4, p1}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 823
    :pswitch_77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 824
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    :pswitch_86
    move-object v2, p0

    .line 818
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 819
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x4a16fc5d -> :sswitch_49
        -0x3604a489 -> :sswitch_3e
        -0x34e38dd1 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_86
        :pswitch_77
        :pswitch_6c
    .end packed-switch
.end method
