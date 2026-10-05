.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

.field private static final CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

.field private static final ENABLE_REDACTED_VALUE_FOR_READABLE:Z

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

.field private static final sReadableGlobalSettingsWithRedactedValue:Landroid/util/ArrayMap;

.field private static final sReadableSecureSettings:Ljava/util/Set;

.field private static final sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

.field private static final sReadableSecureSettingsWithRedactedValue:Landroid/util/ArrayMap;

.field private static final sReadableSystemSettings:Ljava/util/Set;

.field private static final sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

.field private static final sReadableSystemSettingsWithRedactedValue:Landroid/util/ArrayMap;

.field private static final sSecureCloneToManagedSettings:Ljava/util/Set;

.field static final sSecureMovedToGlobalSettings:Ljava/util/Set;

.field public static final sSystemCloneFromParentOnDependency:Ljava/util/Map;

.field private static final sSystemCloneToManagedSettings:Ljava/util/Set;

.field static final sSystemMovedToGlobalSettings:Ljava/util/Set;

.field static final sSystemMovedToSecureSettings:Ljava/util/Set;


# instance fields
.field private mConfigMonitorCallback:Landroid/os/RemoteCallback;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private volatile mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

.field private mSyncConfigDisabledUntilReboot:Z

.field private volatile mSysConfigManager:Landroid/os/SystemConfigManager;

.field private volatile mUserManager:Landroid/os/UserManager;

.field private mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


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

.method static bridge synthetic -$$Nest$mgetDeviceIds(Lcom/android/providers/settings/SettingsProvider;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceIds()Ljava/util/List;

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

.method static bridge synthetic -$$Nest$mgetSecureSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

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

    .line 236
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    .line 238
    const-string v1, "favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v1, "old_favorites"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "bluetooth_devices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "bookmarks"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    const-string v1, "android_metadata"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    .line 256
    const-string v3, "is_preserved_in_restore"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 274
    invoke-static {v2, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    .line 286
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 288
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 291
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5e
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 293
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 295
    :cond_6a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_77
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    .line 297
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 299
    :cond_83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_90
    if-ge v3, v1, :cond_9c

    aget-object v4, v0, v3

    .line 301
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    .line 306
    :cond_9c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    .line 308
    const-string v1, "device_provisioned"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    .line 314
    const-string v1, "user_setup_complete"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 320
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 324
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 326
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 330
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 332
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 336
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 338
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 342
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSystemSettings:Ljava/util/Set;

    .line 344
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSystemSettings(Ljava/util/Set;)V

    .line 348
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 350
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 354
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 356
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 361
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    .line 363
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneFromParentOnValueSettings(Ljava/util/Map;)V

    .line 367
    sput-boolean v2, Lcom/android/providers/settings/SettingsProvider;->ENABLE_REDACTED_VALUE_FOR_READABLE:Z

    .line 369
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 370
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 371
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 373
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithRedactedValue:Landroid/util/ArrayMap;

    .line 376
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 380
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 381
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 382
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 384
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithRedactedValue:Landroid/util/ArrayMap;

    .line 387
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 391
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 392
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 393
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 395
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithRedactedValue:Landroid/util/ArrayMap;

    .line 398
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 413
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 215
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 402
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 3270
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v0

    .line 3272
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_57

    .line 3275
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 3277
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_5c

    goto :goto_45

    :sswitch_1a
    const-string v5, "is_preserved_in_restore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_45

    :cond_23
    const/4 v6, 0x3

    goto :goto_45

    :sswitch_25
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v6, 0x2

    goto :goto_45

    :sswitch_30
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_45

    :cond_39
    const/4 v6, 0x1

    goto :goto_45

    :sswitch_3b
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_45

    :cond_44
    move v6, v2

    :goto_45
    packed-switch v6, :pswitch_data_6e

    goto :goto_54

    .line 3288
    :pswitch_49
    aput-object p4, v1, v3

    goto :goto_54

    .line 3285
    :pswitch_4c
    aput-object p3, v1, v3

    goto :goto_54

    .line 3282
    :pswitch_4f
    aput-object p2, v1, v3

    goto :goto_54

    .line 3279
    :pswitch_52
    aput-object p1, v1, v3

    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 3293
    :cond_57
    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void

    nop

    :sswitch_data_5c
    .sparse-switch
        0x171ba -> :sswitch_3b
        0x337a8b -> :sswitch_30
        0x6ac9171 -> :sswitch_25
        0x6faae870 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
    .end packed-switch
.end method

.method private assertCallingUserDenyList(Ljava/util/Set;)V
    .registers 5

    .line 2876
    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_65

    .line 2881
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p0

    .line 2882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2884
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_6a

    if-eq p0, v2, :cond_66

    if-nez p0, :cond_18

    goto :goto_66

    .line 2892
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2895
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2897
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

    .line 2898
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_31

    .line 2899
    :cond_44
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission denial for flag \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    :cond_65
    :goto_65
    return-void

    .line 2892
    :cond_66
    :goto_66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2893
    throw p0
.end method

.method private buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 4

    .line 734
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p1, :cond_34

    .line 736
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 737
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

    .line 741
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 743
    throw p0

    :cond_34
    if-eqz p1, :cond_39

    .line 741
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_39
    return-object p0
.end method

.method private static canAccessDeviceAwareSettings(ILjava/lang/String;)Z
    .registers 4

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ne p0, v0, :cond_e

    .line 3558
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    if-eqz p0, :cond_17

    const/16 p1, 0x7d0

    if-ne p0, p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    return v1
.end method

.method private cancelUserJob(Landroid/content/Context;I)V
    .registers 4

    .line 3463
    const-string p0, "jobscheduler"

    .line 3464
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    if-nez p0, :cond_b

    return-void

    .line 3469
    :cond_b
    const-string p1, "SettingsProviderJobsNamespace"

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object p0

    .line 3473
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cancel job for userid: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " because user is removed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsProvider"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    invoke-virtual {p0, p2}, Landroid/app/job/JobScheduler;->cancel(I)V

    return-void
.end method

.method private checkReadableAnnotation(ILjava/lang/String;I)V
    .registers 5

    if-eqz p1, :cond_1c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_15

    const/4 p0, 0x2

    if-ne p1, p0, :cond_f

    .line 2683
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 2684
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 2685
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_22

    .line 2687
    :cond_f
    const-string p0, "Invalid settings type: "

    invoke-static {p0, p1}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline1;->m(Ljava/lang/String;I)V

    return-void

    .line 2678
    :cond_15
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 2679
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 2680
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_22

    .line 2673
    :cond_1c
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 2674
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 2675
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2690
    :goto_22
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 2691
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Settings key: <"

    if-eqz p0, :cond_5d

    .line 2698
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 2699
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p3, p0, :cond_43

    goto :goto_74

    .line 2701
    :cond_43
    new-instance p3, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is only readable to apps with targetSdkVersion lower than or equal to: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2692
    :cond_5d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is not readable. From S+, settings keys annotated with @hide are restricted to system_server and system apps only, unless they are annotated with @Readable."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_74
    :goto_74
    return-void
.end method

.method private clearMonitorCallback()V
    .registers 4

    .line 3087
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3091
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3092
    :try_start_f
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 3093
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

    .line 1451
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

    .line 1668
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

    .line 1987
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 2165
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private dumpForUserAndDeviceLocked(IILjava/io/PrintWriter;)V
    .registers 8

    .line 1038
    const-string v0, ")"

    if-nez p1, :cond_52

    if-nez p2, :cond_52

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONFIG SETTINGS (user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1040
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1043
    invoke-direct {p0, v1, p3}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 1044
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1045
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 1048
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GLOBAL SETTINGS (user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v1, v3, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 1052
    invoke-direct {p0, v1, p3}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 1053
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1054
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 1058
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SECURE SETTINGS (user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 1062
    invoke-direct {p0, v1, p3}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 1063
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1064
    invoke-virtual {v1, p3}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 1067
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SYSTEM SETTINGS (user "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 1071
    invoke-direct {p0, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 1072
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1073
    invoke-virtual {p2, p3}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 1077
    :cond_9e
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Landroid/provider/SettingsStub;->dumpLocked(ILjava/io/PrintWriter;)V

    return-void
.end method

.method private dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V
    .registers 9

    .line 1083
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object p0

    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getVersionLocked()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_ae

    .line 1088
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1089
    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v3

    .line 1090
    const-string v4, "_id:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    const-string v4, " name:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1092
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 1093
    const-string v2, " pkg:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    :cond_5c
    const-string v2, " value:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 1097
    const-string v2, " default:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1098
    const-string v2, " defaultSystemSet:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isDefaultFromSystem()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1100
    :cond_8a
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9c

    .line 1101
    const-string v2, " tag:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    :cond_9c
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 1106
    const-string v2, " notPreservedInRestore"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1108
    :cond_a7
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1e

    :cond_ae
    return-void
.end method

.method private enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V
    .registers 14

    .line 2790
    const-string v0, "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG"

    .line 2791
    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 2794
    :goto_d
    const-string v3, "android.permission.WRITE_DEVICE_CONFIG"

    .line 2795
    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_19

    .line 2804
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    return-void

    :cond_19
    if-eqz v0, :cond_c3

    if-eqz v0, :cond_22

    .line 2808
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getAllowlistedDeviceConfigNamespaces()Ljava/util/Set;

    move-result-object p1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 2810
    :goto_23
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 2813
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->getFlagNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2816
    const-string v6, "device_config_overrides"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 2819
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2820
    const-string v8, ":"

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v7, v9, :cond_79

    if-eq v8, v9, :cond_79

    add-int/lit8 v7, v7, 0x1

    .line 2821
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_79

    add-int/lit8 v9, v8, 0x1

    .line 2822
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_79

    .line 2823
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2826
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2829
    :cond_79
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_99

    .line 2833
    :cond_7e
    sget-object v5, Lcom/android/providers/settings/WritableNamespacePrefixes;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_84
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2834
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_84

    move v5, v2

    goto :goto_99

    :cond_98
    move v5, v1

    :goto_99
    if-nez v5, :cond_27

    .line 2841
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableFlags()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    goto :goto_27

    .line 2842
    :cond_a6
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Permission denial for flag \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'; allowlist permission granted, but must add flag to the allowlist"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2847
    :cond_bf
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->assertCallingUserDenyList(Ljava/util/Set;)V

    return-void

    .line 2849
    :cond_c3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission denial to mutate flag, must have root, WRITE_DEVICE_CONFIG, or WRITE_ALLOWLISTED_DEVICE_CONFIG"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private varargs enforceHasAtLeastOnePermission([Ljava/lang/String;)V
    .registers 6

    .line 2763
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 2764
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2769
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    .line 2770
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permission denial, must have one of: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2770
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V
    .registers 6

    .line 2488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2489
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_8d

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_8d

    if-nez v0, :cond_14

    goto/16 :goto_8d

    :cond_14
    const/4 v0, 0x1

    .line 2496
    const-string v1, "ringtone"

    if-eq p1, v0, :cond_5f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5f

    goto/16 :goto_8d

    .line 2523
    :cond_21
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    sget-object p1, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 2524
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 2525
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_57

    .line 2531
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2534
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_44

    goto :goto_8d

    .line 2540
    :cond_44
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_8d

    .line 2545
    :cond_4f
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    return-void

    .line 2526
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot delete system defined secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2499
    :cond_5f
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 2500
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    goto :goto_8d

    .line 2505
    :cond_6e
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2508
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7b

    goto :goto_8d

    .line 2514
    :cond_7b
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_86

    goto :goto_8d

    .line 2519
    :cond_86
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method private enforceSettingReadable(Ljava/lang/String;II)V
    .registers 6

    .line 2602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_e

    goto/16 :goto_e9

    .line 2605
    :cond_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2606
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_e9

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_e9

    .line 2609
    :cond_20
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2b

    .line 2611
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->checkReadableAnnotation(ILjava/lang/String;I)V

    .line 2619
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_ea

    goto :goto_83

    :sswitch_37
    const-string v0, "biometric_keyguard_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_83

    :cond_40
    const/4 v1, 0x6

    goto :goto_83

    :sswitch_42
    const-string v0, "face_keyguard_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_83

    :cond_4b
    const/4 v1, 0x5

    goto :goto_83

    :sswitch_4d
    const-string v0, "fingerprint_keyguard_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_83

    :cond_56
    const/4 v1, 0x4

    goto :goto_83

    :sswitch_58
    const-string v0, "biometric_app_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_83

    :cond_61
    const/4 v1, 0x3

    goto :goto_83

    :sswitch_63
    const-string v0, "fingerptint_app_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto :goto_83

    :cond_6c
    const/4 v1, 0x2

    goto :goto_83

    :sswitch_6e
    const-string v0, "multi_sim_data_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_83

    :cond_77
    const/4 v1, 0x1

    goto :goto_83

    :sswitch_79
    const-string v0, "face_app_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :goto_83
    packed-switch v1, :pswitch_data_108

    goto :goto_b4

    :pswitch_87
    const-wide/32 v0, 0xa4abed7

    .line 2624
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2626
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v1, "access global settings MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b4

    :pswitch_9c
    const-wide/32 v0, 0xde03deb

    .line 2638
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 2640
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "access secure settings "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    :cond_b4
    :goto_b4
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    if-nez p0, :cond_bb

    goto :goto_e9

    .line 2649
    :cond_bb
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    .line 2650
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e9

    .line 2653
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Instant App "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " trying to access unexposed setting, this will be an error in the future."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e9
    :goto_e9
    return-void

    :sswitch_data_ea
    .sparse-switch
        -0x710273bf -> :sswitch_79
        -0x6a101c1b -> :sswitch_6e
        -0x4e0437fa -> :sswitch_63
        -0x2f586de4 -> :sswitch_58
        0x262ada3 -> :sswitch_4d
        0x11bb414a -> :sswitch_42
        0x4841ac4f -> :sswitch_37
    .end sparse-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_87
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
        :pswitch_9c
    .end packed-switch
.end method

.method private getAllConfigFlagNamespaces()Ljava/util/HashSet;
    .registers 5

    const/4 v0, 0x0

    .line 1500
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 1501
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1502
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

    .line 1503
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    if-eqz v2, :cond_12

    .line 1506
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_12

    const/4 v3, 0x0

    .line 1508
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1509
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_38
    return-object v0
.end method

.method private getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12

    .line 1521
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1525
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1527
    invoke-direct {p0, v2, v3, v3}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(III)Ljava/util/List;

    move-result-object p0

    .line 1530
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1531
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1535
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState;->getAconfigDefaultValues()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_54

    if-eqz p1, :cond_3c

    .line 1539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1541
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_54

    .line 1543
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_54

    :catchall_3a
    move-exception p0

    goto :goto_96

    .line 1546
    :cond_3c
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_44
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 1547
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_44

    :cond_54
    :goto_54
    if-ge v3, v2, :cond_94

    .line 1554
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1555
    invoke-virtual {v1, v5}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v7

    if-eqz p1, :cond_68

    .line 1556
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 1558
    :cond_68
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_86

    if-eqz v8, :cond_86

    .line 1561
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_86

    add-int/lit8 v8, v8, 0x1

    .line 1563
    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1564
    invoke-virtual {v1, v5}, Lcom/android/providers/settings/SettingsState;->getAconfigFlagType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_86

    goto :goto_91

    .line 1571
    :cond_86
    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 1575
    :cond_94
    monitor-exit v0

    return-object v4

    .line 1576
    :goto_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_3 .. :try_end_97} :catchall_3a

    throw p0
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1584
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1588
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1591
    invoke-direct {p0, v2, v2, v2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(III)Ljava/util/List;

    move-result-object v3

    .line 1594
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1596
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1597
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move p1, v2

    :goto_1c
    if-ge p1, v4, :cond_5b

    .line 1601
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_56

    .line 1604
    :try_start_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1603
    invoke-direct {p0, v6, v2, v7}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2b} :catch_58
    .catchall {:try_start_24 .. :try_end_2b} :catchall_56

    .line 1610
    :try_start_2b
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    if-eqz v6, :cond_58

    .line 1611
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v7

    if-eqz v7, :cond_38

    goto :goto_58

    .line 1614
    :cond_38
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v7

    .line 1615
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1616
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 1615
    invoke-static {v5, v8, v9, v7, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :catchall_56
    move-exception p0

    goto :goto_5d

    :catch_58
    :cond_58
    :goto_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1619
    :cond_5b
    monitor-exit v0

    return-object v5

    .line 1620
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_2b .. :try_end_5e} :catchall_56

    throw p0
.end method

.method private getAllSecureSettings(II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 1772
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 1777
    const-string v0, "android_id"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v0

    .line 1779
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1781
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1782
    :try_start_12
    invoke-direct {p0, v2, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(III)Ljava/util/List;

    move-result-object v3

    .line 1785
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1787
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 1788
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p3, 0x0

    :goto_24
    if-ge p3, v4, :cond_76

    .line 1791
    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1793
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v7

    .line 1796
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v8
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_45

    if-nez v8, :cond_37

    goto :goto_73

    .line 1803
    :cond_37
    :try_start_37
    invoke-direct {p0, v6, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_73
    .catchall {:try_start_37 .. :try_end_3a} :catchall_45

    .line 1812
    :try_start_3a
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1813
    invoke-direct {p0, v0, v7}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    goto :goto_4d

    :catchall_45
    move-exception p0

    goto :goto_78

    .line 1815
    :cond_47
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v8, v2, v7, p2, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    :goto_4d
    if-eqz v6, :cond_73

    .line 1819
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v7

    if-eqz v7, :cond_56

    goto :goto_73

    .line 1823
    :cond_56
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {v6, v7}, Lcom/android/providers/settings/SettingsProvider;->getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v7

    .line 1824
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v9

    .line 1825
    invoke-virtual {v6}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    .line 1824
    invoke-static {v5, v8, v9, v7, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_73
    :cond_73
    :goto_73
    add-int/lit8 p3, p3, 0x1

    goto :goto_24

    .line 1828
    :cond_76
    monitor-exit v1

    return-object v5

    .line 1829
    :goto_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_3a .. :try_end_79} :catchall_45

    throw p0
.end method

.method private getAllSystemSettings(II[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 2089
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p1

    .line 2091
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2092
    :try_start_8
    invoke-direct {p0, v1, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(III)Ljava/util/List;

    move-result-object v2

    .line 2095
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2097
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 2098
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p3, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p3, 0x0

    :goto_1a
    if-ge p3, v3, :cond_5b

    .line 2101
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_56

    .line 2103
    :try_start_22
    invoke-direct {p0, v5, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_58
    .catchall {:try_start_22 .. :try_end_25} :catchall_56

    .line 2109
    :try_start_25
    invoke-direct {p0, p1, v5}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 2112
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v7, v1, v6, p2, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 2114
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v6

    if-eqz v6, :cond_38

    goto :goto_58

    .line 2117
    :cond_38
    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v6

    .line 2118
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2119
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 2118
    invoke-static {v4, v7, v8, v6, v5}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :catchall_56
    move-exception p0

    goto :goto_5d

    :catch_58
    :cond_58
    :goto_58
    add-int/lit8 p3, p3, 0x1

    goto :goto_1a

    .line 2122
    :cond_5b
    monitor-exit v0

    return-object v4

    .line 2123
    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_25 .. :try_end_5e} :catchall_56

    throw p0
.end method

.method private getAllowlistedDeviceConfigNamespaces()Ljava/util/Set;
    .registers 10

    .line 2915
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    monitor-enter v0

    .line 2916
    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2917
    monitor-exit v0

    return-object v0

    :catchall_b
    move-exception p0

    goto/16 :goto_c3

    .line 2919
    :cond_e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->deviceConfigWritableNamespacesApi()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2920
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableNamespaces()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_21

    .line 2922
    :cond_1c
    sget-object v1, Lcom/android/providers/settings/WritableNamespaces;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2924
    :goto_21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_b

    .line 2928
    :try_start_25
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getAllApexDirectories()Ljava/util/List;

    move-result-object p0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2b} :catch_b0
    .catchall {:try_start_25 .. :try_end_2b} :catchall_83

    const/4 v3, 0x0

    .line 2933
    :goto_2c
    :try_start_2c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a9

    .line 2934
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2935
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "etc"

    const-string v6, "writable_namespaces"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2937
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5
    :try_end_53
    .catchall {:try_start_2c .. :try_end_53} :catchall_83

    if-eqz v5, :cond_a6

    .line 2938
    :try_start_55
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5f} :catch_85
    .catchall {:try_start_55 .. :try_end_5f} :catchall_83

    .line 2941
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7f

    .line 2942
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2944
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5f

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5f

    .line 2945
    sget-object v7, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_5f .. :try_end_7c} :catchall_7d

    goto :goto_5f

    :catchall_7d
    move-exception v6

    goto :goto_87

    .line 2948
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

    .line 2938
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

    .line 2949
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

    .line 2955
    :cond_a9
    :try_start_a9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2957
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_a9 .. :try_end_af} :catchall_b

    return-object p0

    :catch_b0
    move-exception p0

    .line 2930
    :try_start_b1
    const-string v3, "SettingsProvider"

    const-string v4, "Caught a RemoteException obtaining APEX directories: "

    invoke-static {v3, v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2931
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sDeviceConfigAllowlistedNamespaces:Ljava/util/Set;
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_83

    .line 2955
    :try_start_ba
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    return-object p0

    :goto_bf
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2956
    throw p0

    .line 2958
    :goto_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_ba .. :try_end_c4} :catchall_b

    throw p0
.end method

.method private getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 4

    .line 961
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_3
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 963
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    .line 964
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 968
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :catchall_1a
    move-exception p0

    .line 963
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method private getCacheName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 940
    :cond_4
    const-string p0, "ringtone"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ringtone_cache"

    if-eqz v0, :cond_f

    return-object v1

    .line 942
    :cond_f
    const-string v0, "ringtone_id_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 944
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 945
    :cond_1c
    const-string p0, "notification_sound"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 946
    const-string p0, "notification_sound_cache"

    return-object p0

    .line 947
    :cond_27
    const-string p0, "alarm_alert"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 948
    const-string p0, "alarm_alert_cache"

    return-object p0

    .line 952
    :cond_32
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/provider/SettingsStub;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 2719
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2721
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2722
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 2721
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

    .line 2726
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to lookup info for package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 1757
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1759
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x40

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    .line 1762
    :catch_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Package "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    .line 2734
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2735
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2734
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz p0, :cond_f

    return-object p0

    .line 2742
    :catch_f
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling package doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1312
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_3
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 1317
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private getDeviceId()I
    .registers 3

    .line 3498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3499
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackageUnchecked()Ljava/lang/String;

    move-result-object v1

    .line 3498
    invoke-static {v0, v1}, Lcom/android/providers/settings/SettingsProvider;->canAccessDeviceAwareSettings(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3499
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingDeviceId()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_19

    .line 3503
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->initVirtualDeviceListener()V

    :cond_19
    return v0
.end method

.method private getDeviceIds()Ljava/util/List;
    .registers 3

    .line 3544
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3545
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3547
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz p0, :cond_3c

    .line 3549
    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/virtual/VirtualDevice;

    .line 3550
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDevice;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_3c
    return-object v0
.end method

.method private static getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_49

    .line 2578
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_49

    .line 2582
    :cond_9
    sget-boolean v0, Lcom/android/providers/settings/SettingsProvider;->ENABLE_REDACTED_VALUE_FOR_READABLE:Z

    if-nez v0, :cond_12

    .line 2583
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    if-eqz p1, :cond_44

    .line 2586
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_44

    .line 2590
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2c

    .line 2591
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2594
    :cond_2c
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3f

    .line 2595
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    return-object p1

    .line 2598
    :cond_3f
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2587
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_49
    :goto_49
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getFlagNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2861
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    .line 2864
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 1629
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1632
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1635
    :try_start_b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1637
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method private getGroupParent(I)I
    .registers 4

    if-nez p1, :cond_3

    return p1

    .line 2752
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2755
    :try_start_7
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 2756
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_14

    :catchall_12
    move-exception p0

    goto :goto_18

    .line 2758
    :cond_14
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    throw p0
.end method

.method private static getInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2554
    sget-object p0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2556
    :cond_b
    const-string v0, "Invalid settings type: "

    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline1;->m(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0

    .line 2555
    :cond_12
    sget-object p0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2553
    :cond_15
    sget-object p0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 2

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 2564
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2565
    :cond_b
    const-string v0, "Invalid settings type: "

    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline1;->m(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0

    .line 2563
    :cond_12
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2562
    :cond_15
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getRedactedSettingsMap(I)Landroid/util/ArrayMap;
    .registers 2

    if-nez p0, :cond_9

    .line 3026
    sget-boolean v0, Lcom/android/providers/settings/SettingsProvider;->ENABLE_REDACTED_VALUE_FOR_READABLE:Z

    if-eqz v0, :cond_9

    .line 3027
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithRedactedValue:Landroid/util/ArrayMap;

    return-object p0

    :cond_9
    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    .line 3028
    sget-boolean v0, Lcom/android/providers/settings/SettingsProvider;->ENABLE_REDACTED_VALUE_FOR_READABLE:Z

    if-eqz v0, :cond_13

    .line 3029
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithRedactedValue:Landroid/util/ArrayMap;

    return-object p0

    :cond_13
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d

    .line 3030
    sget-boolean p0, Lcom/android/providers/settings/SettingsProvider;->ENABLE_REDACTED_VALUE_FOR_READABLE:Z

    if-eqz p0, :cond_1d

    .line 3031
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithRedactedValue:Landroid/util/ArrayMap;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .registers 3

    .line 3137
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p0, :cond_d

    .line 3138
    const-string v1, "_user"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_d
    return v0
.end method

.method private static getResetModeEnforcingPermission(Landroid/os/Bundle;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 3192
    const-string v1, "_reset_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_b

    :cond_a
    move p0, v0

    :goto_b
    const/4 v1, 0x1

    if-eq p0, v1, :cond_4a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2c

    const/4 v1, 0x4

    if-ne p0, v1, :cond_26

    .line 3209
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_4a

    .line 3210
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to trusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3219
    :cond_26
    const-string v1, "Invalid reset mode: "

    invoke-static {v1, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline1;->m(Ljava/lang/String;I)V

    return v0

    .line 3202
    :cond_2c
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_4a

    .line 3203
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset untrusted changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3195
    :cond_3b
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_4a

    .line 3196
    :cond_42
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to untrusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    return p0
.end method

.method private static getRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;
    .registers 7

    .line 1293
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1294
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1295
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1296
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v1

    .line 1297
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

    .line 1298
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1300
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object v1
.end method

.method private getRingtoneCacheDir(I)Ljava/io/File;
    .registers 3

    .line 995
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "ringtones"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 997
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method private getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 6

    .line 1839
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 1842
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1845
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result p2

    .line 1847
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1850
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(III)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    .line 1853
    const-string p2, "bluetooth_name"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2d

    if-eqz p0, :cond_2c

    .line 1854
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getEmptyBluetoothNameSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_2c
    return-object p3

    .line 1855
    :cond_2d
    const-string p2, "android_id"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    if-eqz p0, :cond_3c

    .line 1856
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getAndroidIdDefaultSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3c
    return-object p3

    :cond_3d
    if-eqz p0, :cond_44

    .line 1859
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getNullSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_44
    return-object p3

    .line 1864
    :cond_45
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1865
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1866
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1867
    :try_start_52
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_58
    move-exception p0

    .line 1868
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_58

    throw p0

    .line 1872
    :cond_5b
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_5e
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_66
    move-exception p0

    .line 1875
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_66

    throw p0
.end method

.method private static getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 2

    if-eqz p0, :cond_b

    .line 3169
    const-string v0, "_flags"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0

    .line 3170
    :cond_b
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method private static getSettingMakeDefault(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 3174
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

    .line 3178
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

    .line 3165
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

    .line 3161
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

    .line 3157
    const-string v0, "value"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSettingsNamesLocked(III)Ljava/util/List;
    .registers 4

    .line 2573
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 12

    .line 1887
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1886
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1896
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, p2, v8, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    .line 1900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x0

    .line 1902
    :try_start_1d
    iget-object v5, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_8a
    .catchall {:try_start_1d .. :try_end_25} :catchall_87

    .line 1908
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1911
    invoke-static {v7, p2, v8}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v3

    .line 1913
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v6, v3, v4}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetOrCreateSettingsStateLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;J)Lcom/android/providers/settings/SettingsState;

    move-result-object v3

    if-nez v3, :cond_35

    return-object v1

    :cond_35
    if-eqz v5, :cond_67

    if-eqz v0, :cond_48

    .line 1922
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 1923
    invoke-direct {p0, v3, v0}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_48
    move-object v1, v3

    move-object v3, v5

    const/4 v5, 0x1

    .line 1926
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 1931
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p1, v7, p2, v8, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1933
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1929
    :cond_5f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to update instant app android id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    move-object v1, v3

    if-eqz v0, :cond_7c

    .line 1937
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_77

    goto :goto_7c

    .line 1942
    :cond_77
    invoke-direct {p0, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1938
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->generateSsaidLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1939
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :catchall_87
    move-exception v0

    move-object p0, v0

    goto :goto_97

    :catch_8a
    move-exception v0

    move-object p0, v0

    .line 1905
    :try_start_8c
    const-string p1, "SettingsProvider"

    const-string p2, "Failed to get Instant App Android ID"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_87

    .line 1908
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_97
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1909
    throw p0
.end method

.method private static getSyncDisabledMode(Landroid/os/Bundle;)I
    .registers 2

    if-eqz p0, :cond_9

    .line 3183
    const-string v0, "_disabled_mode"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    if-eqz p0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_19

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    goto :goto_19

    .line 3188
    :cond_13
    const-string v0, "Invalid sync disabled mode: "

    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline1;->m(Ljava/lang/String;I)V

    const/4 p0, 0x0

    :cond_19
    :goto_19
    return p0
.end method

.method private getSyncDisabledModeConfig()I
    .registers 3

    .line 1372
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1376
    :try_start_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1377
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw p0
.end method

.method private getSyncDisabledModeConfigLocked()I
    .registers 5

    .line 1421
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 1426
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    .line 1430
    :try_start_a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    .line 1433
    :cond_17
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    if-nez v1, :cond_27

    .line 1436
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInUserTestHarness()Z

    move-result v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    .line 1443
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :catchall_25
    move-exception v1

    goto :goto_33

    .line 1439
    :cond_27
    :try_start_27
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_25

    xor-int/lit8 v1, v1, 0x1

    .line 1443
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v1

    :goto_33
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1444
    throw v1
.end method

.method private getSystemSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 6

    .line 2133
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result p2

    .line 2136
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 2139
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 2142
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2143
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p3, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IIILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 2145
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 3229
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_23

    .line 3230
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3231
    invoke-static {p0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-object p0

    .line 3234
    :cond_1d
    const-string v0, "Bad root path: "

    invoke-static {v0, p0}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 3236
    :cond_23
    const-string v0, "Invalid URI:"

    invoke-static {v0, p0}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private hasWriteSecureSettingsPermission()Z
    .registers 2

    .line 2388
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

.method private initVirtualDeviceListener()V
    .registers 4

    .line 3509
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3511
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    if-eqz v1, :cond_b

    .line 3512
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_33

    .line 3514
    :cond_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9

    .line 3517
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/virtual/VirtualDeviceManager;

    if-nez v0, :cond_1b

    return-void

    .line 3523
    :cond_1b
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3524
    :try_start_1e
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$5;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$5;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mVirtualDeviceListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 3538
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_30

    .line 3539
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3540
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 3539
    invoke-virtual {v0, p0, v2}, Landroid/companion/virtual/VirtualDeviceManager;->registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void

    :catchall_30
    move-exception p0

    .line 3538
    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0

    .line 3514
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_9

    throw p0
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

    .line 1325
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

    .line 1659
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

    .line 1976
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

    .line 2155
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private static isCallerSystemOrShellOrRootOnDebuggableBuild()Z
    .registers 2

    .line 3223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    .line 3224
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

    .line 3297
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

    .line 1879
    const-string p0, "android_id"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1880
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

    .line 2404
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_ac

    goto :goto_2e

    :sswitch_e
    const-string v0, "bluetooth_address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_2e

    :cond_17
    const/4 v3, 0x2

    goto :goto_2e

    :sswitch_19
    const-string v0, "android_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto :goto_2e

    :cond_22
    move v3, v2

    goto :goto_2e

    :sswitch_24
    const-string v0, "bluetooth_name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v3, v1

    :goto_2e
    const/16 p1, 0x2710

    packed-switch v3, :pswitch_data_ba

    return v2

    .line 2413
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

    .line 2428
    :pswitch_42
    sget-boolean v0, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v0, :cond_7d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, p1, :cond_7d

    .line 2431
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2430
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2431
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 2432
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    .line 2433
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "SettingsProvider#isSecureSettingAccessible"

    const/16 v4, 0x2735

    .line 2432
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_7c

    goto :goto_7d

    :cond_7c
    return v1

    :cond_7d
    :goto_7d
    return v2

    .line 2417
    :pswitch_7e
    sget-boolean v0, Landroid/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_83

    return v2

    .line 2421
    :cond_83
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 2420
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2422
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-lt v0, p1, :cond_ab

    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2424
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_ab

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2425
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
        0xd67ed7c -> :sswitch_24
        0x2b17f0eb -> :sswitch_19
        0x66237763 -> :sswitch_e
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

    .line 3038
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x2

    if-ne p2, p0, :cond_13

    .line 3040
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1d

    .line 3042
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

    .line 1683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_15

    .line 1685
    :try_start_6
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 1686
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/UserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_10
    move-exception p0

    .line 1688
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1689
    throw p0

    :cond_15
    const/4 p0, 0x0

    .line 1688
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    .line 3145
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    .line 3149
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

    .line 3153
    const-string p0, "_track_generation"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method private isValidMediaUri(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 12

    .line 2308
    const-string v0, " URI: "

    const-string v1, "SettingsProvider"

    if-eqz p2, :cond_11d

    .line 2309
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2311
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2310
    const-string v3, "settings"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    return v3

    .line 2323
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_20} :catch_105

    if-eqz v2, :cond_27

    .line 2329
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v3

    .line 2331
    :goto_28
    invoke-static {p2, p3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 2335
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2336
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    if-eq v5, v4, :cond_4f

    if-nez v2, :cond_3a

    if-ne p3, v4, :cond_4f

    .line 2338
    :cond_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2340
    :try_start_3e
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p0, v7, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_4a

    .line 2342
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4f

    :catchall_4a
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    throw p0

    .line 2345
    :cond_4f
    :goto_4f
    const-string v5, "mutateSystemSetting for setting: "

    if-eqz v2, :cond_68

    .line 2346
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2348
    :try_start_57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_63

    .line 2350
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9d

    :catchall_63
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2351
    throw p0

    :cond_68
    if-eq p3, v4, :cond_95

    .line 2355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: URI userId ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") does not match calling userId ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2361
    :cond_95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    :goto_9d
    if-nez p0, :cond_ba

    .line 2367
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: failure to find mimeType (no access from this context?)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2372
    :cond_ba
    const-string p3, "audio/"

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_11d

    const-string p3, "application/ogg"

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11d

    const-string p3, "application/x-flac"

    .line 2373
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11d

    const-string p3, "video/"

    .line 2375
    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_11d

    const-string p3, "application/mp4"

    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_11d

    .line 2376
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: associated MIME type:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a recognized audio or video type"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2325
    :catch_105
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "isValidMediaUri: cannot get calling app info for setting: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_11d
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    .line 468
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 469
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startWatchingUserRestrictionChanges()V

    return-void
.end method

.method private mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    if-eqz p2, :cond_b

    .line 1951
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$4;-><init>(Lcom/android/providers/settings/SettingsProvider;Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z
    .registers 21

    move/from16 v0, p5

    .line 1465
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v9

    .line 1468
    iget-object v13, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 p1, 0x4

    if-eq v0, p1, :cond_18

    .line 1493
    :try_start_12
    monitor-exit v13

    const/4 p0, 0x0

    return p0

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto :goto_71

    .line 1486
    :cond_18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    move-object/from16 v7, p3

    .line 1487
    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1486
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1488
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    move/from16 v5, p6

    move-object v4, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    monitor-exit v13

    return p0

    .line 1480
    :cond_38
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1481
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IIILjava/lang/String;ZLjava/util/Set;)Z

    move-result p0

    monitor-exit v13

    return p0

    .line 1473
    :cond_51
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1474
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result p0

    monitor-exit v13

    return p0

    .line 1493
    :goto_71
    monitor-exit v13
    :try_end_72
    .catchall {:try_start_12 .. :try_end_72} :catchall_15

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

    .line 1697
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 23

    move/from16 v1, p6

    .line 1705
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1708
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 1712
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p1, v2, p2, v3}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    return v3

    .line 1716
    :cond_1b
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 1719
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v2, v6, v8, p1}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 1725
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_74

    const/4 v2, 0x2

    if-eq v1, v2, :cond_64

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_40

    .line 1751
    :try_start_3c
    monitor-exit v12

    return v3

    :catchall_3e
    move-exception v0

    goto :goto_8b

    .line 1746
    :cond_40
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v10, p3

    move/from16 v9, p8

    invoke-virtual/range {v4 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1741
    :cond_4f
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v10, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1736
    :cond_64
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IIILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1730
    :cond_74
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v10, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p7

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1751
    :goto_8b
    monitor-exit v12
    :try_end_8c
    .catchall {:try_start_3c .. :try_end_8c} :catchall_3e

    throw v0

    .line 1720
    :cond_8d
    invoke-static {v8, p1}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return v3
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

    .line 2018
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 23

    move/from16 v1, p6

    .line 2026
    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 2029
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v2

    .line 2030
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I

    move-result v3

    .line 2034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, p1, v2, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_1f

    return v7

    .line 2039
    :cond_1f
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSetting(ILjava/lang/String;)I

    move-result v5

    if-eq v5, v2, :cond_26

    return v7

    .line 2046
    :cond_26
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 2049
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v8, p1}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2055
    iget-object v12, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4b

    .line 2078
    :try_start_47
    monitor-exit v12

    return v7

    :catchall_49
    move-exception v0

    goto :goto_93

    :cond_4b
    move v6, v3

    .line 2074
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x2

    move-object/from16 v9, p3

    move-object v7, v8

    move/from16 v8, p8

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    monitor-exit v12

    return v0

    :cond_5a
    move v2, v5

    .line 2069
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v10, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    :cond_6e
    move v2, v5

    .line 2064
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v6, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move-object v4, p1

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IIILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    :cond_7d
    move v2, v5

    .line 2058
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    sget-object v10, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const/4 v1, 0x2

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v9, p7

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 2078
    :goto_93
    monitor-exit v12
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_49

    throw v0

    .line 2050
    :cond_95
    invoke-static {v8, p1}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return v7
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

    .line 2191
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v1, p5

    .line 2198
    const-string v2, "Unknown operation code: "

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 2199
    invoke-direct {v0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v3, :cond_44

    .line 2202
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v7

    .line 2202
    invoke-static {v3, v6, v8, v7, v12}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_44

    .line 2205
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed to write system settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 2212
    :cond_44
    invoke-static/range {p4 .. p4}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissions(I)I

    move-result v3

    .line 2213
    invoke-direct {v0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I

    move-result v6

    .line 2215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {v0, v4, v3, v5, v7}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 2216
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is disallowed to change system setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 2222
    :cond_72
    invoke-direct {v0, v1, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V

    .line 2225
    invoke-direct {v0, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v3, :cond_97

    .line 2229
    const-string v0, "SettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UserId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not the owning userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 2234
    :cond_97
    invoke-direct {v0, v4, v3}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_a4

    .line 2236
    invoke-direct {v0, v4, v5, v3}, Lcom/android/providers/settings/SettingsProvider;->isValidMediaUri(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_a4

    return v13

    .line 2242
    :cond_a4
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9, v8, v4}, Landroid/provider/SettingsStub;->canMutateSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_124

    .line 2249
    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    if-eq v1, v12, :cond_102

    const/4 v3, 0x2

    if-eq v1, v3, :cond_f4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_e3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_d5

    .line 2273
    :try_start_c0
    const-string v0, "SettingsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    goto :goto_118

    :catchall_d3
    move-exception v0

    goto :goto_122

    .line 2268
    :cond_d5
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x1

    move-object/from16 v9, p3

    move v5, v7

    move-object v7, v8

    move/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IIILjava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_118

    :cond_e3
    move v3, v6

    move v2, v7

    .line 2262
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    goto :goto_118

    :cond_f4
    move v3, v6

    move v2, v7

    .line 2258
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IIILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    goto :goto_118

    :cond_102
    move v3, v6

    move v2, v7

    .line 2252
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    .line 2276
    :goto_118
    monitor-exit v15
    :try_end_119
    .catchall {:try_start_c0 .. :try_end_119} :catchall_d3

    if-nez v0, :cond_11c

    return v13

    :cond_11c
    if-eqz v14, :cond_121

    .line 2284
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    :cond_121
    return v12

    .line 2276
    :goto_122
    :try_start_122
    monitor-exit v15
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_d3

    throw v0

    .line 2243
    :cond_124
    invoke-static {v8, v4}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    return v13
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 3254
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object p0

    .line 3257
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 3259
    aget-object v2, p0, v1

    .line 3260
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3261
    :cond_16
    const-string p0, "Invalid column: "

    invoke-static {p0, v2}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    :cond_1c
    return-object p0
.end method

.method private packageNamespacesForCallResult(Ljava/util/HashSet;)Landroid/os/Bundle;
    .registers 3

    .line 3068
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 3069
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method private static packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/database/MatrixCursor;
    .registers 6

    .line 3241
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3242
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 3245
    :cond_d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 3246
    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object p1

    .line 3247
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3248
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    .line 3247
    invoke-static {v0, p2, v1, p1, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private packageValueForCallResult(ILjava/lang/String;IILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;
    .registers 9

    if-nez p6, :cond_19

    if-eqz p5, :cond_16

    .line 2997
    invoke-virtual {p5}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_16

    .line 3000
    :cond_b
    const-string p0, "value"

    invoke-virtual {p5}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 2998
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p0

    .line 3002
    :cond_19
    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    .line 3003
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getRedactedSettingsMap(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 3005
    invoke-static {p5, v0}, Lcom/android/providers/settings/SettingsProvider;->getEffectiveValue(Lcom/android/providers/settings/SettingsState$Setting;Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v0

    .line 3006
    const-string v1, "value"

    invoke-virtual {p6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p5, :cond_39

    .line 3009
    :try_start_30
    invoke-virtual {p5}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p5

    if-eqz p5, :cond_3f

    goto :goto_39

    :catchall_37
    move-exception p0

    goto :goto_5c

    :cond_39
    :goto_39
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->isSettingPreDefined(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_4d

    .line 3011
    :cond_3f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 3012
    invoke-static {p1, p3, p4}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide p3

    .line 3011
    invoke-virtual {p0, p6, p3, p4, p2}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;JLjava/lang/String;)V

    goto :goto_5a

    .line 3015
    :cond_4d
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 3016
    invoke-static {p1, p3, p4}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide p1

    .line 3015
    invoke-virtual {p0, p6, p1, p2}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationDataForUnsetSettings(Landroid/os/Bundle;J)V

    .line 3018
    :goto_5a
    monitor-exit v0

    return-object p6

    :goto_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_30 .. :try_end_5d} :catchall_37

    throw p0
.end method

.method private packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;
    .registers 7

    .line 3051
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3052
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p3, :cond_23

    .line 3054
    iget-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 3058
    :try_start_f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    const/4 p3, 0x4

    const/4 v1, 0x0

    .line 3059
    invoke-static {p3, v1, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v1

    .line 3058
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;JLjava/lang/String;)V

    .line 3062
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

    .line 1120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1121
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1160
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 1192
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

    .line 3100
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 3101
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3102
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :goto_19
    return-void

    .line 3105
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3106
    :try_start_1d
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_3f

    .line 3107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3108
    const-string v3, "monitor_callback_type"

    const-string v4, "access_callback"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    const-string v3, "calling_package"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string v0, "namespace"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_3f

    :catchall_3d
    move-exception p0

    goto :goto_41

    .line 3114
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

    .line 3121
    :cond_3
    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 3122
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_15
    return-void

    .line 3125
    :cond_16
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3126
    :try_start_19
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_36

    .line 3127
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3128
    const-string v2, "monitor_callback_type"

    const-string v3, "namespace_updated_callback"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    const-string v2, "namespace"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_36

    :catchall_34
    move-exception p0

    goto :goto_38

    .line 3133
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

    .line 1459
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

    .line 1677
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

    .line 2009
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

    .line 2184
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Z

    return-void
.end method

.method private resolveCallingPackage()Ljava/lang/String;
    .registers 3

    .line 3301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    .line 3304
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3303
    :cond_f
    const-string p0, "com.android.shell"

    return-object p0

    .line 3302
    :cond_12
    const-string p0, "root"

    return-object p0
.end method

.method private static resolveCallingUserIdEnforcingPermissions(I)I
    .registers 9

    .line 2986
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_7

    return p0

    .line 2989
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v6, "get/set setting for user"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v3, p0

    .line 2989
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I
    .registers 4

    .line 2470
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result p0

    if-eq p0, p1, :cond_d

    .line 2471
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_23

    .line 2477
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSettings(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 2478
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

    .line 2443
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .registers 8

    .line 2450
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2451
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParent(I)I

    move-result v1

    if-eq v1, p1, :cond_39

    .line 2453
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2455
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 2457
    :try_start_19
    invoke-direct {p0, v0, p1, v4}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2459
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_29
    .catchall {:try_start_19 .. :try_end_29} :catchall_2f

    if-eqz v0, :cond_31

    .line 2463
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_2f
    move-exception p0

    goto :goto_35

    :cond_31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :goto_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2464
    throw p0

    .line 2466
    :cond_39
    :goto_39
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserId(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I
    .registers 12

    .line 1335
    const-string v0, "did not write settings for prefix \'"

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1336
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 1338
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_14
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result v2

    if-eqz v2, :cond_36

    .line 1340
    const-string p0, "SettingsProvider"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' because sync is disabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    .line 1342
    monitor-exit v1

    return p0

    :catchall_33
    move-exception v0

    move-object p0, v0

    goto :goto_46

    :cond_36
    const/4 v0, 0x4

    const/4 v2, 0x0

    .line 1346
    invoke-static {v0, v2, v2}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v4

    .line 1348
    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->setConfigSettingsLocked(JLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    .line 1350
    monitor-exit v1

    return p0

    .line 1351
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_14 .. :try_end_47} :catchall_33

    throw p0
.end method

.method private setMonitorCallback(Landroid/os/RemoteCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 3077
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_11
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 3083
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

    .line 1359
    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1363
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfigLocked(I)V

    .line 1364
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
    .registers 16

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

    if-ne p1, v2, :cond_39

    move v13, v1

    move v1, v0

    move v0, v13

    .line 1397
    :goto_f
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    .line 1399
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    if-eqz v1, :cond_1d

    .line 1401
    :try_start_17
    const-string v0, "1"

    :goto_19
    move-object v6, v0

    goto :goto_20

    :catchall_1b
    move-exception v0

    goto :goto_35

    :cond_1d
    const-string v0, "0"

    goto :goto_19

    .line 1404
    :goto_20
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v5, "device_config_sync_disabled"

    const-string v9, "android"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_1b

    .line 1411
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-void

    :goto_35
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1412
    throw v0

    .line 1394
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startWatchingUserRestrictionChanges()V
    .registers 2

    .line 1200
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$3;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1289
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    return-object p0

    .line 1116
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

    .line 1647
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

    .line 1999
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x3

    .line 2174
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2393
    sget-object p0, Landroid/provider/settings/validators/SystemSettingsValidators;->VALIDATORS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/settings/validators/Validator;

    if-eqz p0, :cond_2d

    .line 2394
    invoke-interface {p0, p2}, Landroid/provider/settings/validators/Validator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_2d

    .line 2395
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for setting: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    return-void
.end method

.method private static warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V
    .registers 3

    const/16 v0, 0x16

    if-gt p0, v0, :cond_1e

    .line 2965
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_1d

    .line 2966
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SettingsProvider"

    if-eqz p0, :cond_18

    .line 2967
    const-string p0, "You shouldn\'t not change private system settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2970
    :cond_18
    const-string p0, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void

    .line 2975
    :cond_1e
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 2976
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot change private secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2978
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot keep your settings in the secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeFallBackSettingsFiles(Ljava/util/List;)V
    .registers 6

    .line 3483
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3484
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3485
    invoke-static {v1}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3486
    invoke-static {v1}, Lcom/android/providers/settings/SettingsState;->verifySettingsFileIntegrity(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3487
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".fallback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3489
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_4

    .line 3491
    :catch_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write fallback file for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4f
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 7

    .line 803
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    .line 805
    aget-object v3, p2, v1

    .line 806
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

    .line 478
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I

    move-result v3

    .line 479
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I

    move-result v4

    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :cond_kaorios_settings_stock
    return-object v9
    :cond_kaorios_settings_stock

    .line 480
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_35c

    goto/16 :goto_169

    :sswitch_16
    const-string v0, "SET_ALL_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_169

    :cond_20
    const/16 v2, 0x19

    goto/16 :goto_169

    :sswitch_24
    const-string v0, "DELETE_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_169

    :cond_2e
    const/16 v2, 0x18

    goto/16 :goto_169

    :sswitch_32
    const-string v0, "LIST_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_169

    :cond_3c
    const/16 v2, 0x17

    goto/16 :goto_169

    :sswitch_40
    const-string v0, "LIST_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_169

    :cond_4a
    const/16 v2, 0x16

    goto/16 :goto_169

    :sswitch_4e
    const-string v0, "DELETE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_169

    :cond_58
    const/16 v2, 0x15

    goto/16 :goto_169

    :sswitch_5c
    const-string v0, "UNREGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_169

    :cond_66
    const/16 v2, 0x14

    goto/16 :goto_169

    :sswitch_6a
    const-string v0, "LIST_namespaces_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_169

    :cond_74
    const/16 v2, 0x13

    goto/16 :goto_169

    :sswitch_78
    const-string v0, "LIST_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_169

    :cond_82
    const/16 v2, 0x12

    goto/16 :goto_169

    :sswitch_86
    const-string v0, "LIST_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_169

    :cond_90
    const/16 v2, 0x11

    goto/16 :goto_169

    :sswitch_94
    const-string v0, "RESET_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_169

    :cond_9e
    const/16 v2, 0x10

    goto/16 :goto_169

    :sswitch_a2
    const-string v0, "RESET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto/16 :goto_169

    :cond_ac
    const/16 v2, 0xf

    goto/16 :goto_169

    :sswitch_b0
    const-string v0, "GET_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto/16 :goto_169

    :cond_ba
    const/16 v2, 0xe

    goto/16 :goto_169

    :sswitch_be
    const-string v0, "GET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto/16 :goto_169

    :cond_c8
    const/16 v2, 0xd

    goto/16 :goto_169

    :sswitch_cc
    const-string v0, "RESET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto/16 :goto_169

    :cond_d6
    const/16 v2, 0xc

    goto/16 :goto_169

    :sswitch_da
    const-string v0, "RESET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    goto/16 :goto_169

    :cond_e4
    const/16 v2, 0xb

    goto/16 :goto_169

    :sswitch_e8
    const-string v0, "GET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto/16 :goto_169

    :cond_f2
    const/16 v2, 0xa

    goto/16 :goto_169

    :sswitch_f6
    const-string v0, "GET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    goto/16 :goto_169

    :cond_100
    const/16 v2, 0x9

    goto/16 :goto_169

    :sswitch_104
    const-string v0, "PUT_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    goto/16 :goto_169

    :cond_10e
    const/16 v2, 0x8

    goto/16 :goto_169

    :sswitch_112
    const-string v0, "PUT_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    goto :goto_169

    :cond_11b
    const/4 v2, 0x7

    goto :goto_169

    :sswitch_11d
    const-string v0, "PUT_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_126

    goto :goto_169

    :cond_126
    const/4 v2, 0x6

    goto :goto_169

    :sswitch_128
    const-string v0, "GET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    goto :goto_169

    :cond_131
    const/4 v2, 0x5

    goto :goto_169

    :sswitch_133
    const-string v0, "PUT_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13c

    goto :goto_169

    :cond_13c
    const/4 v2, 0x4

    goto :goto_169

    :sswitch_13e
    const-string v0, "SET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_147

    goto :goto_169

    :cond_147
    const/4 v2, 0x3

    goto :goto_169

    :sswitch_149
    const-string v0, "REGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_152

    goto :goto_169

    :cond_152
    const/4 v2, 0x2

    goto :goto_169

    :sswitch_154
    const-string v0, "DELETE_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    goto :goto_169

    :cond_15d
    const/4 v2, 0x1

    goto :goto_169

    :sswitch_15f
    const-string v0, "DELETE_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_168

    goto :goto_169

    :cond_168
    move v2, v1

    .line 664
    :goto_169
    const-string v0, "SettingsProvider"

    const-string v5, "result_settings_list"

    const-string v6, "result_rows_deleted"

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_3c6

    const-string p0, "call() with invalid method: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33c

    .line 563
    :pswitch_17e
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 564
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 565
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string v0, "config_set_all_return"

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    .line 566
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3

    .line 607
    :pswitch_195
    invoke-direct {p0, p2, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 608
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 609
    invoke-virtual {p1, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 657
    :pswitch_1a2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 659
    invoke-direct {p0, v3, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 658
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 650
    :pswitch_1b3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 652
    invoke-direct {p0, v3, v1, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 651
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 601
    :pswitch_1c4
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->deleteConfigSetting(Ljava/lang/String;)Z

    move-result p0

    .line 602
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 603
    invoke-virtual {p1, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 641
    :pswitch_1d1
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->clearMonitorCallback()V

    goto/16 :goto_33c

    .line 632
    :pswitch_1d6
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlagNamespaces()Ljava/util/HashSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->packageNamespacesForCallResult(Ljava/util/HashSet;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 644
    :pswitch_1df
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 646
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 645
    invoke-virtual {p1, v5, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 625
    :pswitch_1f0
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 627
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p3

    .line 626
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 628
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigAccess(Ljava/lang/String;)V

    return-object p2

    .line 596
    :pswitch_204
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 597
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 598
    invoke-direct {p0, v3, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSystemSetting(IILjava/lang/String;)V

    goto/16 :goto_33c

    .line 591
    :pswitch_211
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 592
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 593
    invoke-direct {p0, v3, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSecureSetting(IILjava/lang/String;)V

    goto/16 :goto_33c

    .line 519
    :pswitch_21e
    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    if-eqz v4, :cond_230

    if-eqz p1, :cond_22c

    .line 523
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_230

    .line 524
    :cond_22c
    invoke-direct {p0, p2, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    :cond_230
    move-object v5, p1

    const/4 v1, 0x1

    .line 527
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v6

    move-object v0, p0

    move-object v2, p2

    .line 526
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;IILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_23d
    move-object v0, p0

    move-object v2, p2

    .line 505
    invoke-direct {v0, v2, v3, v4}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    if-eqz v4, :cond_251

    if-eqz p0, :cond_24d

    .line 509
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p1

    if-eqz p1, :cond_251

    .line 510
    :cond_24d
    invoke-direct {v0, v2, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    :cond_251
    move-object v5, p0

    const/4 v1, 0x2

    .line 515
    invoke-direct {v0, p3, v2}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    .line 512
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;IILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_25c
    move-object v0, p0

    .line 586
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p0

    .line 587
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-direct {v0, v3, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->resetGlobalSetting(IILjava/lang/String;)V

    goto/16 :goto_33c

    :pswitch_26a
    move-object v0, p0

    .line 581
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p0

    .line 582
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 583
    invoke-direct {v0, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->resetConfigSetting(ILjava/lang/String;)V

    goto/16 :goto_33c

    :pswitch_278
    move-object v0, p0

    move-object v2, p2

    .line 489
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    .line 493
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    if-eqz v5, :cond_288

    .line 494
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v8

    :cond_288
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 493
    invoke-virtual {p0, v2, v8, p1}, Landroid/provider/SettingsStub;->shouldSpoofDevicePosture(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_293

    return-object p0

    :cond_293
    const/4 v4, 0x0

    .line 502
    invoke-direct {v0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v6

    const/4 v1, 0x0

    .line 501
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;IILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_29e
    move-object v0, p0

    move-object v2, p2

    .line 482
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    const/4 v4, 0x0

    .line 486
    invoke-direct {v0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result v6

    const/4 v1, 0x4

    .line 485
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;IILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_2af
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    move-object v2, p2

    .line 551
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string p2, "miui_dkt_mode"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2ce

    const-string p2, "persist.sys.scout.miui_desktop_mode_disabled"

    .line 554
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2ce

    .line 555
    const-string p1, "miui desktop mode is explicitly disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33c

    .line 559
    :cond_2ce
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result p0

    .line 560
    invoke-direct {v0, v2, p1, v3, p0}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto/16 :goto_33c

    :pswitch_2d7
    move-object v0, p0

    move-object v1, p2

    .line 543
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    move v5, v3

    .line 544
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 546
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    .line 547
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_33c

    :pswitch_2ef
    move-object v0, p0

    move-object v2, p2

    .line 535
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    move v5, v3

    .line 536
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 538
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, p0

    .line 539
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_33c

    :pswitch_309
    move-object v0, p0

    .line 575
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 576
    const-string p1, "config_get_sync_disabled_mode_return"

    .line 577
    invoke-direct {v0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfig()I

    move-result p2

    .line 576
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :pswitch_319
    move-object v0, p0

    move-object v2, p2

    .line 530
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    .line 531
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result p1

    .line 532
    invoke-direct {v0, v2, p0, p1}, Lcom/android/providers/settings/SettingsProvider;->insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_33c

    :pswitch_327
    move-object v0, p0

    .line 571
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledMode(Landroid/os/Bundle;)I

    move-result p0

    .line 572
    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfig(I)V

    goto :goto_33c

    :pswitch_330
    move-object v0, p0

    .line 636
    const-string p0, "_monitor_callback_key"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallback;

    .line 638
    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->setMonitorCallback(Landroid/os/RemoteCallback;)V

    :goto_33c
    return-object v8

    :pswitch_33d
    move-object v0, p0

    move-object v2, p2

    .line 619
    invoke-direct {v0, v2, v3}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    .line 620
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 621
    invoke-virtual {p1, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_34c
    move-object v0, p0

    move-object v2, p2

    .line 613
    invoke-direct {v0, v2, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 614
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 615
    invoke-virtual {p1, v6, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    nop

    :sswitch_data_35c
    .sparse-switch
        -0x750f4775 -> :sswitch_15f
        -0x73ee30bd -> :sswitch_154
        -0x332e6225 -> :sswitch_149
        -0x132cde7e -> :sswitch_13e
        -0x7c1916e -> :sswitch_133
        -0x2eb948a -> :sswitch_128
        -0x118110d -> :sswitch_11d
        0x12fa46c7 -> :sswitch_112
        0x141b5d7f -> :sswitch_104
        0x1d62846b -> :sswitch_f6
        0x240c04cc -> :sswitch_e8
        0x295ef852 -> :sswitch_da
        0x300878b3 -> :sswitch_cc
        0x381e5ca0 -> :sswitch_be
        0x393f7358 -> :sswitch_b0
        0x441ad087 -> :sswitch_a2
        0x453be73f -> :sswitch_94
        0x55988a03 -> :sswitch_86
        0x5c420a64 -> :sswitch_78
        0x6e7d5988 -> :sswitch_6a
        0x70190474 -> :sswitch_5c
        0x7034e056 -> :sswitch_4e
        0x70546238 -> :sswitch_40
        0x717578f0 -> :sswitch_32
        0x76de60b7 -> :sswitch_24
        0x7de137dd -> :sswitch_16
    .end sparse-switch

    :pswitch_data_3c6
    .packed-switch 0x0
        :pswitch_34c
        :pswitch_33d
        :pswitch_330
        :pswitch_327
        :pswitch_319
        :pswitch_309
        :pswitch_2ef
        :pswitch_2d7
        :pswitch_2af
        :pswitch_29e
        :pswitch_278
        :pswitch_26a
        :pswitch_25c
        :pswitch_23d
        :pswitch_21e
        :pswitch_211
        :pswitch_204
        :pswitch_1f0
        :pswitch_1df
        :pswitch_1d6
        :pswitch_1d1
        :pswitch_1c4
        :pswitch_1b3
        :pswitch_1a2
        :pswitch_195
        :pswitch_17e
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 820
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 823
    sget-object p2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    .line 827
    :cond_11
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 831
    :cond_1a
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v2, -0x1

    sparse-switch p3, :sswitch_data_72

    goto :goto_48

    :sswitch_28
    const-string p3, "system"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    goto :goto_48

    :cond_31
    const/4 v2, 0x2

    goto :goto_48

    :sswitch_33
    const-string p3, "secure"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_48

    :cond_3c
    const/4 v2, 0x1

    goto :goto_48

    :sswitch_3e
    const-string p3, "global"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto :goto_48

    :cond_47
    move v2, v1

    :goto_48
    packed-switch v2, :pswitch_data_80

    .line 845
    const-string p0, "Bad Uri path:"

    invoke-static {p0, p1}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 841
    :pswitch_51
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 842
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 837
    :pswitch_5c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 838
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 833
    :pswitch_67
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 834
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    :sswitch_data_72
    .sparse-switch
        -0x4a16fc5d -> :sswitch_3e
        -0x3604a489 -> :sswitch_33
        -0x34e38dd1 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_67
        :pswitch_5c
        :pswitch_51
    .end packed-switch
.end method

.method public dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 1017
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1018
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    .line 1020
    :try_start_7
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceIds()Ljava/util/List;

    move-result-object p3

    .line 1021
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getKnownUsersLocked()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1022
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_39

    .line 1024
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1025
    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-direct {p0, v7, v6, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUserAndDeviceLocked(IILjava/io/PrintWriter;)V
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_34

    goto :goto_1c

    :catchall_34
    move-exception p0

    goto :goto_49

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1029
    :cond_39
    :try_start_39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/providers/settings/GenerationRegistry;->dump(Ljava/io/PrintWriter;)V

    .line 1032
    monitor-exit p1

    return-void

    :catchall_47
    move-exception p0

    goto :goto_4d

    .line 1029
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1030
    throw p0

    .line 1032
    :goto_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_47

    throw p0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 4

    .line 1007
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1009
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1010
    :try_start_8
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceIds()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/providers/settings/SettingsProtoDumpUtil;->dumpProtoLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/util/proto/ProtoOutputStream;Ljava/util/List;)V

    .line 1011
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 1013
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_16
    move-exception p0

    .line 1011
    :try_start_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 673
    new-instance p0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 674
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 677
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    if-eqz p1, :cond_20

    .line 675
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "vnd.android.cursor.dir/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "vnd.android.cursor.item/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method injectServices(Landroid/os/UserManager;Landroid/content/pm/IPackageManager;Landroid/os/SystemConfigManager;)V
    .registers 4

    .line 3311
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 3312
    iput-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 3313
    iput-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 14

    .line 753
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 756
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    .line 760
    :cond_e
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 761
    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v2

    .line 765
    :cond_1b
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 767
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, 0x0

    const/4 v3, -0x1

    sparse-switch p2, :sswitch_data_96

    goto :goto_4e

    :sswitch_2e
    const-string p2, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v3, 0x2

    goto :goto_4e

    :sswitch_39
    const-string p2, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    goto :goto_4e

    :cond_42
    const/4 v3, 0x1

    goto :goto_4e

    :sswitch_44
    const-string p2, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v3, v1

    :goto_4e
    packed-switch v3, :pswitch_data_a4

    .line 789
    const-string p0, "Bad Uri path:"

    invoke-static {p0, p1}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    .line 783
    :pswitch_57
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-direct {p0, v4, v5, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_94

    .line 785
    sget-object p0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 777
    :pswitch_68
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    .line 776
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_94

    .line 779
    sget-object p0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_7e
    move-object v3, p0

    .line 770
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 769
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_94

    .line 772
    sget-object p0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_94
    return-object v2

    nop

    :sswitch_data_96
    .sparse-switch
        -0x4a16fc5d -> :sswitch_44
        -0x3604a489 -> :sswitch_39
        -0x34e38dd1 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_68
        :pswitch_57
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 7

    .line 444
    invoke-static {}, Landroid/provider/Settings;->setInSystemServer()V

    .line 447
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 448
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 449
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 450
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/SystemConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    .line 451
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SettingsProvider"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 453
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 454
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 455
    new-instance v2, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 456
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_6 .. :try_end_4b} :catchall_a1

    .line 457
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->cacheSystemPackageNamesAndSystemSignature(Landroid/content/Context;)V

    .line 458
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_55
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mmigrateAllLegacySettingsIfNeededLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 460
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 462
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->ensureSettingsForUserAndDeviceLocked(II)Z

    goto :goto_64

    :catchall_79
    move-exception p0

    goto :goto_9f

    .line 465
    :cond_7b
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$msyncSsaidTableOnStartLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 466
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_55 .. :try_end_81} :catchall_79

    .line 467
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 471
    const-string v0, "settings"

    new-instance v1, Lcom/android/providers/settings/SettingsService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 472
    const-string v0, "device_config"

    new-instance v1, Lcom/android/providers/settings/DeviceConfigService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/DeviceConfigService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    .line 466
    :goto_9f
    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_79

    throw p0

    :catchall_a1
    move-exception p0

    .line 456
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 9

    .line 892
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 893
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 894
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Access files from the settings of another user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 898
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_50

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 899
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 898
    invoke-static {v2, v4, v1, v5, v3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_50

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to modify system settings files."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_50
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 907
    sget-object v1, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "ringtone"

    if-eqz v1, :cond_60

    goto/16 :goto_d2

    :cond_60
    if-eqz p1, :cond_aa

    .line 909
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 911
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    const-string v4, "settings"

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 912
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_aa

    .line 913
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "ringtone_cache"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 916
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 917
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d2

    .line 918
    :cond_aa
    sget-object v1, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 919
    const-string v2, "notification_sound"

    goto :goto_d2

    .line 920
    :cond_b5
    sget-object v1, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 921
    const-string v2, "alarm_alert"

    goto :goto_d2

    .line 924
    :cond_c0
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 925
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 932
    :goto_d2
    invoke-direct {p0, v2, v0}, Lcom/android/providers/settings/SettingsProvider;->getCacheFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    .line 933
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 928
    :cond_df
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

    .line 688
    new-instance p5, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x1

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 689
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 692
    sget-object p4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1b

    .line 693
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 696
    :cond_1b
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getDeviceId()I

    move-result p4

    .line 697
    iget-object v2, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_9a

    :goto_2c
    move v0, v4

    goto :goto_4c

    :sswitch_2e
    const-string v0, "system"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_2c

    :cond_37
    const/4 v0, 0x2

    goto :goto_4c

    :sswitch_39
    const-string v3, "secure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_2c

    :sswitch_42
    const-string v0, "global"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_2c

    :cond_4b
    move v0, v1

    :cond_4c
    :goto_4c
    packed-switch v0, :pswitch_data_a8

    .line 728
    const-string p0, "Invalid Uri path:"

    invoke-static {p0, p1}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 718
    :pswitch_56
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 719
    iget-object p5, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p5, :cond_69

    .line 720
    invoke-direct {p0, p5, p1, p4}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 721
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {p0, p3, p1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 724
    :cond_69
    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 708
    :pswitch_6e
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 709
    iget-object p5, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p5, :cond_81

    .line 710
    invoke-direct {p0, p5, p1, p4}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;II)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 711
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {p0, p3, p1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 714
    :cond_81
    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 699
    :pswitch_86
    iget-object p1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p1, :cond_95

    .line 700
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 701
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithRedactedValue:Landroid/util/ArrayMap;

    invoke-static {p0, p3, p1}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;Landroid/util/ArrayMap;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 704
    :cond_95
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v5, v6, v7}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    :sswitch_data_9a
    .sparse-switch
        -0x4a16fc5d -> :sswitch_42
        -0x3604a489 -> :sswitch_39
        -0x34e38dd1 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_86
        :pswitch_6e
        :pswitch_56
    .end packed-switch
.end method

.method public scheduleWriteFallbackFilesJob()V
    .registers 12

    .line 3412
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3413
    const-string v0, "jobscheduler"

    .line 3414
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_f

    goto :goto_85

    .line 3419
    :cond_f
    const-string v1, "SettingsProviderJobsNamespace"

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    .line 3421
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 3425
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_85

    .line 3430
    :cond_20
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v3, 0x0

    .line 3432
    invoke-static {v3, v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v4

    .line 3431
    invoke-static {v4, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(J)Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    .line 3434
    invoke-static {v5, v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v6

    .line 3433
    invoke-static {v6, v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(J)Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x2

    .line 3436
    invoke-static {v7, v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v7

    .line 3435
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(J)Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x3

    .line 3438
    invoke-static {v8, v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v8

    .line 3437
    invoke-static {v8, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(J)Ljava/io/File;

    move-result-object v8

    const/4 v9, 0x4

    .line 3440
    invoke-static {v9, v3, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(III)J

    move-result-wide v9

    .line 3439
    invoke-static {v9, v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$smgetSettingsFile(J)Ljava/io/File;

    move-result-object v3

    .line 3441
    const-string v9, "global"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    const-string v4, "system"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    const-string v4, "secure"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    const-string v4, "ssaid"

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3445
    const-string v4, "config"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    invoke-static {v8}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_86

    :goto_85
    return-void

    .line 3453
    :cond_86
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v6, Lcom/android/providers/settings/WriteFallbackSettingsFilesJobService;

    invoke-direct {v4, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v1, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 3455
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v1, 0x5265c00

    .line 3456
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3457
    invoke-virtual {p0, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3458
    invoke-virtual {p0, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 3459
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 3453
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    .line 856
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 859
    sget-object p3, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    return v1

    .line 863
    :cond_11
    const-string p3, "name"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 864
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    return v1

    .line 867
    :cond_1e
    const-string p3, "value"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 869
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 p4, -0x1

    sparse-switch p3, :sswitch_data_84

    goto :goto_52

    :sswitch_32
    const-string p3, "system"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3b

    goto :goto_52

    :cond_3b
    const/4 p4, 0x2

    goto :goto_52

    :sswitch_3d
    const-string p3, "secure"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_46

    goto :goto_52

    :cond_46
    const/4 p4, 0x1

    goto :goto_52

    :sswitch_48
    const-string p3, "global"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_51

    goto :goto_52

    :cond_51
    move p4, v1

    :goto_52
    packed-switch p4, :pswitch_data_92

    .line 885
    const-string p0, "Invalid Uri path:"

    invoke-static {p0, p1}, Lcom/google/protobuf/MessageSchema$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 881
    :pswitch_5b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 882
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, v4, p1}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 876
    :pswitch_66
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 877
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    :pswitch_75
    move-object v2, p0

    .line 871
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 872
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    :sswitch_data_84
    .sparse-switch
        -0x4a16fc5d -> :sswitch_48
        -0x3604a489 -> :sswitch_3d
        -0x34e38dd1 -> :sswitch_32
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_75
        :pswitch_66
        :pswitch_5b
    .end packed-switch
.end method
