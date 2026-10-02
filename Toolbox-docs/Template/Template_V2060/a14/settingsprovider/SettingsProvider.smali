.class public Lcom/android/providers/settings/SettingsProvider;
.super Landroid/content/ContentProvider;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;,
        Lcom/android/providers/settings/SettingsProvider$Arguments;
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CRITICAL_SECURE_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_SQL_COLUMNS:[Ljava/lang/String;

.field private static final NULL_SETTING_BUNDLE:Landroid/os/Bundle;

.field private static final OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVED_LEGACY_TABLES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAllGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAllSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAllSystemSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGlobalMovedToSystemSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableSystemSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSecureCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSecureMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sSystemCloneFromParentOnDependency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemCloneToManagedSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToGlobalSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sSystemMovedToSecureSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigMonitorCallback:Landroid/os/RemoteCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHandlerThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private volatile mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSyncConfigDisabledUntilReboot:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mSysConfigManager:Landroid/os/SystemConfigManager;

.field private volatile mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$zbtf3IBx5cNq6AzMRhIK-HX8EQs(Lcom/android/providers/settings/SettingsProvider;)V
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

.method static bridge synthetic -$$Nest$mresolveOwningUserIdForSecureSettingLocked(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)I
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

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

    .line 214
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v1, "favorites"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "old_favorites"

    .line 217
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bluetooth_devices"

    .line 218
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bookmarks"

    .line 219
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android_metadata"

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    .line 228
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_preserved_in_restore"

    .line 234
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 252
    invoke-static {v2, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    .line 263
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 264
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 265
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 268
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5e
    if-ge v3, v1, :cond_6a

    aget-object v4, v0, v3

    .line 270
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 272
    :cond_6a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_77
    if-ge v3, v1, :cond_83

    aget-object v4, v0, v3

    .line 274
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 276
    :cond_83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_8f
    if-ge v2, v1, :cond_9b

    aget-object v3, v0, v2

    .line 278
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 283
    :cond_9b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const-string v1, "device_provisioned"

    .line 285
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const-string v1, "user_setup_complete"

    .line 291
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 297
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 301
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 303
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 307
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 309
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 313
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 315
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 319
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSystemSettings:Ljava/util/Set;

    .line 321
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSystemSettings(Ljava/util/Set;)V

    .line 325
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 327
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 331
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 333
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    .line 340
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneFromParentOnValueSettings(Ljava/util/Map;)V

    .line 343
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 344
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 345
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 348
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 352
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 353
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 354
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 357
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 361
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 362
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 363
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 366
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 193
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .registers 9

    if-eqz p1, :cond_78

    .line 2727
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_78

    .line 2730
    :cond_a
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v0

    .line 2732
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_75

    .line 2735
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 2737
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_7a

    goto :goto_4f

    :sswitch_24
    const-string v5, "is_preserved_in_restore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v6, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v6, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v6, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v6, v2

    :goto_4f
    packed-switch v6, :pswitch_data_8c

    goto :goto_72

    .line 2751
    :pswitch_53
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2747
    :pswitch_5e
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2743
    :pswitch_65
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2739
    :pswitch_6c
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2756
    :cond_75
    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_78
    :goto_78
    return-void

    nop

    :sswitch_data_7a
    .sparse-switch
        0x171ba -> :sswitch_45
        0x337a8b -> :sswitch_3a
        0x6ac9171 -> :sswitch_2f
        0x6faae870 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
        :pswitch_53
    .end packed-switch
.end method

.method private buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p1, :cond_34

    .line 677
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 678
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

    .line 682
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 684
    throw p0

    :cond_34
    if-eqz p1, :cond_39

    .line 682
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

    .line 2309
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 2310
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 2311
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2314
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

    .line 2304
    :cond_26
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 2305
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 2306
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2299
    :cond_2d
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 2300
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 2301
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2317
    :goto_33
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2318
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Settings key: <"

    if-eqz p0, :cond_71

    .line 2325
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2326
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p3, p0, :cond_54

    goto :goto_8b

    .line 2328
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

    .line 2319
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

    .line 2549
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2554
    :try_start_f
    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2555
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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1302
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z

    move-result p0

    return p0
.end method

.method private deleteGlobalSetting(Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    .line 1457
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSecureSetting(Ljava/lang/String;IZ)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    .line 1748
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1912
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private dumpForUserLocked(ILjava/io/PrintWriter;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, ")"

    if-nez p1, :cond_56

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONFIG SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 932
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 933
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 934
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 937
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

    .line 938
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v1, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 941
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 942
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 943
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 947
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

    .line 948
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 951
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 952
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 953
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 956
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

    .line 957
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 960
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 961
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 962
    invoke-virtual {v0, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 966
    :cond_a8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/provider/SettingsStub;->dumpLocked(ILjava/io/PrintWriter;)V

    return-void
.end method

.method private dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V
    .registers 8

    .line 972
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object p0

    .line 973
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

    .line 974
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_a1

    .line 977
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 978
    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v3

    const-string v4, "_id:"

    .line 979
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " name:"

    .line 980
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    const-string v2, " pkg:"

    .line 982
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5b
    const-string v2, " value:"

    .line 984
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    const-string v2, " default:"

    .line 986
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " defaultSystemSet:"

    .line 987
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isDefaultFromSystem()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 989
    :cond_89
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    const-string v2, " tag:"

    .line 990
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    :cond_9b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_a1
    return-void
.end method

.method private enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG"

    .line 2418
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_c

    move p0, v0

    goto :goto_d

    :cond_c
    move p0, v1

    :goto_d
    const-string v2, "android.permission.WRITE_DEVICE_CONFIG"

    .line 2422
    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v1

    .line 2425
    :goto_18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez v2, :cond_20

    move v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    if-nez v2, :cond_85

    if-eqz p1, :cond_26

    goto :goto_85

    :cond_26
    if-eqz p0, :cond_7d

    .line 2430
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2c
    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2432
    sget-object p2, Lcom/android/providers/settings/WritableNamespacePrefixes;->ALLOWLIST:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2433
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move p2, v0

    goto :goto_53

    :cond_52
    move p2, v1

    :goto_53
    if-nez p2, :cond_2c

    .line 2439
    invoke-static {}, Landroid/provider/DeviceConfig;->getAdbWritableFlags()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    goto :goto_2c

    .line 2440
    :cond_60
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denial for flag \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; allowlist permission granted, but must add flag to the allowlist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    return-void

    .line 2446
    :cond_7d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Permission denial to mutate flag, must have root, WRITE_DEVICE_CONFIG, or WRITE_ALLOWLISTED_DEVICE_CONFIG"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    :goto_85
    return-void
.end method

.method private varargs enforceHasAtLeastOnePermission([Ljava/lang/String;)V
    .registers 6

    .line 2390
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 2391
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    return-void

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2396
    :cond_14
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial, must have one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2397
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

    .line 2145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2146
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

    .line 2181
    :cond_1d
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    sget-object p1, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 2182
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2188
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2191
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3a

    return-void

    .line 2197
    :cond_3a
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    .line 2202
    :cond_45
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_7d

    .line 2183
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot delete system defined secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2157
    :cond_55
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    return-void

    .line 2162
    :cond_5e
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2165
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6b

    return-void

    .line 2171
    :cond_6b
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    return-void

    .line 2176
    :cond_76
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private enforceSettingReadable(Ljava/lang/String;II)V
    .registers 7

    .line 2242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_d

    return-void

    .line 2245
    :cond_d
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2246
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_81

    .line 2249
    :cond_1e
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_29

    .line 2251
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->checkReadableAnnotation(ILjava/lang/String;I)V

    .line 2259
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "multi_sim_data_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_49

    :cond_35
    const-wide/32 v0, 0xa4abed7

    .line 2264
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2266
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "access global settings MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    :cond_49
    :goto_49
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_50

    return-void

    .line 2275
    :cond_50
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 2276
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    .line 2279
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

    :cond_81
    :goto_81
    return-void
.end method

.method private getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    const-string v1, "/"

    .line 1354
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 1353
    :goto_d
    invoke-static {v1}, Landroid/provider/Settings$Config;->enforceReadPermission(Ljava/lang/String;)V

    .line 1356
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1358
    :try_start_13
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v2

    .line 1360
    invoke-direct {p0, v3, v0}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    .line 1363
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1364
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    :goto_2b
    if-ge v0, v3, :cond_51

    .line 1367
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1368
    invoke-virtual {v2, v5}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    if-eqz p1, :cond_43

    .line 1369
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 1370
    :cond_43
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 1374
    :cond_51
    monitor-exit v1

    return-object v4

    :catchall_53
    move-exception p0

    .line 1375
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_13 .. :try_end_55} :catchall_53

    throw p0
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 1383
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1385
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1388
    invoke-direct {p0, v2, v2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1393
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1394
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move p1, v2

    :goto_1c
    if-ge p1, v4, :cond_35

    .line 1398
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_37

    .line 1401
    :try_start_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1400
    invoke-direct {p0, v6, v2, v7}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2b} :catch_32
    .catchall {:try_start_24 .. :try_end_2b} :catchall_37

    .line 1406
    :try_start_2b
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1407
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1410
    :cond_35
    monitor-exit v0

    return-object v5

    :catchall_37
    move-exception p0

    .line 1411
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw p0
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1554
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    const-string v0, "android_id"

    .line 1559
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v0

    .line 1561
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1563
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1564
    :try_start_12
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1566
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1568
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1569
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_24
    if-ge p2, v4, :cond_51

    .line 1572
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1574
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v7

    .line 1577
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v8
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_53

    if-nez v8, :cond_37

    goto :goto_4e

    .line 1584
    :cond_37
    :try_start_37
    invoke-direct {p0, v6, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_4e
    .catchall {:try_start_37 .. :try_end_3a} :catchall_53

    .line 1593
    :try_start_3a
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 1594
    invoke-direct {p0, v0, v7}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    goto :goto_4b

    .line 1596
    :cond_45
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v8, v2, v7, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1599
    :goto_4b
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_4e
    :goto_4e
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 1602
    :cond_51
    monitor-exit v1

    return-object v5

    :catchall_53
    move-exception p0

    .line 1603
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_53

    throw p0
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 1845
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1847
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1848
    :try_start_8
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v2

    .line 1850
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1852
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1853
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_1a
    if-ge p2, v3, :cond_35

    .line 1856
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_37

    .line 1858
    :try_start_22
    invoke-direct {p0, v5, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_32
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    .line 1864
    :try_start_25
    invoke-direct {p0, p1, v5}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 1867
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v7, v1, v6, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    .line 1869
    invoke-static {v4, v5}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_32
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1872
    :cond_35
    monitor-exit v0

    return-object v4

    :catchall_37
    move-exception p0

    .line 1873
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_37

    throw p0
.end method

.method private getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 2346
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2348
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-wide/16 v2, 0x0

    .line 2348
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

    .line 2353
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

    .line 1539
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1541
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x40

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    .line 1544
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

    .line 2361
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2362
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2361
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz p0, :cond_f

    return-object p0

    .line 2369
    :catch_f
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling package doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    const-string v0, "/"

    .line 1174
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/provider/Settings$Config;->enforceReadPermission(Ljava/lang/String;)V

    .line 1177
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1178
    :try_start_f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    .line 1180
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 1420
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1423
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1424
    :try_start_b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1426
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method private getGroupParentLocked(I)I
    .registers 4

    if-nez p1, :cond_3

    return p1

    .line 2379
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2382
    :try_start_7
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2383
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 2385
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2386
    throw p0
.end method

.method private getInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_25

    const/4 p0, 0x1

    if-eq p1, p0, :cond_22

    const/4 p0, 0x2

    if-ne p1, p0, :cond_b

    .line 2213
    sget-object p0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2217
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid settings type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2215
    :cond_22
    sget-object p0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2211
    :cond_25
    sget-object p0, Landroid/provider/Settings$Global;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_25

    const/4 p0, 0x1

    if-eq p1, p0, :cond_22

    const/4 p0, 0x2

    if-ne p1, p0, :cond_b

    .line 2228
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2230
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid settings type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2226
    :cond_22
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2224
    :cond_25
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .registers 3

    .line 2599
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p0, :cond_c

    const-string v1, "_user"

    .line 2600
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_c
    return v0
.end method

.method private static getResetModeEnforcingPermission(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    const-string v0, "_reset_mode"

    .line 2654
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

    .line 2671
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_1d

    return p0

    .line 2672
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to trusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2681
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

    .line 2664
    :cond_3c
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_43

    return p0

    .line 2665
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset untrusted changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2657
    :cond_4b
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_52

    return p0

    .line 2658
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1156
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1157
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1158
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1159
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v1

    .line 1160
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

    .line 1161
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1163
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object v1
.end method

.method private getRingtoneCacheDir(I)Ljava/io/File;
    .registers 3

    .line 888
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "ringtones"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 890
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1612
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1615
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1618
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 1620
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1623
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    const-string p2, "android_id"

    .line 1626
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2b

    .line 1627
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getAndroidIdDefaultSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p2

    :cond_2b
    return-object p2

    :cond_2c
    if-eqz p0, :cond_32

    .line 1630
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getNullSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p2

    :cond_32
    return-object p2

    .line 1635
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1636
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1637
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1638
    :try_start_40
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_46
    move-exception p0

    .line 1639
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw p0

    .line 1643
    :cond_49
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1644
    :try_start_4c
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_54
    move-exception p0

    .line 1646
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4c .. :try_end_56} :catchall_54

    throw p0
.end method

.method private static getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_b

    const-string v0, "_flags"

    .line 2631
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    goto :goto_f

    .line 2632
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private static getSettingMakeDefault(Landroid/os/Bundle;)Z
    .registers 2

    if-eqz p0, :cond_c

    const-string v0, "_make_default"

    .line 2636
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

    const-string v0, "_overrideable_by_restore"

    .line 2640
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

    const-string v0, "_prefix"

    .line 2627
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

    const-string v0, "_tag"

    .line 2623
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

    const-string v0, "value"

    .line 2619
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2238
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1657
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1665
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x3

    invoke-virtual {v1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 1669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1671
    :try_start_1b
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_83
    .catchall {:try_start_1b .. :try_end_23} :catchall_81

    .line 1677
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1680
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v2, v7, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v8

    if-eqz v4, :cond_62

    if-eqz v1, :cond_3f

    .line 1685
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1686
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1689
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v1, v8

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/settings/SettingsState;->insertSettingLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 1694
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1696
    invoke-direct {p0, v8, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1692
    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to update instant app android id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    if-eqz v1, :cond_76

    .line 1700
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    goto :goto_76

    .line 1705
    :cond_71
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1701
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->generateSsaidLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1702
    invoke-direct {p0, v8, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :catchall_81
    move-exception p0

    goto :goto_90

    :catch_83
    move-exception p0

    :try_start_84
    const-string p1, "SettingsProvider"

    const-string p2, "Failed to get Instant App Android ID"

    .line 1674
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_81

    .line 1677
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    :goto_90
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1678
    throw p0
.end method

.method private static getSyncDisabledMode(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    const-string v0, "_disabled_mode"

    .line 2645
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

    .line 2650
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

    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    .line 1230
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1234
    :try_start_e
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    .line 1235
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_14

    throw p0
.end method

.method private getSyncDisabledModeConfigLocked()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1276
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 1281
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    .line 1283
    :try_start_a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_2c

    if-nez v1, :cond_19

    .line 1294
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v3

    .line 1289
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v2, "0"

    .line 1290
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2c

    if-nez v1, :cond_28

    const/4 v3, 0x1

    .line 1294
    :cond_28
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v3

    :catchall_2c
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1295
    throw v1
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1882
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1885
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1888
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 1891
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1892
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 1893
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 2691
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 2692
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2693
    invoke-static {p0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    .line 2696
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

    .line 2698
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

    .line 2055
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

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 1188
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

    .line 1448
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

    .line 1738
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 1903
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method private static isCallerSystemOrShellOrRootOnDebuggableBuild()Z
    .registers 2

    .line 2685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    .line 2686
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

    .line 2760
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

    const-string p0, "android_id"

    .line 1650
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1651
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
    .registers 11

    .line 2071
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    const-string v0, "bluetooth_address"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    .line 2080
    :cond_16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.LOCAL_MAC_ADDRESS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_23

    move v1, v2

    :cond_23
    return v1

    .line 2084
    :cond_24
    sget-boolean p1, Landroid/os/Build;->IS_MIUI:Z

    if-nez p1, :cond_29

    return v2

    .line 2088
    :cond_29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2087
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2089
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_60

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2090
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_60

    .line 2091
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2735

    .line 2092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "SettingsProvider#isSecureSettingAccessible"

    .line 2091
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_61

    :cond_60
    move v1, v2

    :cond_61
    return v1
.end method

.method private isSettingPreDefined(Ljava/lang/String;I)Z
    .registers 3

    if-nez p2, :cond_9

    .line 2509
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x2

    if-ne p2, p0, :cond_13

    .line 2511
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x1

    if-ne p2, p0, :cond_1d

    .line 2513
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

    .line 1472
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_15

    .line 1474
    :try_start_6
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 1475
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/UserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_10
    move-exception p0

    .line 1477
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    throw p0

    :cond_15
    const/4 p0, 0x0

    .line 1477
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2607
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "android_id"

    .line 2611
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_10

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v1

    :cond_10
    if-eqz p1, :cond_1b

    const-string p0, "_track_generation"

    .line 2615
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

    .line 2023
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 2025
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings"

    .line 2024
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    return v1

    .line 2031
    :cond_18
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " URI: "

    const-string v2, "mutateSystemSetting for setting: "

    const-string v3, "SettingsProvider"

    if-nez p0, :cond_4a

    .line 2033
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

    :cond_4a
    const-string v4, "audio/"

    .line 2038
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/ogg"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/x-flac"

    .line 2039
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "video/"

    .line 2041
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_98

    const-string v4, "application/mp4"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 2042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignored: associated MIME type: "

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

    .line 419
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 420
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startWatchingUserRestrictionChanges()V

    return-void
.end method

.method private mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    if-eqz p2, :cond_b

    .line 1714
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

    .line 1316
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 1319
    iget-object v12, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    const/4 v2, 0x4

    if-eq v1, v2, :cond_16

    .line 1342
    :try_start_13
    monitor-exit v12

    const/4 v0, 0x0

    return v0

    .line 1336
    :cond_16
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v6, p3

    .line 1337
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1336
    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1338
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, v8

    move/from16 v4, p6

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1340
    monitor-exit v12

    return v7

    .line 1330
    :cond_36
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1331
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v12

    return v0

    .line 1322
    :cond_4e
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1323
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v12

    return v0

    :catchall_6c
    move-exception v0

    .line 1342
    monitor-exit v12
    :try_end_6e
    .catchall {:try_start_13 .. :try_end_6e} :catchall_6c

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

    .line 1486
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p6

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1494
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1497
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1501
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v0, v7, v2, v8, v3}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_21

    return v3

    .line 1505
    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 1508
    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v10, 0x1

    if-eq v1, v10, :cond_6b

    const/4 v4, 0x2

    if-eq v1, v4, :cond_5b

    const/4 v4, 0x3

    if-eq v1, v4, :cond_44

    const/4 v4, 0x4

    if-eq v1, v4, :cond_36

    .line 1533
    :try_start_34
    monitor-exit v15

    return v3

    .line 1529
    :cond_36
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    move/from16 v8, p8

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)V

    .line 1531
    monitor-exit v15

    return v10

    .line 1523
    :cond_44
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

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

    .line 1518
    :cond_5b
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    move-object/from16 v7, p1

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v15

    return v0

    .line 1511
    :cond_6b
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v13, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

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

    :catchall_84
    move-exception v0

    .line 1533
    monitor-exit v15
    :try_end_86
    .catchall {:try_start_34 .. :try_end_86} :catchall_84

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

    .line 1779
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 24

    move-object v0, p0

    move-object v3, p1

    move/from16 v1, p6

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1787
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1790
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v5, p2

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1f

    return v6

    .line 1799
    :cond_1f
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_26

    return v6

    .line 1806
    :cond_26
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    .line 1809
    iget-object v13, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6d

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_48

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3b

    .line 1834
    :try_start_39
    monitor-exit v13

    return v6

    .line 1830
    :cond_3b
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v11, p8

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)V

    .line 1832
    monitor-exit v13

    return v2

    .line 1824
    :cond_48
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

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

    .line 1819
    :cond_5e
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    move v2, v4

    move-object v3, p1

    move/from16 v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v13

    return v0

    .line 1812
    :cond_6d
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x2

    sget-object v9, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

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

    :catchall_85
    move-exception v0

    .line 1834
    monitor-exit v13
    :try_end_87
    .catchall {:try_start_39 .. :try_end_87} :catchall_85

    throw v0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1927
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .registers 19

    move-object v0, p0

    move-object v3, p1

    move/from16 v1, p4

    .line 1933
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 1934
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_41

    .line 1937
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1937
    invoke-static {v2, v6, v7, v8, v4}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v0, "SettingsProvider"

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not allowed to write system settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1947
    :cond_41
    invoke-static/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1949
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v8, p2

    invoke-direct {p0, p1, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v0, "SettingsProvider"

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UserId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is disallowed to change system setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 1956
    :cond_6f
    invoke-direct {p0, v1, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V

    .line 1959
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_97

    const-string v0, "SettingsProvider"

    .line 1963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not the owning userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_97
    const-string v2, "ringtone"

    .line 1970
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "ringtone_cache"

    goto :goto_c0

    :cond_a2
    const-string v2, "notification_sound"

    .line 1972
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const-string v2, "notification_sound_cache"

    goto :goto_c0

    :cond_ad
    const-string v2, "alarm_alert"

    .line 1974
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const-string v2, "alarm_alert_cache"

    goto :goto_c0

    .line 1979
    :cond_b8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/provider/SettingsStub;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c0
    if-eqz v2, :cond_d5

    .line 1984
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->isValidMediaUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c9

    return v5

    .line 1988
    :cond_c9
    new-instance v9, Ljava/io/File;

    .line 1989
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1990
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1994
    :cond_d5
    iget-object v11, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    if-eq v1, v4, :cond_11b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f8

    :try_start_e0
    const-string v0, "SettingsProvider"

    .line 2015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    monitor-exit v11

    return v5

    .line 2009
    :cond_f8
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v2, v6

    move-object v3, p1

    move-object v4, p2

    move v6, v9

    move v8, v10

    move-object v9, v12

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->updateSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 2004
    :cond_10e
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v11

    return v0

    .line 1997
    :cond_11b
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v0, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move v2, v6

    move-object v3, p1

    move-object v4, p2

    move v6, v9

    move v8, v10

    move-object v9, v12

    move/from16 v10, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v11

    return v0

    :catchall_133
    move-exception v0

    .line 2017
    monitor-exit v11
    :try_end_135
    .catchall {:try_start_e0 .. :try_end_135} :catchall_133

    throw v0
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 2712
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object p0

    .line 2715
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 2717
    aget-object v2, p0, v1

    .line 2718
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2719
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

    .line 2702
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2703
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 2705
    :cond_d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2706
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0
.end method

.method private packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;
    .registers 8

    if-nez p5, :cond_19

    if-eqz p4, :cond_16

    .line 2484
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_16

    :cond_b
    const-string p0, "value"

    .line 2487
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 2485
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p0

    .line 2489
    :cond_19
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "value"

    if-eqz p4, :cond_2d

    .line 2491
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 2490
    :goto_2e
    invoke-virtual {p5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_3c

    .line 2494
    :try_start_36
    invoke-virtual {p4}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p4

    if-eqz p4, :cond_42

    :cond_3c
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->isSettingPreDefined(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_50

    .line 2496
    :cond_42
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2497
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2496
    invoke-virtual {p0, p5, p1, p2}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    goto :goto_5d

    .line 2500
    :cond_50
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    .line 2501
    invoke-static {p1, p3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p1

    .line 2500
    invoke-virtual {p0, p5, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationDataForUnsetSettings(Landroid/os/Bundle;I)V

    .line 2503
    :goto_5d
    monitor-exit v0

    return-object p5

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_36 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method private packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 2522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 2523
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p3, :cond_23

    .line 2525
    iget-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 2527
    :try_start_f
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    const/4 p3, 0x4

    const/4 v1, 0x0

    .line 2528
    invoke-static {p3, v1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p3

    .line 2527
    invoke-virtual {p0, v0, p3, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;ILjava/lang/String;)V

    .line 2530
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

    .line 1004
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 1005
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    .line 1006
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1030
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1056
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

    .line 2562
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    .line 2563
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2564
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 2567
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2568
    :try_start_1d
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_3c

    .line 2569
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "monitor_callback_type"

    const-string v4, "access_callback"

    .line 2570
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calling_package"

    .line 2572
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "namespace"

    .line 2573
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2576
    :cond_3c
    monitor-exit v1

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_3e

    throw p0
.end method

.method private reportDeviceConfigUpdate(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "/"

    const-string v1, ""

    .line 2583
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2584
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 2587
    :cond_16
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2588
    :try_start_19
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_33

    .line 2589
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "monitor_callback_type"

    const-string v3, "namespace_updated_callback"

    .line 2590
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "namespace"

    .line 2592
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2595
    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_19 .. :try_end_37} :catchall_35

    throw p0
.end method

.method private resetConfigSetting(ILjava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v3, p2

    move v6, p1

    .line 1310
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/settings/SettingsProvider;->mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z

    return-void
.end method

.method private resetGlobalSetting(IILjava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p1

    move v8, p2

    .line 1466
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    return-void
.end method

.method private resetSecureSetting(IILjava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p3

    move v5, p1

    move v8, p2

    .line 1770
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    return-void
.end method

.method private resolveCallingPackage()Ljava/lang/String;
    .registers 3

    .line 2764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    .line 2774
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "com.android.shell"

    return-object p0

    :cond_12
    const-string p0, "root"

    return-object p0
.end method

.method private static resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 9

    .line 2473
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_7

    return p0

    .line 2476
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "get/set setting for user"

    const/4 v7, 0x0

    move v3, p0

    .line 2476
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I
    .registers 4

    .line 2102
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .registers 8

    .line 2108
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2109
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result v1

    if-eq v1, p1, :cond_37

    .line 2111
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2115
    :try_start_18
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2116
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_32

    if-eqz v0, :cond_2e

    .line 2120
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2121
    throw p0

    .line 2123
    :cond_37
    :goto_37
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 2127
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result p0

    if-eq p0, p1, :cond_d

    .line 2128
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return p0

    .line 2134
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSettings(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_23

    .line 2135
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

.method private setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1198
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/settings/SettingsProvider;->enforceDeviceConfigWritePermission(Landroid/content/Context;Ljava/util/Set;)V

    .line 1199
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1202
    :try_start_12
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 1203
    monitor-exit v1

    const/4 p0, 0x2

    return p0

    :cond_1b
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1205
    invoke-static {v2, v3}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v2

    .line 1206
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->setConfigSettingsLocked(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 v3, 0x1

    .line 1208
    :cond_2a
    monitor-exit v1

    return v3

    :catchall_2c
    move-exception p0

    .line 1209
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private setMonitorCallback(Landroid/os/RemoteCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2539
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2544
    :try_start_11
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2545
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

    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    const-string v1, "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG"

    .line 1217
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceHasAtLeastOnePermission([Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1221
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfigLocked(I)V

    .line 1222
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

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

    if-ne p1, v2, :cond_36

    move v12, v1

    move v1, v0

    move v0, v12

    .line 1255
    :goto_f
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    .line 1257
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object p1

    if-eqz v1, :cond_1a

    :try_start_17
    const-string v0, "1"

    goto :goto_1c

    :cond_1a
    const-string v0, "0"

    :goto_1c
    move-object v5, v0

    .line 1260
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "device_config_sync_disabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/util/Set;Z)Z
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_31

    .line 1266
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-void

    :catchall_31
    move-exception v0

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1267
    throw v0

    .line 1252
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startWatchingUserRestrictionChanges()V
    .registers 2

    .line 1064
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$3;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1152
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 0
    if-eqz p0, :cond_3

    return-object p0

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

    .line 1436
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

    .line 1760
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x3

    .line 1921
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2060
    sget-object p0, Landroid/provider/settings/validators/SystemSettingsValidators;->VALIDATORS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/settings/validators/Validator;

    if-eqz p0, :cond_30

    .line 2061
    invoke-interface {p0, p2}, Landroid/provider/settings/validators/Validator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_30

    .line 2062
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

    .line 2455
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SettingsProvider"

    if-eqz p0, :cond_14

    const-string p0, "You shouldn\'t not change private system settings. This will soon become an error."

    .line 2456
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_14
    const-string p0, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    .line 2459
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void

    .line 2463
    :cond_1a
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2464
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot change private secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2466
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot keep your settings in the secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static writeFallBackSettingsFiles(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2919
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4b

    .line 2921
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2922
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2923
    invoke-static {v3}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2924
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fallback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2926
    :try_start_2e
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_48

    .line 2928
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

    .line 747
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    .line 749
    aget-object v3, p2, v1

    .line 750
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

    .line 429
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :cond_kaorios_settings_stock
    return-object v9
    :cond_kaorios_settings_stock

    move-result v5

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_2d8

    goto/16 :goto_149

    :sswitch_12
    const-string v0, "SET_ALL_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_149

    :cond_1c
    const/16 v2, 0x17

    goto/16 :goto_149

    :sswitch_20
    const-string v0, "DELETE_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_149

    :cond_2a
    const/16 v2, 0x16

    goto/16 :goto_149

    :sswitch_2e
    const-string v0, "LIST_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_149

    :cond_38
    const/16 v2, 0x15

    goto/16 :goto_149

    :sswitch_3c
    const-string v0, "LIST_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_149

    :cond_46
    const/16 v2, 0x14

    goto/16 :goto_149

    :sswitch_4a
    const-string v0, "DELETE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_149

    :cond_54
    const/16 v2, 0x13

    goto/16 :goto_149

    :sswitch_58
    const-string v0, "UNREGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_149

    :cond_62
    const/16 v2, 0x12

    goto/16 :goto_149

    :sswitch_66
    const-string v0, "LIST_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_149

    :cond_70
    const/16 v2, 0x11

    goto/16 :goto_149

    :sswitch_74
    const-string v0, "LIST_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_149

    :cond_7e
    const/16 v2, 0x10

    goto/16 :goto_149

    :sswitch_82
    const-string v0, "RESET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_149

    :cond_8c
    const/16 v2, 0xf

    goto/16 :goto_149

    :sswitch_90
    const-string v0, "GET_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_149

    :cond_9a
    const/16 v2, 0xe

    goto/16 :goto_149

    :sswitch_9e
    const-string v0, "GET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_149

    :cond_a8
    const/16 v2, 0xd

    goto/16 :goto_149

    :sswitch_ac
    const-string v0, "RESET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_149

    :cond_b6
    const/16 v2, 0xc

    goto/16 :goto_149

    :sswitch_ba
    const-string v0, "RESET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_149

    :cond_c4
    const/16 v2, 0xb

    goto/16 :goto_149

    :sswitch_c8
    const-string v0, "GET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_149

    :cond_d2
    const/16 v2, 0xa

    goto/16 :goto_149

    :sswitch_d6
    const-string v0, "GET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_149

    :cond_e0
    const/16 v2, 0x9

    goto/16 :goto_149

    :sswitch_e4
    const-string v0, "PUT_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto/16 :goto_149

    :cond_ee
    const/16 v2, 0x8

    goto/16 :goto_149

    :sswitch_f2
    const-string v0, "PUT_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fb

    goto :goto_149

    :cond_fb
    const/4 v2, 0x7

    goto :goto_149

    :sswitch_fd
    const-string v0, "PUT_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    goto :goto_149

    :cond_106
    const/4 v2, 0x6

    goto :goto_149

    :sswitch_108
    const-string v0, "GET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_111

    goto :goto_149

    :cond_111
    const/4 v2, 0x5

    goto :goto_149

    :sswitch_113
    const-string v0, "PUT_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11c

    goto :goto_149

    :cond_11c
    const/4 v2, 0x4

    goto :goto_149

    :sswitch_11e
    const-string v0, "SET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    goto :goto_149

    :cond_127
    const/4 v2, 0x3

    goto :goto_149

    :sswitch_129
    const-string v0, "REGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    goto :goto_149

    :cond_132
    const/4 v2, 0x2

    goto :goto_149

    :sswitch_134
    const-string v0, "DELETE_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13d

    goto :goto_149

    :cond_13d
    const/4 v2, 0x1

    goto :goto_149

    :sswitch_13f
    const-string v0, "DELETE_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    goto :goto_149

    :cond_148
    move v2, v1

    :goto_149
    const-string v0, "result_settings_list"

    const-string v3, "result_rows_deleted"

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_33a

    .line 606
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call() with invalid method: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2bd

    .line 494
    :pswitch_169
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 496
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "config_set_all_return"

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    .line 497
    invoke-virtual {p3, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3

    .line 544
    :pswitch_180
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 545
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 546
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 599
    :pswitch_18d
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 601
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 600
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 592
    :pswitch_19e
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 594
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 593
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 537
    :pswitch_1af
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->deleteConfigSetting(Ljava/lang/String;)Z

    move-result p0

    .line 538
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 539
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 580
    :pswitch_1bc
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->clearMonitorCallback()V

    goto/16 :goto_2bd

    .line 585
    :pswitch_1c1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 587
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 586
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 565
    :pswitch_1d2
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 566
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 567
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p3

    .line 566
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->packageValuesForCallResult(Ljava/lang/String;Ljava/util/HashMap;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 568
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigAccess(Ljava/lang/String;)V

    return-object p2

    .line 530
    :pswitch_1e6
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 531
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 532
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSecureSetting(IILjava/lang/String;)V

    goto/16 :goto_2bd

    .line 454
    :pswitch_1f3
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x1

    .line 456
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 455
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 444
    :pswitch_205
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x2

    .line 449
    invoke-direct {p0, p3, p2}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 448
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 523
    :pswitch_217
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 524
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 525
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetGlobalSetting(IILjava/lang/String;)V

    goto/16 :goto_2bd

    .line 516
    :pswitch_224
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 517
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetConfigSetting(ILjava/lang/String;)V

    goto/16 :goto_2bd

    .line 438
    :pswitch_231
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x0

    .line 440
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 439
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 432
    :pswitch_243
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v4

    const/4 v1, 0x4

    .line 434
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p1

    move-object v0, p0

    move-object v2, p2

    move v3, v5

    move v5, p1

    .line 433
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(ILjava/lang/String;ILcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 487
    :pswitch_255
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result p3

    .line 489
    invoke-direct {p0, p2, p1, v5, p3}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_2bd

    .line 477
    :pswitch_261
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 480
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 481
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_2bd

    .line 467
    :pswitch_278
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 470
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 471
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_2bd

    .line 509
    :pswitch_28f
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "config_get_sync_disabled_mode_return"

    .line 511
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfig()I

    move-result p0

    .line 510
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 460
    :pswitch_29e
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result p3

    .line 462
    invoke-direct {p0, p2, p1, p3}, Lcom/android/providers/settings/SettingsProvider;->insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_2bd

    .line 503
    :pswitch_2aa
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledMode(Landroid/os/Bundle;)I

    move-result p1

    .line 504
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfig(I)V

    goto :goto_2bd

    :pswitch_2b2
    const-string p1, "_monitor_callback_key"

    .line 573
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 575
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setMonitorCallback(Landroid/os/RemoteCallback;)V

    :goto_2bd
    return-object v8

    .line 558
    :pswitch_2be
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    .line 559
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 560
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 551
    :pswitch_2cb
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 552
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 553
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :sswitch_data_2d8
    .sparse-switch
        -0x750f4775 -> :sswitch_13f
        -0x73ee30bd -> :sswitch_134
        -0x332e6225 -> :sswitch_129
        -0x132cde7e -> :sswitch_11e
        -0x7c1916e -> :sswitch_113
        -0x2eb948a -> :sswitch_108
        -0x118110d -> :sswitch_fd
        0x12fa46c7 -> :sswitch_f2
        0x141b5d7f -> :sswitch_e4
        0x1d62846b -> :sswitch_d6
        0x240c04cc -> :sswitch_c8
        0x295ef852 -> :sswitch_ba
        0x300878b3 -> :sswitch_ac
        0x381e5ca0 -> :sswitch_9e
        0x393f7358 -> :sswitch_90
        0x441ad087 -> :sswitch_82
        0x55988a03 -> :sswitch_74
        0x5c420a64 -> :sswitch_66
        0x70190474 -> :sswitch_58
        0x7034e056 -> :sswitch_4a
        0x70546238 -> :sswitch_3c
        0x717578f0 -> :sswitch_2e
        0x76de60b7 -> :sswitch_20
        0x7de137dd -> :sswitch_12
    .end sparse-switch

    :pswitch_data_33a
    .packed-switch 0x0
        :pswitch_2cb
        :pswitch_2be
        :pswitch_2b2
        :pswitch_2aa
        :pswitch_29e
        :pswitch_28f
        :pswitch_278
        :pswitch_261
        :pswitch_255
        :pswitch_243
        :pswitch_231
        :pswitch_224
        :pswitch_217
        :pswitch_205
        :pswitch_1f3
        :pswitch_1e6
        :pswitch_1d2
        :pswitch_1c1
        :pswitch_1bc
        :pswitch_1af
        :pswitch_19e
        :pswitch_18d
        :pswitch_180
        :pswitch_169
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 764
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 767
    sget-object p2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    .line 771
    :cond_11
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 775
    :cond_1a
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v2, -0x1

    sparse-switch p3, :sswitch_data_84

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
    packed-switch v2, :pswitch_data_92

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

    .line 787
    :pswitch_62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 788
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 782
    :pswitch_6d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 783
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 777
    :pswitch_78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 778
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

    .line 910
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 911
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    .line 913
    :try_start_7
    iget-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getKnownUsersLocked()Landroid/util/SparseBooleanArray;

    move-result-object p3

    .line 914
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1e

    .line 916
    invoke-virtual {p3, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUserLocked(ILjava/io/PrintWriter;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2c

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 919
    :cond_1e
    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 921
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/providers/settings/GenerationRegistry;->dump(Ljava/io/PrintWriter;)V

    .line 922
    monitor-exit p1

    return-void

    :catchall_2c
    move-exception p0

    .line 919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    throw p0

    :catchall_31
    move-exception p0

    .line 922
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw p0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 900
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 902
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 903
    :try_start_8
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0, v0}, Lcom/android/providers/settings/SettingsProtoDumpUtil;->dumpProtoLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/util/proto/ProtoOutputStream;)V

    .line 904
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 906
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_12
    move-exception p0

    .line 904
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 615
    new-instance p0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 616
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 617
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 619
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

    .line 694
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 697
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "name"

    .line 701
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    return-object v2

    :cond_1b
    const-string v3, "value"

    .line 706
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch p2, :sswitch_data_a8

    goto :goto_4e

    :sswitch_2e
    const-string p2, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v4, 0x2

    goto :goto_4e

    :sswitch_39
    const-string p2, "secure"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    goto :goto_4e

    :cond_42
    const/4 v4, 0x1

    goto :goto_4e

    :sswitch_44
    const-string p2, "global"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v4, v3

    :goto_4e
    packed-switch v4, :pswitch_data_b6

    .line 733
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

    .line 726
    :pswitch_68
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-direct {p0, v1, v5, p1, v3}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 728
    sget-object p0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_79
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 719
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 718
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 721
    sget-object p0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_90
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 711
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 710
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 713
    sget-object p0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_a7
    return-object v2

    :sswitch_data_a8
    .sparse-switch
        -0x4a16fc5d -> :sswitch_44
        -0x3604a489 -> :sswitch_39
        -0x34e38dd1 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_90
        :pswitch_79
        :pswitch_68
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 5

    .line 401
    invoke-static {}, Landroid/provider/Settings;->setInSystemServer()V

    .line 403
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 405
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 406
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/SystemConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemConfigManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSysConfigManager:Landroid/os/SystemConfigManager;

    .line 407
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SettingsProvider"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 409
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 410
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    .line 411
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 412
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_6 .. :try_end_47} :catchall_7f

    .line 413
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->cacheSystemPackageNamesAndSystemSignature(Landroid/content/Context;)V

    .line 414
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_51
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mmigrateAllLegacySettingsIfNeededLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 416
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$msyncSsaidTableOnStartLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 417
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_7c

    .line 418
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "settings"

    .line 422
    new-instance v1, Lcom/android/providers/settings/SettingsService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "device_config"

    .line 423
    new-instance v1, Lcom/android/providers/settings/DeviceConfigService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/DeviceConfigService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :catchall_7c
    move-exception p0

    .line 417
    :try_start_7d
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw p0

    :catchall_7f
    move-exception p0

    .line 412
    :try_start_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 842
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 843
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 844
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    const-string v3, "Access files from the settings of another user"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_19
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "w"

    .line 848
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 849
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 848
    invoke-static {v2, v3, v1, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "SettingsProvider"

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to modify system settings files."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_53
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 858
    sget-object v1, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string p1, "ringtone"

    const-string v1, "ringtone_cache"

    goto :goto_9b

    .line 861
    :cond_64
    sget-object v1, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    const-string p1, "notification_sound"

    const-string v1, "notification_sound_cache"

    goto :goto_9b

    .line 864
    :cond_71
    sget-object v1, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string p1, "alarm_alert"

    const-string v1, "alarm_alert_cache"

    goto :goto_9b

    .line 868
    :cond_7e
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 869
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 870
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/provider/SettingsStub;->getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    .line 879
    :goto_9b
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 880
    :try_start_9e
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p1

    .line 882
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_b5

    .line 883
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 884
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catchall_b5
    move-exception p0

    .line 882
    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0

    .line 873
    :cond_b8
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

    .line 630
    new-instance p5, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x1

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 631
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 634
    sget-object p4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1b

    .line 635
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 638
    :cond_1b
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_a0

    :goto_28
    move v0, v3

    goto :goto_48

    :sswitch_2a
    const-string v0, "system"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_33

    goto :goto_28

    :cond_33
    const/4 v0, 0x2

    goto :goto_48

    :sswitch_35
    const-string v1, "secure"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_48

    goto :goto_28

    :sswitch_3e
    const-string v0, "global"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_47

    goto :goto_28

    :cond_47
    move v0, v1

    :cond_48
    :goto_48
    packed-switch v0, :pswitch_data_ae

    .line 669
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

    .line 659
    :pswitch_62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 660
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_73

    .line 661
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 662
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 664
    :cond_73
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 649
    :pswitch_78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 650
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_89

    .line 651
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 652
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 654
    :cond_89
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 640
    :pswitch_8e
    iget-object p1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p1, :cond_9b

    .line 641
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 642
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 644
    :cond_9b
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    :sswitch_data_a0
    .sparse-switch
        -0x4a16fc5d -> :sswitch_3e
        -0x3604a489 -> :sswitch_35
        -0x34e38dd1 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_78
        :pswitch_62
    .end packed-switch
.end method

.method public scheduleWriteFallbackFilesJob()V
    .registers 11

    .line 2876
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    .line 2878
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-nez v1, :cond_f

    return-void

    :cond_f
    const/4 v2, 0x1

    .line 2884
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    if-eqz v3, :cond_17

    return-void

    .line 2888
    :cond_17
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 2889
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    .line 2890
    invoke-static {v5, v5}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v6

    .line 2889
    invoke-static {v4, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v4

    .line 2891
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 2892
    invoke-static {v2, v5}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v7

    .line 2891
    invoke-static {v6, v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v6

    .line 2893
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x2

    .line 2894
    invoke-static {v8, v5}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v8

    .line 2893
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v7

    .line 2895
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x3

    .line 2896
    invoke-static {v9, v5}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v9

    .line 2895
    invoke-static {v8, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v8

    .line 2897
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x4

    .line 2898
    invoke-static {v9, v5}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result v5

    .line 2897
    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object p0

    const-string v5, "global"

    .line 2899
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "system"

    .line 2900
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "secure"

    .line 2901
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ssaid"

    .line 2902
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "config"

    .line 2903
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/providers/settings/WriteFallbackSettingsFilesJobService;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 2907
    invoke-virtual {p0, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v3, 0x5265c00

    .line 2908
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2909
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2910
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2911
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 2905
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

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

    :cond_11
    const-string p3, "name"

    .line 810
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 811
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    return v1

    :cond_1e
    const-string p3, "value"

    .line 814
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 816
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 p4, -0x1

    sparse-switch p3, :sswitch_data_96

    :goto_31
    move v1, p4

    goto :goto_52

    :sswitch_33
    const-string p3, "system"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3c

    goto :goto_31

    :cond_3c
    const/4 v1, 0x2

    goto :goto_52

    :sswitch_3e
    const-string p3, "secure"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_47

    goto :goto_31

    :cond_47
    const/4 v1, 0x1

    goto :goto_52

    :sswitch_49
    const-string p3, "global"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    goto :goto_31

    :cond_52
    :goto_52
    packed-switch v1, :pswitch_data_a4

    .line 835
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

    .line 830
    :pswitch_6c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 831
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, v4, p1}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 824
    :pswitch_77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 825
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    .line 818
    :pswitch_86
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 819
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

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
