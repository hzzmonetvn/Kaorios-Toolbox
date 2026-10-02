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

.field private volatile mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$Mfb8JLeGY2CvozFEvQCs-6lJGe0(Lcom/android/providers/settings/SettingsProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->lambda$onCreate$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandlerThread(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/providers/settings/SettingsProvider;)Landroid/content/pm/IPackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsRegistry(Lcom/android/providers/settings/SettingsProvider;)Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;
    .registers 1

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/providers/settings/SettingsProvider;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllConfigFlags(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetGlobalSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSecureSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreportDeviceConfigUpdate(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresolveCallingPackage(Lcom/android/providers/settings/SettingsProvider;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveOwningUserIdForSecureSettingLocked(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateGlobalSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/providers/settings/SettingsProvider;->updateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateSecureSetting(Lcom/android/providers/settings/SettingsProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLEGACY_SQL_COLUMNS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSecureCloneToManagedSettings()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsSystemCloneToManagedSettings()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getRestrictionDiff(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 199
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    const-string v1, "favorites"

    .line 201
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "old_favorites"

    .line 202
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bluetooth_devices"

    .line 203
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "bookmarks"

    .line 204
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android_metadata"

    .line 205
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "value"

    .line 213
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/providers/settings/SettingsProvider;->LEGACY_SQL_COLUMNS:[Ljava/lang/String;

    const-string v3, "is_preserved_in_restore"

    .line 219
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 232
    invoke-static {v2, v0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    .line 243
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 244
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 245
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    .line 248
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

    .line 250
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 252
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

    .line 254
    sget-object v5, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_77

    .line 256
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

    .line 258
    sget-object v4, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 263
    :cond_9b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_GLOBAL_SETTINGS:Ljava/util/Set;

    const-string v1, "device_provisioned"

    .line 265
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->CRITICAL_SECURE_SETTINGS:Ljava/util/Set;

    const-string v1, "user_setup_complete"

    .line 271
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureMovedToGlobalSettings:Ljava/util/Set;

    .line 277
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 281
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToGlobalSettings:Ljava/util/Set;

    .line 283
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToGlobalSettings(Ljava/util/Set;)V

    .line 287
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemMovedToSecureSettings:Ljava/util/Set;

    .line 289
    invoke-static {v0}, Landroid/provider/Settings$System;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 293
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSecureSettings:Ljava/util/Set;

    .line 295
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSecureSettings(Ljava/util/Set;)V

    .line 299
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sGlobalMovedToSystemSettings:Ljava/util/Set;

    .line 301
    invoke-static {v0}, Landroid/provider/Settings$Global;->getMovedToSystemSettings(Ljava/util/Set;)V

    .line 305
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    .line 307
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 311
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneToManagedSettings:Ljava/util/Set;

    .line 313
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneToManagedProfileSettings(Ljava/util/Set;)V

    .line 318
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    .line 320
    invoke-static {v0}, Landroid/provider/Settings$System;->getCloneFromParentOnValueSettings(Ljava/util/Map;)V

    .line 323
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 324
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 325
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 328
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 332
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 333
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 334
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 337
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    .line 341
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 342
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 343
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 346
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getPublicSettings(Ljava/util/Set;Ljava/util/Set;Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 350
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V
    .registers 9

    if-eqz p1, :cond_78

    .line 2579
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_78

    .line 2582
    :cond_a
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->getColumnCount()I

    move-result v0

    .line 2584
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v0, :cond_75

    .line 2587
    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 2589
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7a

    goto :goto_4f

    :sswitch_24
    const-string v6, "is_preserved_in_restore"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_4f

    :cond_2d
    const/4 v5, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v6, "value"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto :goto_4f

    :cond_38
    const/4 v5, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_4f

    :cond_43
    const/4 v5, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v6, "_id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_4f

    :cond_4e
    move v5, v2

    :goto_4f
    packed-switch v5, :pswitch_data_8c

    goto :goto_72

    .line 2603
    :pswitch_53
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isValuePreservedInRestore()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2599
    :pswitch_5e
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2595
    :pswitch_65
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_72

    .line 2591
    :pswitch_6c
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 2608
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

    .line 656
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-eqz p1, :cond_34

    .line 658
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 659
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

    .line 663
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 665
    throw p0

    :cond_34
    if-eqz p1, :cond_39

    .line 663
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

    .line 2248
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSecureSettings:Ljava/util/Set;

    .line 2249
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettings:Ljava/util/Set;

    .line 2250
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSecureSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2253
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

    .line 2243
    :cond_26
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllSystemSettings:Ljava/util/Set;

    .line 2244
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettings:Ljava/util/Set;

    .line 2245
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableSystemSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    goto :goto_33

    .line 2238
    :cond_2d
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->sAllGlobalSettings:Ljava/util/Set;

    .line 2239
    sget-object p1, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettings:Ljava/util/Set;

    .line 2240
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sReadableGlobalSettingsWithMaxTargetSdk:Landroid/util/ArrayMap;

    .line 2256
    :goto_33
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2257
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "Settings key: <"

    if-eqz p0, :cond_71

    .line 2264
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8b

    .line 2265
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p3, p0, :cond_54

    goto :goto_8b

    .line 2267
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

    .line 2258
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

.method private deleteConfigSetting(Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1287
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

    .line 1438
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

    .line 1729
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private deleteSystemSetting(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1893
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

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONFIG SETTINGS (user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 920
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 921
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 922
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 925
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

    .line 926
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v1, v3, v3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 929
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 930
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 931
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 935
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

    .line 936
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 939
    invoke-direct {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 940
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 941
    invoke-virtual {v1, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 944
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

    .line 945
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 948
    invoke-direct {p0, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V

    .line 949
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 950
    invoke-virtual {v0, p2}, Lcom/android/providers/settings/SettingsState;->dumpHistoricalOperations(Ljava/io/PrintWriter;)V

    .line 954
    :cond_a8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/provider/SettingsStub;->dumpLocked(ILjava/io/PrintWriter;)V

    return-void
.end method

.method private dumpSettingsLocked(Lcom/android/providers/settings/SettingsState;Ljava/io/PrintWriter;)V
    .registers 8

    .line 959
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState;->getSettingNamesLocked()Ljava/util/List;

    move-result-object p0

    .line 960
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

    .line 961
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_a1

    .line 964
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    invoke-virtual {p1, v2}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v3

    const-string v4, "_id:"

    .line 966
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " name:"

    .line 967
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    const-string v2, " pkg:"

    .line 969
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5b
    const-string v2, " value:"

    .line 971
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/settings/SettingsProvider;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_89

    const-string v2, " default:"

    .line 973
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " defaultSystemSet:"

    .line 974
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->isDefaultFromSystem()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 976
    :cond_89
    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9b

    const-string v2, " tag:"

    .line 977
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsState$Setting;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    :cond_9b
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_a1
    return-void
.end method

.method private enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V
    .registers 6

    .line 2084
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2085
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

    .line 2120
    :cond_1d
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    sget-object p1, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    .line 2121
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2127
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2130
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3a

    return-void

    .line 2136
    :cond_3a
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_45

    return-void

    .line 2141
    :cond_45
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->warnOrThrowForUndesiredSecureSettingsMutationForTargetSdk(ILjava/lang/String;)V

    goto :goto_7d

    .line 2122
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot delete system defined secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2096
    :cond_55
    sget-object p1, Landroid/provider/Settings$System;->PUBLIC_SETTINGS:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    return-void

    .line 2101
    :cond_5e
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfoOrThrow(I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 2104
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6b

    return-void

    .line 2110
    :cond_6b
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroid/provider/SettingsStub;->isMiuiPublicSystemSettings(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_76

    return-void

    .line 2115
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

    .line 2181
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v0, 0x2710

    if-ge p3, v0, :cond_d

    return-void

    .line 2184
    :cond_d
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2185
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_81

    .line 2188
    :cond_1e
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_29

    .line 2190
    iget v0, p3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p2, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->checkReadableAnnotation(ILjava/lang/String;I)V

    .line 2198
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "multi_sim_data_call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_49

    :cond_35
    const-wide/32 v0, 0xa4abed7

    .line 2203
    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2205
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "access global settings MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    :cond_49
    :goto_49
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-nez v0, :cond_50

    return-void

    .line 2214
    :cond_50
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 2215
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getOverlayInstantAppAccessibleSettings(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    .line 2218
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

.method private enforceWritePermission(Ljava/lang/String;)V
    .registers 4

    .line 2329
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_b

    return-void

    .line 2331
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission denial: writing to settings requires:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 1334
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    const-string v2, "/"

    .line 1335
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 1334
    :goto_11
    invoke-static {v0, v2}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1339
    :try_start_17
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v2

    .line 1341
    invoke-direct {p0, v3, v1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object p0

    .line 1344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1345
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    :goto_2f
    if-ge v1, v3, :cond_55

    .line 1348
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1349
    invoke-virtual {v2, v5}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    if-eqz p1, :cond_47

    .line 1350
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1351
    :cond_47
    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1355
    :cond_55
    monitor-exit v0

    return-object v4

    :catchall_57
    move-exception p0

    .line 1356
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_17 .. :try_end_59} :catchall_57

    throw p0
.end method

.method private getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .line 1364
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1366
    :try_start_3
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v1

    .line 1369
    invoke-direct {p0, v2, v2}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1372
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1374
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1375
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move p1, v2

    :goto_1c
    if-ge p1, v4, :cond_35

    .line 1379
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_37

    .line 1382
    :try_start_24
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 1381
    invoke-direct {p0, v6, v2, v7}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_2b
    .catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2b} :catch_32
    .catchall {:try_start_24 .. :try_end_2b} :catchall_37

    .line 1387
    :try_start_2b
    invoke-virtual {v1, v6}, Lcom/android/providers/settings/SettingsState;->getSettingLocked(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1388
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_32
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c

    .line 1391
    :cond_35
    monitor-exit v0

    return-object v5

    :catchall_37
    move-exception p0

    .line 1392
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_37

    throw p0
.end method

.method private getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    .line 1535
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    const-string v0, "android_id"

    .line 1540
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v0

    .line 1542
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1544
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x2

    .line 1545
    :try_start_12
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v3

    .line 1547
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1549
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1550
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, p2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_24
    if-ge p2, v4, :cond_51

    .line 1553
    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1555
    invoke-direct {p0, p1, v6}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v7

    .line 1558
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v8
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_53

    if-nez v8, :cond_37

    goto :goto_4e

    .line 1565
    :cond_37
    :try_start_37
    invoke-direct {p0, v6, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_3a} :catch_4e
    .catchall {:try_start_37 .. :try_end_3a} :catchall_53

    .line 1574
    :try_start_3a
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 1575
    invoke-direct {p0, v0, v7}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    goto :goto_4b

    .line 1577
    :cond_45
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v8, v2, v7, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v6

    .line 1580
    :goto_4b
    invoke-static {v5, v6}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_4e
    :goto_4e
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 1583
    :cond_51
    monitor-exit v1

    return-object v5

    :catchall_53
    move-exception p0

    .line 1584
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_53

    throw p0
.end method

.method private getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    .line 1826
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p1

    .line 1828
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1829
    :try_start_8
    invoke-direct {p0, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->getSettingsNamesLocked(II)Ljava/util/List;

    move-result-object v2

    .line 1831
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1833
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 1834
    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, p2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 p2, 0x0

    :goto_1a
    if-ge p2, v3, :cond_35

    .line 1837
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_37

    .line 1839
    :try_start_22
    invoke-direct {p0, v5, v1, p1}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V
    :try_end_25
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_25} :catch_32
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    .line 1845
    :try_start_25
    invoke-direct {p0, p1, v5}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    .line 1848
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v7, v1, v6, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v5

    .line 1850
    invoke-static {v4, v5}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    :catch_32
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 1853
    :cond_35
    monitor-exit v0

    return-object v4

    :catchall_37
    move-exception p0

    .line 1854
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_25 .. :try_end_39} :catchall_37

    throw p0
.end method

.method private getCallingApplicationInfoOrThrow()Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 2285
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2287
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x0

    .line 2288
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2287
    invoke-interface {p0, v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 p0, 0x0

    :goto_12
    if-eqz p0, :cond_15

    return-object p0

    .line 2292
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

    .line 1520
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1522
    :try_start_4
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v1, 0x40

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    return-object p0

    .line 1525
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

    .line 2300
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2301
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 2300
    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz p0, :cond_f

    return-object p0

    .line 2308
    :catch_f
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Calling package doesn\'t exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1161
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->enforceReadPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    .line 1167
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method private getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    .line 1401
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1404
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1405
    :try_start_b
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_13
    move-exception p0

    .line 1407
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw p0
.end method

.method private getGroupParentLocked(I)I
    .registers 4

    if-nez p1, :cond_3

    return p1

    .line 2318
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2321
    :try_start_7
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2322
    iget p1, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 2324
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2325
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

    .line 2152
    sget-object p0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2156
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

    .line 2154
    :cond_22
    sget-object p0, Landroid/provider/Settings$System;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2150
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

    .line 2167
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SECURE_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2169
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

    .line 2165
    :cond_22
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_SYSTEM_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0

    .line 2163
    :cond_25
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->OVERLAY_ALLOWED_GLOBAL_INSTANT_APP_SETTINGS:Ljava/util/Set;

    return-object p0
.end method

.method private static getRequestingUserId(Landroid/os/Bundle;)I
    .registers 3

    .line 2450
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz p0, :cond_c

    const-string v1, "_user"

    .line 2451
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_c
    return v0
.end method

.method private static getResetModeEnforcingPermission(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    const-string v0, "_reset_mode"

    .line 2506
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

    .line 2523
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_1d

    return p0

    .line 2524
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset to trusted defaults"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2533
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

    .line 2516
    :cond_3c
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_43

    return p0

    .line 2517
    :cond_43
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only system, shell/root on a debuggable build can reset untrusted changes"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2509
    :cond_4b
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->isCallerSystemOrShellOrRootOnDebuggableBuild()Z

    move-result v0

    if-eqz v0, :cond_52

    return p0

    .line 2510
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

    .line 1143
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    .line 1144
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1145
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1146
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v1

    .line 1147
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

    .line 1148
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v3, v4, :cond_1a

    .line 1150
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    return-object v1
.end method

.method private getRingtoneCacheDir(I)Ljava/io/File;
    .registers 3

    .line 877
    new-instance p0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "ringtones"

    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 879
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    return-object p0
.end method

.method private getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1593
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1596
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1599
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 1601
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isSecureSettingAccessible(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1604
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    const-string p2, "android_id"

    .line 1607
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2c

    if-eqz p0, :cond_2b

    .line 1608
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getAndroidIdDefaultSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p2

    :cond_2b
    return-object p2

    :cond_2c
    if-eqz p0, :cond_32

    .line 1611
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState;->getNullSetting()Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p2

    :cond_32
    return-object p2

    .line 1616
    :cond_33
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->isNewSsaidSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1617
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 1618
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1619
    :try_start_40
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getSsaidSettingLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_46
    move-exception p0

    .line 1620
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw p0

    .line 1624
    :cond_49
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1625
    :try_start_4c
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_54
    move-exception p0

    .line 1627
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

    .line 2483
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    goto :goto_f

    .line 2484
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

    .line 2488
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

    .line 2492
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

    .line 2479
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

    .line 2475
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

    .line 2471
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

    .line 2177
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

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p2, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1638
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1646
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v7, 0x3

    invoke-virtual {v1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1

    .line 1650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1652
    :try_start_1b
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_83
    .catchall {:try_start_1b .. :try_end_23} :catchall_81

    .line 1658
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1661
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v2, v7, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object v8

    if-eqz v4, :cond_62

    if-eqz v1, :cond_3f

    .line 1666
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1667
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    :cond_3f
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1670
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

    .line 1675
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p1, v7, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1677
    invoke-direct {p0, v8, p1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1673
    :cond_5a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to update instant app android id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    if-eqz v1, :cond_76

    .line 1681
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-nez v0, :cond_76

    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_71

    goto :goto_76

    .line 1686
    :cond_71
    invoke-direct {p0, v8, v1}, Lcom/android/providers/settings/SettingsProvider;->mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    return-object p0

    .line 1682
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->generateSsaidLocked(Landroid/content/pm/PackageInfo;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 1683
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

    .line 1655
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_81

    const/4 p0, 0x0

    .line 1658
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :goto_90
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1659
    throw p0
.end method

.method private static getSyncDisabledMode(Landroid/os/Bundle;)I
    .registers 4

    if-eqz p0, :cond_9

    const-string v0, "_disabled_mode"

    .line 2497
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

    .line 2502
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
    .registers 2

    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    .line 1216
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1218
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1219
    :try_start_8
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    .line 1220
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw p0
.end method

.method private getSyncDisabledModeConfigLocked()I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1261
    iget-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    .line 1266
    :cond_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v0

    .line 1268
    :try_start_a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const-string v2, "device_config_sync_disabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_2c

    if-nez v1, :cond_19

    .line 1279
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v3

    .line 1274
    :cond_19
    :try_start_19
    invoke-virtual {v1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    const-string v2, "0"

    .line 1275
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_2c

    if-nez v1, :cond_28

    const/4 v3, 0x1

    .line 1279
    :cond_28
    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return v3

    :catchall_2c
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1280
    throw v1
.end method

.method private getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 5

    .line 1863
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result p2

    .line 1866
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceSettingReadable(Ljava/lang/String;II)V

    .line 1869
    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p2

    .line 1872
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1873
    :try_start_13
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingLocked(IILjava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 1874
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static getTypeFromKey(I)I
    .registers 1

    .line 378
    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->getTypeFromKey(I)I

    move-result p0

    return p0
.end method

.method public static getUserIdFromKey(I)I
    .registers 1

    .line 382
    invoke-static {p0}, Lcom/android/providers/settings/SettingsState;->getUserIdFromKey(I)I

    move-result p0

    return p0
.end method

.method private static getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 2543
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 2544
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2545
    invoke-static {p0}, Lcom/android/providers/settings/DatabaseHelper;->isValidTable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    .line 2548
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

    .line 2550
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

    .line 1998
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

    .line 1175
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

    .line 1429
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

    .line 1719
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

    .line 1884
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method private static isCallerSystemOrShellOrRootOnDebuggableBuild()Z
    .registers 2

    .line 2537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_19

    .line 2538
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

    .line 2612
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

    .line 1631
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1632
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

    .line 2014
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

    .line 2023
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

    .line 2028
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 2027
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getCallingPackageInfo(I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_5b

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2030
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_5b

    .line 2031
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x2735

    .line 2032
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "SettingsProvider#isSecureSettingAccessible"

    .line 2031
    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_5c

    :cond_5b
    move v1, v2

    :cond_5c
    return v1
.end method

.method private isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 7

    .line 1453
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz p1, :cond_15

    .line 1455
    :try_start_6
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 1456
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/UserManager;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_10

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :catchall_10
    move-exception p0

    .line 1458
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1459
    throw p0

    :cond_15
    const/4 p0, 0x0

    .line 1458
    :goto_16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;)Z
    .registers 3

    const/4 v0, 0x0

    .line 2458
    invoke-direct {p0, p1, v0}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "android_id"

    .line 2463
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

    .line 2466
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private synthetic lambda$onCreate$0()V
    .registers 1

    .line 411
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->registerBroadcastReceivers()V

    .line 412
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->startWatchingUserRestrictionChanges()V

    return-void
.end method

.method public static makeKey(II)I
    .registers 2

    .line 374
    invoke-static {p0, p1}, Lcom/android/providers/settings/SettingsState;->makeKey(II)I

    move-result p0

    return p0
.end method

.method private mascaradeSsaidSetting(Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)Lcom/android/providers/settings/SettingsState$Setting;
    .registers 4

    if-eqz p2, :cond_b

    .line 1695
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider$4;-><init>(Lcom/android/providers/settings/SettingsProvider;Lcom/android/providers/settings/SettingsState;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method private mutateConfigSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Z
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p5

    const-string v2, "android.permission.WRITE_DEVICE_CONFIG"

    .line 1301
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v11

    .line 1305
    iget-object v2, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_3b

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2b

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1c

    .line 1324
    :try_start_19
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    .line 1320
    :cond_1c
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v6, v11

    move/from16 v7, p6

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1322
    monitor-exit v2

    return v10

    .line 1315
    :cond_2b
    iget-object v12, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v15, p1

    invoke-virtual/range {v12 .. v17}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->deleteSettingLocked(IILjava/lang/String;ZLjava/util/Set;)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1308
    :cond_3b
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v14}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->insertSettingLocked(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZLjava/util/Set;Z)Z

    move-result v0

    monitor-exit v2

    return v0

    :catchall_50
    move-exception v0

    .line 1324
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_19 .. :try_end_52} :catchall_50

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

    .line 1467
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/settings/SettingsProvider;->mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z

    move-result v0

    return v0
.end method

.method private mutateGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZIZ)Z
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p6

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 1475
    invoke-direct {v0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1478
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct {v0, v7, v2, v8, v3}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    return v3

    .line 1486
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 1489
    iget-object v15, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v10, 0x1

    if-eq v1, v10, :cond_67

    const/4 v4, 0x2

    if-eq v1, v4, :cond_57

    const/4 v4, 0x3

    if-eq v1, v4, :cond_40

    const/4 v4, 0x4

    if-eq v1, v4, :cond_32

    .line 1514
    :try_start_30
    monitor-exit v15

    return v3

    .line 1510
    :cond_32
    iget-object v4, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    move/from16 v8, p8

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)V

    .line 1512
    monitor-exit v15

    return v10

    .line 1504
    :cond_40
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

    .line 1499
    :cond_57
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

    .line 1492
    :cond_67
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

    :catchall_80
    move-exception v0

    .line 1514
    monitor-exit v15
    :try_end_82
    .catchall {:try_start_30 .. :try_end_82} :catchall_80

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

    .line 1760
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

    .line 1768
    invoke-direct {p0, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1771
    invoke-static/range {p5 .. p5}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v5, p2

    invoke-direct {p0, p1, v2, v5, v4}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1b

    return v6

    .line 1780
    :cond_1b
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_22

    return v6

    .line 1787
    :cond_22
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v10

    .line 1790
    iget-object v13, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const/4 v2, 0x1

    if-eq v1, v2, :cond_69

    const/4 v7, 0x2

    if-eq v1, v7, :cond_5a

    const/4 v7, 0x3

    if-eq v1, v7, :cond_44

    const/4 v3, 0x4

    if-eq v1, v3, :cond_37

    .line 1815
    :try_start_35
    monitor-exit v13

    return v6

    .line 1811
    :cond_37
    iget-object v7, v0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x2

    const/4 v9, 0x0

    move/from16 v11, p8

    move-object/from16 v12, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->resetSettingsLocked(IILjava/lang/String;ILjava/lang/String;)V

    .line 1813
    monitor-exit v13

    return v2

    .line 1805
    :cond_44
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

    .line 1800
    :cond_5a
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

    .line 1793
    :cond_69
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

    :catchall_81
    move-exception v0

    .line 1815
    monitor-exit v13
    :try_end_83
    .catchall {:try_start_35 .. :try_end_83} :catchall_81

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

    .line 1908
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result p0

    return p0
.end method

.method private mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;IIZ)Z
    .registers 19

    move-object v0, p0

    move-object v3, p1

    move/from16 v1, p4

    .line 1914
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 1915
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->hasWriteSecureSettingsPermission()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_41

    .line 1918
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1918
    invoke-static {v2, v6, v7, v8, v4}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_41

    const-string v0, "SettingsProvider"

    .line 1921
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

    .line 1928
    :cond_41
    invoke-static/range {p3 .. p3}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    .line 1930
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v8, p2

    invoke-direct {p0, p1, v2, p2, v6}, Lcom/android/providers/settings/SettingsProvider;->isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6f

    const-string v0, "SettingsProvider"

    .line 1931
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

    .line 1937
    :cond_6f
    invoke-direct {p0, v1, p1, v2}, Lcom/android/providers/settings/SettingsProvider;->enforceRestrictedSystemSettingsMutationForCallingPackage(ILjava/lang/String;I)V

    .line 1940
    invoke-direct {p0, v2, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v2, :cond_97

    const-string v0, "SettingsProvider"

    .line 1944
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

    .line 1951
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "ringtone_cache"

    goto :goto_c0

    :cond_a2
    const-string v2, "notification_sound"

    .line 1953
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    const-string v2, "notification_sound_cache"

    goto :goto_c0

    :cond_ad
    const-string v2, "alarm_alert"

    .line 1955
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    const-string v2, "alarm_alert_cache"

    goto :goto_c0

    .line 1960
    :cond_b8
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/provider/SettingsStub;->getMiuiRingtoneCacheName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c0
    if-eqz v2, :cond_ce

    .line 1964
    new-instance v9, Ljava/io/File;

    .line 1965
    invoke-direct {p0, v6}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1966
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1970
    :cond_ce
    iget-object v11, v0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v11

    if-eq v1, v4, :cond_114

    const/4 v2, 0x2

    if-eq v1, v2, :cond_107

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f1

    :try_start_d9
    const-string v0, "SettingsProvider"

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    monitor-exit v11

    return v5

    .line 1985
    :cond_f1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
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

    .line 1980
    :cond_107
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

    .line 1973
    :cond_114
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
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

    :catchall_12c
    move-exception v0

    .line 1993
    monitor-exit v11
    :try_end_12e
    .catchall {:try_start_d9 .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method private static normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 2564
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    return-object p0

    .line 2567
    :cond_5
    array-length v0, p0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2d

    .line 2569
    aget-object v2, p0, v1

    .line 2570
    sget-object v3, Lcom/android/providers/settings/SettingsProvider;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/hardware/camera2/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2571
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

    .line 2554
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2555
    new-instance p0, Landroid/database/MatrixCursor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object p0

    .line 2557
    :cond_d
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2558
    invoke-static {v0, p0}, Lcom/android/providers/settings/SettingsProvider;->appendSettingToCursor(Landroid/database/MatrixCursor;Lcom/android/providers/settings/SettingsState$Setting;)V

    return-object v0
.end method

.method private packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;
    .registers 5

    const-string v0, "value"

    if-nez p2, :cond_19

    if-eqz p1, :cond_16

    .line 2368
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_16

    .line 2371
    :cond_d
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 2369
    :cond_16
    :goto_16
    sget-object p0, Lcom/android/providers/settings/SettingsProvider;->NULL_SETTING_BUNDLE:Landroid/os/Bundle;

    return-object p0

    .line 2373
    :cond_19
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 2375
    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->isNull()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    .line 2374
    :goto_2a
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/providers/settings/SettingsState$Setting;->getKey()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;I)V

    return-object p2
.end method

.method private packageValuesForCallResult(Ljava/util/HashMap;Z)Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 2383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "value"

    .line 2384
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz p2, :cond_27

    .line 2386
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2387
    :try_start_f
    iget-object p2, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$fgetmGenerationRegistry(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Lcom/android/providers/settings/GenerationRegistry;

    move-result-object p2

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2388
    invoke-virtual {p0, v1, v2}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getSettingsLocked(II)Lcom/android/providers/settings/SettingsState;

    move-result-object p0

    iget p0, p0, Lcom/android/providers/settings/SettingsState;->mKey:I

    .line 2387
    invoke-virtual {p2, v0, p0}, Lcom/android/providers/settings/GenerationRegistry;->addGenerationData(Landroid/os/Bundle;I)V

    .line 2390
    monitor-exit p1

    goto :goto_27

    :catchall_24
    move-exception p0

    monitor-exit p1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw p0

    :cond_27
    :goto_27
    return-object v0
.end method

.method private registerBroadcastReceivers()V
    .registers 5

    .line 991
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 992
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_STOPPED"

    .line 993
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/providers/settings/SettingsProvider$1;

    invoke-direct {v2, p0}, Lcom/android/providers/settings/SettingsProvider$1;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1017
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$2;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1043
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

    .line 2413
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    .line 2414
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2415
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 2418
    :cond_1a
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2419
    :try_start_1d
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v2, :cond_3c

    .line 2420
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "monitor_callback_type"

    const-string v4, "access_callback"

    .line 2421
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "calling_package"

    .line 2423
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "namespace"

    .line 2424
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2427
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

    .line 2434
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2435
    invoke-static {}, Landroid/provider/DeviceConfig;->getPublicNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 2438
    :cond_16
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2439
    :try_start_19
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_33

    .line 2440
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "monitor_callback_type"

    const-string v3, "namespace_updated_callback"

    .line 2441
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "namespace"

    .line 2443
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    invoke-virtual {p0, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2446
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

    .line 1295
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

    .line 1447
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

    .line 1751
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    return-void
.end method

.method private resolveCallingPackage()Ljava/lang/String;
    .registers 3

    .line 2616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_12

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_f

    .line 2626
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

    .line 2358
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p0, v0, :cond_7

    return p0

    .line 2361
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "get/set setting for user"

    move v3, p0

    .line 2361
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSecureSettingLocked(ILjava/lang/String;)I
    .registers 4

    .line 2042
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSecureCloneToManagedSettings:Ljava/util/Set;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdLocked(ILjava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I
    .registers 8

    .line 2048
    sget-object v0, Lcom/android/providers/settings/SettingsProvider;->sSystemCloneFromParentOnDependency:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2049
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result v1

    if-eq v1, p1, :cond_37

    .line 2051
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2055
    :try_start_18
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2056
    invoke-virtual {v0}, Lcom/android/providers/settings/SettingsState$Setting;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_32

    if-eqz v0, :cond_2e

    .line 2060
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2061
    throw p0

    .line 2063
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

    .line 2067
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGroupParentLocked(I)I

    move-result p0

    if-eq p0, p1, :cond_d

    .line 2068
    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    return p0

    .line 2074
    :cond_d
    invoke-static {}, Lcom/miui/xspace/XSpaceManagerStub;->getInstance()Lcom/miui/xspace/XSpaceManagerStub;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/miui/xspace/XSpaceManagerStub;->belongToCrossXSpaceSettings(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_18

    return p0

    :cond_18
    return p1
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

    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    .line 1185
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1186
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->resolveCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1188
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1189
    :try_start_c
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfigLocked()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 p0, 0x2

    .line 1190
    monitor-exit v1

    return p0

    :cond_15
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1192
    invoke-static {v2, v3}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v2

    .line 1193
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p0, v2, p1, p2, v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->setConfigSettingsLocked(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 v3, 0x1

    .line 1195
    :cond_24
    monitor-exit v1

    return v3

    :catchall_26
    move-exception p0

    .line 1196
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_26

    throw p0
.end method

.method private setMonitorCallback(Landroid/os/RemoteCallback;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 2400
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    const-string v2, "Permission denial: registering for config access requires: android.permission.MONITOR_DEVICE_CONFIG_ACCESS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2405
    :try_start_11
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mConfigMonitorCallback:Landroid/os/RemoteCallback;

    .line 2406
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
    .registers 3

    const-string v0, "android.permission.WRITE_DEVICE_CONFIG"

    .line 1204
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsProvider;->enforceWritePermission(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfigLocked(I)V

    .line 1208
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private setSyncDisabledModeConfigLocked(I)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v0, v1

    goto :goto_f

    :cond_6
    if-ne p1, v0, :cond_c

    move v12, v1

    move v1, v0

    move v0, v12

    goto :goto_f

    :cond_c
    const/4 v2, 0x2

    if-ne p1, v2, :cond_36

    .line 1240
    :goto_f
    iput-boolean v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSyncConfigDisabledUntilReboot:Z

    .line 1242
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

    .line 1245
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

    .line 1251
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    return-void

    :catchall_31
    move-exception v0

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    .line 1252
    throw v0

    .line 1237
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startWatchingUserRestrictionChanges()V
    .registers 2

    .line 1051
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsProvider$3;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    .line 1139
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method private static toDumpString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

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

    .line 1417
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

    .line 1741
    invoke-direct/range {v0 .. v8}, Lcom/android/providers/settings/SettingsProvider;->mutateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZI)Z

    move-result p0

    return p0
.end method

.method private updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x3

    .line 1902
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/settings/SettingsProvider;->mutateSystemSetting(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private validateSystemSettingValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2003
    sget-object p0, Landroid/provider/settings/validators/SystemSettingsValidators;->VALIDATORS:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/provider/settings/validators/Validator;

    if-eqz p0, :cond_30

    .line 2004
    invoke-interface {p0, p2}, Landroid/provider/settings/validators/Validator;->validate(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_30

    .line 2005
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

    .line 2340
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "SettingsProvider"

    if-eqz p0, :cond_14

    const-string p0, "You shouldn\'t not change private system settings. This will soon become an error."

    .line 2341
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :cond_14
    const-string p0, "You shouldn\'t keep your settings in the secure settings. This will soon become an error."

    .line 2344
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return-void

    .line 2348
    :cond_1a
    sget-object p0, Landroid/provider/Settings$System;->PRIVATE_SETTINGS:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 2349
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot change private secure settings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2351
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

    .line 2771
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4b

    .line 2773
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2774
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2775
    invoke-static {v3}, Lcom/android/providers/settings/SettingsState;->stateFileExists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2776
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".fallback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2778
    :try_start_2e
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;)J
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_48

    .line 2780
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

    .line 728
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_12

    .line 730
    aget-object v3, p2, v1

    .line 731
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

    .line 421
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getRequestingUserId(Landroid/os/Bundle;)I
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    move-result-object v9
    if-eqz v9, :cond_kaorios_settings_stock
    return-object v9
    :cond_kaorios_settings_stock

    move-result v5

    .line 422
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_2b2

    goto/16 :goto_13b

    :sswitch_12
    const-string v0, "SET_ALL_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_13b

    :cond_1c
    const/16 v2, 0x16

    goto/16 :goto_13b

    :sswitch_20
    const-string v0, "DELETE_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_13b

    :cond_2a
    const/16 v2, 0x15

    goto/16 :goto_13b

    :sswitch_2e
    const-string v0, "LIST_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_13b

    :cond_38
    const/16 v2, 0x14

    goto/16 :goto_13b

    :sswitch_3c
    const-string v0, "LIST_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_13b

    :cond_46
    const/16 v2, 0x13

    goto/16 :goto_13b

    :sswitch_4a
    const-string v0, "DELETE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_13b

    :cond_54
    const/16 v2, 0x12

    goto/16 :goto_13b

    :sswitch_58
    const-string v0, "LIST_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_13b

    :cond_62
    const/16 v2, 0x11

    goto/16 :goto_13b

    :sswitch_66
    const-string v0, "LIST_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_13b

    :cond_70
    const/16 v2, 0x10

    goto/16 :goto_13b

    :sswitch_74
    const-string v0, "RESET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_13b

    :cond_7e
    const/16 v2, 0xf

    goto/16 :goto_13b

    :sswitch_82
    const-string v0, "GET_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_13b

    :cond_8c
    const/16 v2, 0xe

    goto/16 :goto_13b

    :sswitch_90
    const-string v0, "GET_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_13b

    :cond_9a
    const/16 v2, 0xd

    goto/16 :goto_13b

    :sswitch_9e
    const-string v0, "RESET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_13b

    :cond_a8
    const/16 v2, 0xc

    goto/16 :goto_13b

    :sswitch_ac
    const-string v0, "RESET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_13b

    :cond_b6
    const/16 v2, 0xb

    goto/16 :goto_13b

    :sswitch_ba
    const-string v0, "GET_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_13b

    :cond_c4
    const/16 v2, 0xa

    goto/16 :goto_13b

    :sswitch_c8
    const-string v0, "GET_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto/16 :goto_13b

    :cond_d2
    const/16 v2, 0x9

    goto/16 :goto_13b

    :sswitch_d6
    const-string v0, "PUT_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_13b

    :cond_e0
    const/16 v2, 0x8

    goto/16 :goto_13b

    :sswitch_e4
    const-string v0, "PUT_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto :goto_13b

    :cond_ed
    const/4 v2, 0x7

    goto :goto_13b

    :sswitch_ef
    const-string v0, "PUT_global"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    goto :goto_13b

    :cond_f8
    const/4 v2, 0x6

    goto :goto_13b

    :sswitch_fa
    const-string v0, "GET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_103

    goto :goto_13b

    :cond_103
    const/4 v2, 0x5

    goto :goto_13b

    :sswitch_105
    const-string v0, "PUT_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10e

    goto :goto_13b

    :cond_10e
    const/4 v2, 0x4

    goto :goto_13b

    :sswitch_110
    const-string v0, "SET_SYNC_DISABLED_MODE_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_119

    goto :goto_13b

    :cond_119
    const/4 v2, 0x3

    goto :goto_13b

    :sswitch_11b
    const-string v0, "REGISTER_MONITOR_CALLBACK_config"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    goto :goto_13b

    :cond_124
    const/4 v2, 0x2

    goto :goto_13b

    :sswitch_126
    const-string v0, "DELETE_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12f

    goto :goto_13b

    :cond_12f
    const/4 v2, 0x1

    goto :goto_13b

    :sswitch_131
    const-string v0, "DELETE_secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13a

    goto :goto_13b

    :cond_13a
    move v2, v1

    :goto_13b
    const-string v0, "result_settings_list"

    const-string v3, "result_rows_deleted"

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_310

    .line 587
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "call() with invalid method: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsProvider"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_296

    .line 480
    :pswitch_15b
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingFlags(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object p2

    .line 482
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->setAllConfigSettings(Ljava/lang/String;Ljava/util/Map;)I

    move-result p0

    const-string p1, "config_set_all_return"

    .line 483
    invoke-virtual {p3, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p3

    .line 530
    :pswitch_172
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteGlobalSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 531
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 532
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 580
    :pswitch_17f
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 582
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 581
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 573
    :pswitch_190
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 575
    invoke-direct {p0, v5, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 574
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 523
    :pswitch_1a1
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->deleteConfigSetting(Ljava/lang/String;)Z

    move-result p0

    .line 524
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 525
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 566
    :pswitch_1ae
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 568
    invoke-direct {p0, v8}, Lcom/android/providers/settings/SettingsProvider;->getAllGlobalSettings([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->buildSettingsList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object p0

    .line 567
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p1

    .line 551
    :pswitch_1bf
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 552
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getAllConfigFlags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 553
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p3

    .line 552
    invoke-direct {p0, p2, p3}, Lcom/android/providers/settings/SettingsProvider;->packageValuesForCallResult(Ljava/util/HashMap;Z)Landroid/os/Bundle;

    move-result-object p2

    .line 554
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->reportDeviceConfigAccess(Ljava/lang/String;)V

    return-object p2

    .line 516
    :pswitch_1d3
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 517
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 518
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetSecureSetting(IILjava/lang/String;)V

    goto/16 :goto_296

    .line 441
    :pswitch_1e0
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 442
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 434
    :pswitch_1ed
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 437
    invoke-direct {p0, p3, p2}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 509
    :pswitch_1fa
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 510
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 511
    invoke-direct {p0, v5, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetGlobalSetting(IILjava/lang/String;)V

    goto/16 :goto_296

    .line 502
    :pswitch_207
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getResetModeEnforcingPermission(Landroid/os/Bundle;)I

    move-result p1

    .line 503
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingPrefix(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->resetConfigSetting(ILjava/lang/String;)V

    goto/16 :goto_296

    .line 429
    :pswitch_214
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 430
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 424
    :pswitch_221
    invoke-direct {p0, p2}, Lcom/android/providers/settings/SettingsProvider;->getConfigSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p1

    .line 425
    invoke-direct {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->isTrackingGeneration(Landroid/os/Bundle;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->packageValueForCallResult(Lcom/android/providers/settings/SettingsState$Setting;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 473
    :pswitch_22e
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 474
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result p3

    .line 475
    invoke-direct {p0, p2, p1, v5, p3}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_296

    .line 463
    :pswitch_23a
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 466
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 467
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_296

    .line 453
    :pswitch_251
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingTag(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result v4

    .line 456
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingOverrideableByRestore(Landroid/os/Bundle;)Z

    move-result v7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    .line 457
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    goto :goto_296

    .line 495
    :pswitch_268
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 497
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledModeConfig()I

    move-result p0

    const-string p2, "config_get_sync_disabled_mode_return"

    .line 496
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 446
    :pswitch_277
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingValue(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSettingMakeDefault(Landroid/os/Bundle;)Z

    move-result p3

    .line 448
    invoke-direct {p0, p2, p1, p3}, Lcom/android/providers/settings/SettingsProvider;->insertConfigSetting(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_296

    .line 489
    :pswitch_283
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->getSyncDisabledMode(Landroid/os/Bundle;)I

    move-result p1

    .line 490
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setSyncDisabledModeConfig(I)V

    goto :goto_296

    :pswitch_28b
    const-string p1, "_monitor_callback_key"

    .line 559
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallback;

    .line 561
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->setMonitorCallback(Landroid/os/RemoteCallback;)V

    :goto_296
    return-object v8

    .line 544
    :pswitch_297
    invoke-direct {p0, p2, v5}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    .line 545
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 546
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    .line 537
    :pswitch_2a4
    invoke-direct {p0, p2, v5, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    .line 538
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 539
    invoke-virtual {p1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    nop

    :sswitch_data_2b2
    .sparse-switch
        -0x750f4775 -> :sswitch_131
        -0x73ee30bd -> :sswitch_126
        -0x332e6225 -> :sswitch_11b
        -0x132cde7e -> :sswitch_110
        -0x7c1916e -> :sswitch_105
        -0x2eb948a -> :sswitch_fa
        -0x118110d -> :sswitch_ef
        0x12fa46c7 -> :sswitch_e4
        0x141b5d7f -> :sswitch_d6
        0x1d62846b -> :sswitch_c8
        0x240c04cc -> :sswitch_ba
        0x295ef852 -> :sswitch_ac
        0x300878b3 -> :sswitch_9e
        0x381e5ca0 -> :sswitch_90
        0x393f7358 -> :sswitch_82
        0x441ad087 -> :sswitch_74
        0x55988a03 -> :sswitch_66
        0x5c420a64 -> :sswitch_58
        0x7034e056 -> :sswitch_4a
        0x70546238 -> :sswitch_3c
        0x717578f0 -> :sswitch_2e
        0x76de60b7 -> :sswitch_20
        0x7de137dd -> :sswitch_12
    .end sparse-switch

    :pswitch_data_310
    .packed-switch 0x0
        :pswitch_2a4
        :pswitch_297
        :pswitch_28b
        :pswitch_283
        :pswitch_277
        :pswitch_268
        :pswitch_251
        :pswitch_23a
        :pswitch_22e
        :pswitch_221
        :pswitch_214
        :pswitch_207
        :pswitch_1fa
        :pswitch_1ed
        :pswitch_1e0
        :pswitch_1d3
        :pswitch_1bf
        :pswitch_1ae
        :pswitch_1a1
        :pswitch_190
        :pswitch_17f
        :pswitch_172
        :pswitch_15b
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 745
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 748
    sget-object p2, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    return v1

    .line 752
    :cond_11
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return v1

    .line 756
    :cond_1a
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

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

    .line 773
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
    :pswitch_62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 769
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/android/providers/settings/SettingsProvider;->deleteSystemSetting(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 763
    :pswitch_6d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 764
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1, v1}, Lcom/android/providers/settings/SettingsProvider;->deleteSecureSetting(Ljava/lang/String;IZ)Z

    move-result p0

    return p0

    .line 758
    :pswitch_78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 759
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

    .line 899
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 900
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_28

    .line 902
    :try_start_7
    iget-object p3, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-virtual {p3}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->getKnownUsersLocked()Landroid/util/SparseBooleanArray;

    move-result-object p3

    .line 903
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_1e

    .line 905
    invoke-virtual {p3, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/providers/settings/SettingsProvider;->dumpForUserLocked(ILjava/io/PrintWriter;)V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_23

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 908
    :cond_1e
    :try_start_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    monitor-exit p1

    return-void

    :catchall_23
    move-exception p0

    .line 908
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 909
    throw p0

    :catchall_28
    move-exception p0

    .line 910
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    throw p0
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 889
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 891
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 892
    :try_start_8
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {p0, v0}, Lcom/android/providers/settings/SettingsProtoDumpUtil;->dumpProtoLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;Landroid/util/proto/ProtoOutputStream;)V

    .line 893
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 895
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_12
    move-exception p0

    .line 893
    :try_start_13
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 596
    new-instance p0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 597
    iget-object p1, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 600
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

    .line 675
    invoke-static {p1}, Lcom/android/providers/settings/SettingsProvider;->getValidTableOrThrow(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 678
    sget-object v1, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "name"

    .line 682
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    invoke-static {v1}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    return-object v2

    :cond_1b
    const-string v3, "value"

    .line 687
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 689
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_a8

    goto :goto_4e

    :sswitch_2e
    const-string v3, "system"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_4e

    :cond_37
    const/4 p2, 0x2

    goto :goto_4e

    :sswitch_39
    const-string v3, "secure"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_4e

    :cond_42
    const/4 p2, 0x1

    goto :goto_4e

    :sswitch_44
    const-string v3, "global"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_4e

    :cond_4d
    move p2, v4

    :goto_4e
    packed-switch p2, :pswitch_data_b6

    .line 714
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

    .line 707
    :pswitch_68
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-direct {p0, v1, v5, p1, v4}, Lcom/android/providers/settings/SettingsProvider;->insertSystemSetting(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 709
    sget-object p0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_79
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 700
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 699
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 702
    sget-object p0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :pswitch_90
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 692
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 691
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/settings/SettingsProvider;->insertGlobalSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZ)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 694
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

    .line 394
    invoke-static {}, Landroid/provider/Settings;->setInSystemServer()V

    .line 396
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_6
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mUserManager:Landroid/os/UserManager;

    .line 398
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 399
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "SettingsProvider"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 401
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 402
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    .line 403
    new-instance v1, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 404
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_6 .. :try_end_39} :catchall_71

    .line 405
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/settings/SettingsState;->cacheSystemPackageNamesAndSystemSignature(Landroid/content/Context;)V

    .line 406
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 407
    :try_start_43
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mmigrateAllLegacySettingsIfNeededLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 408
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$msyncSsaidTableOnStartLocked(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)V

    .line 409
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_6e

    .line 410
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "settings"

    .line 414
    new-instance v1, Lcom/android/providers/settings/SettingsService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v0, "device_config"

    .line 415
    new-instance v1, Lcom/android/providers/settings/DeviceConfigService;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/DeviceConfigService;-><init>(Lcom/android/providers/settings/SettingsProvider;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :catchall_6e
    move-exception p0

    .line 409
    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0

    :catchall_71
    move-exception p0

    .line 404
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

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

    const-string v2, "w"

    .line 833
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x17d5

    if-eq v2, v3, :cond_5f

    .line 834
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingAttributionTag()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 834
    invoke-static {v2, v3, v1, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5f

    const-string v2, "SettingsProvider"

    .line 838
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

    .line 841
    :cond_5f
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 845
    sget-object v1, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string p1, "ringtone"

    const-string v1, "ringtone_cache"

    goto :goto_a7

    .line 848
    :cond_70
    sget-object v1, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    const-string p1, "notification_sound"

    const-string v1, "notification_sound_cache"

    goto :goto_a7

    .line 851
    :cond_7d
    sget-object v1, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const-string p1, "alarm_alert"

    const-string v1, "alarm_alert_cache"

    goto :goto_a7

    .line 856
    :cond_8a
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->isMiuiRingtoneCacheUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 857
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStub;->getMiuiCacheRingtoneSetting(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 858
    invoke-static {}, Landroid/provider/SettingsStub;->get()Landroid/provider/SettingsStub;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/provider/SettingsStub;->getMiuiCacheName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    .line 868
    :goto_a7
    iget-object v2, p0, Lcom/android/providers/settings/SettingsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_aa
    invoke-direct {p0, v0, p1}, Lcom/android/providers/settings/SettingsProvider;->resolveOwningUserIdForSystemSettingLocked(ILjava/lang/String;)I

    move-result p1

    .line 871
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_c1

    .line 872
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getRingtoneCacheDir(I)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 873
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catchall_c1
    move-exception p0

    .line 871
    :try_start_c2
    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    throw p0

    .line 862
    :cond_c4
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

    .line 611
    new-instance p5, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v0, 0x1

    invoke-direct {p5, p1, p3, p4, v0}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 612
    invoke-static {p2}, Lcom/android/providers/settings/SettingsProvider;->normalizeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 615
    sget-object p4, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object v1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_1b

    .line 616
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 619
    :cond_1b
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_a0

    :goto_28
    move v0, v2

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

    .line 650
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

    .line 640
    :pswitch_62
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 641
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_73

    .line 642
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSystemSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 643
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 645
    :cond_73
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSystemSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 630
    :pswitch_78
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 631
    iget-object p4, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p4, :cond_89

    .line 632
    invoke-direct {p0, p4, p1}, Lcom/android/providers/settings/SettingsProvider;->getSecureSetting(Ljava/lang/String;I)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 633
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 635
    :cond_89
    invoke-direct {p0, p1, p2}, Lcom/android/providers/settings/SettingsProvider;->getAllSecureSettings(I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 621
    :pswitch_8e
    iget-object p1, p5, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    if-eqz p1, :cond_9b

    .line 622
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsProvider;->getGlobalSetting(Ljava/lang/String;)Lcom/android/providers/settings/SettingsState$Setting;

    move-result-object p0

    .line 623
    invoke-static {p0, p3}, Lcom/android/providers/settings/SettingsProvider;->packageSettingForQuery(Lcom/android/providers/settings/SettingsState$Setting;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    move-result-object p0
    return-object p0

    .line 625
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

    .line 2728
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "jobscheduler"

    .line 2730
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    if-nez v1, :cond_f

    return-void

    :cond_f
    const/4 v2, 0x1

    .line 2736
    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v3

    if-eqz v3, :cond_17

    return-void

    .line 2740
    :cond_17
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 2741
    iget-object v4, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v5, 0x0

    .line 2742
    invoke-static {v5, v5}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v6

    .line 2741
    invoke-static {v4, v6}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v4

    .line 2743
    iget-object v6, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    .line 2744
    invoke-static {v2, v5}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v7

    .line 2743
    invoke-static {v6, v7}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v6

    .line 2745
    iget-object v7, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v8, 0x2

    .line 2746
    invoke-static {v8, v5}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v8

    .line 2745
    invoke-static {v7, v8}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v7

    .line 2747
    iget-object v8, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x3

    .line 2748
    invoke-static {v9, v5}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v9

    .line 2747
    invoke-static {v8, v9}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object v8

    .line 2749
    iget-object p0, p0, Lcom/android/providers/settings/SettingsProvider;->mSettingsRegistry:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    const/4 v9, 0x4

    .line 2750
    invoke-static {v9, v5}, Lcom/android/providers/settings/SettingsProvider;->makeKey(II)I

    move-result v5

    .line 2749
    invoke-static {p0, v5}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->-$$Nest$mgetSettingsFile(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)Ljava/io/File;

    move-result-object p0

    .line 2751
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "global"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "system"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "secure"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ssaid"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v4, "config"

    invoke-virtual {v3, v4, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/providers/settings/WriteFallbackSettingsFilesJobService;

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0, v2, v4}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 2759
    invoke-virtual {p0, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const-wide/32 v3, 0x5265c00

    .line 2760
    invoke-virtual {p0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2761
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2762
    invoke-virtual {p0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 2763
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    .line 2757
    invoke-virtual {v1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    .line 784
    new-instance v0, Lcom/android/providers/settings/SettingsProvider$Arguments;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, p4, v1}, Lcom/android/providers/settings/SettingsProvider$Arguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 787
    sget-object p3, Lcom/android/providers/settings/SettingsProvider;->REMOVED_LEGACY_TABLES:Ljava/util/Set;

    iget-object p4, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-interface {p3, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    return v1

    :cond_11
    const-string p3, "name"

    .line 791
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 792
    invoke-static {p3}, Lcom/android/providers/settings/SettingsProvider;->isKeyValid(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1e

    return v1

    :cond_1e
    const-string p3, "value"

    .line 795
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 797
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->table:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

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

    .line 816
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

    .line 811
    :pswitch_6c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 812
    iget-object p2, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    invoke-direct {p0, p2, v4, p1}, Lcom/android/providers/settings/SettingsProvider;->updateSystemSetting(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 805
    :pswitch_77
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 806
    iget-object v3, v0, Lcom/android/providers/settings/SettingsProvider$Arguments;->name:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/settings/SettingsProvider;->updateSecureSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result p0

    return p0

    .line 799
    :pswitch_86
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 800
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
