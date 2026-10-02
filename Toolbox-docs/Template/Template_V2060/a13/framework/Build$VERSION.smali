.class public Landroid/os/Build$VERSION;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VERSION"
.end annotation


# static fields
.field public static final greylist ACTIVE_CODENAMES:[Ljava/lang/String;

.field private static final greylist-max-o ALL_CODENAMES:[Ljava/lang/String;

.field public static final whitelist BASE_OS:Ljava/lang/String;

.field public static final whitelist CODENAME:Ljava/lang/String;

.field public static final blacklist DEVICE_INITIAL_SDK_INT:I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist INCREMENTAL:Ljava/lang/String;

.field public static final whitelist KNOWN_CODENAMES:Ljava/util/Set;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist MEDIA_PERFORMANCE_CLASS:I

.field public static final greylist-max-o MIN_SUPPORTED_TARGET_SDK_INT:I

.field public static final whitelist PREVIEW_SDK_FINGERPRINT:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREVIEW_SDK_INT:I

.field public static final whitelist RELEASE:Ljava/lang/String;

.field public static final whitelist RELEASE_OR_CODENAME:Ljava/lang/String;

.field public static final whitelist RELEASE_OR_PREVIEW_DISPLAY:Ljava/lang/String;

.field public static final blacklist RESOURCES_SDK_INT:I

.field public static final whitelist SDK:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SDK_INT:I

.field public static final whitelist SECURITY_PATCH:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 283
    const-string/jumbo v0, "ro.build.version.incremental"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "ro.build.version.release_or_codename"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_CODENAME:Ljava/lang/String;

    .line 305
    const-string/jumbo v0, "ro.build.version.release_or_preview_display"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->RELEASE_OR_PREVIEW_DISPLAY:Ljava/lang/String;

    .line 311
    const-string/jumbo v0, "ro.build.version.base_os"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    .line 317
    const-string/jumbo v0, "ro.build.version.security_patch"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 331
    invoke-static {}, Landroid/sysprop/DeviceProperties;->media_performance_class()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->MEDIA_PERFORMANCE_CLASS:I

    .line 340
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 349
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    nop

    .line 366
    const-string/jumbo v2, "ro.product.first_api_level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 386
    const-string/jumbo v2, "ro.build.version.preview_sdk"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    .line 406
    const-string/jumbo v2, "ro.build.version.preview_sdk_fingerprint"

    const-string v3, "REL"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build$VERSION;->PREVIEW_SDK_FINGERPRINT:Ljava/lang/String;

    .line 413
    const-string/jumbo v2, "ro.build.version.codename"

    invoke-static {v2}, Landroid/os/Build;->-$$Nest$smgetString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 428
    new-instance v2, Landroid/util/ArraySet;

    .line 429
    const-string/jumbo v4, "ro.build.version.known_codenames"

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/os/Build;->-$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v2, Landroid/os/Build$VERSION;->KNOWN_CODENAMES:Ljava/util/Set;

    .line 431
    nop

    .line 432
    const-string/jumbo v2, "ro.build.version.all_codenames"

    invoke-static {v2, v5}, Landroid/os/Build;->-$$Nest$smgetStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/os/Build$VERSION;->ALL_CODENAMES:[Ljava/lang/String;

    .line 439
    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 440
    new-array v2, v1, [Ljava/lang/String;

    goto :goto_a9

    :cond_a8
    nop

    :goto_a9
    sput-object v2, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    .line 449
    array-length v2, v2

    add-int/2addr v0, v2

    sput v0, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 458
    const-string/jumbo v0, "ro.build.version.min_supported_target_sdk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
